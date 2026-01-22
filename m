Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89229367F48
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769097834; cv=none; b=Yo/sSmUPdpeANPUY2CfDlnqq5qbQtCgmrXHNAcRXTtwjJnFyhZMlIMsayu40co9ed4T6bUc+KlN1Y/Zzf5zN9o01MFb+67H+eCgv1xBjDthybEuZQ1JOaAcRGFUD+qZLca5cos9ZkTuv5H0/9DnGuve2sEBqUgTHSW9cE/hzbYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769097834; c=relaxed/simple;
	bh=HAhGoyOHZ148moZSpTu4esf3NsGmjUCseEtmnLnBUQw=;
	h=To:Subject:From:Message-Id:Date; b=p2afAelU8mSZp9MQrowyvcs4y3JqVk23YoI3n8159daG0ZrlLzxo7x/brVN9A+hhERGiABM+gy42gPz0xLivZiNfvhaJlyfxlKeoAb0sawr+3oCurT6jQ1qfIafWmuJvGsMJ3ChXp0b1xrKSWVljFUUZ2YIpEYXfV7QPd8PU07c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ukg08N49; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ukg08N49"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B56C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769097833;
	bh=HAhGoyOHZ148moZSpTu4esf3NsGmjUCseEtmnLnBUQw=;
	h=To:Subject:From:Date:From;
	b=Ukg08N49q7U0Snbp2O2/YWn0X8dpKicpfMOQWTdKkrWMyLX7bXh4N5QepgKSxLxmb
	 WBzg6yT7dM99TxLroWnDq8HgM8nF3fAcGTjPfjm3aJvxuW0RIVf8Evr2NJUeW95kT6
	 PFCgvKY1uXUvA8Soni/0xuWZ/RRXMc0ysFU9+DnQyZFT3ij18Wy20u5yO+s+KukLBp
	 xhwsvbL9aoNgmHJkjIDv7dQDZ0vvV73RcT+hOD6SPaCfawEY+IUmbbx8LcbcDH/AWe
	 7laJMm9w44mHaNWreUyFDsTTjnW6Cv9/oCkQqW027DzG+3AJndbHNWoLvziLQ1UAnP
	 GuJQrnkbi999A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E3D3EE8A
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176909783359.20450.15430114760368463384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fa521b6a38277fed9038643ee6212396e5405e0ded6a3e1fb619c14b431b30
Date: Thu, 22 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769097833
