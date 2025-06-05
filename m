Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CCF186E2E
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749134394; cv=none; b=N7vrywbxL21mFmhcSK5TjFUEOC7XP99sezoo7jTWuzzIhFsa7cHX8ERnk4AY+hmL6eCQeJkp1mrOYshsqzyyer/Ro9i0tMDJWeKHGjcSyYA0hqQ83ykpY4xBIiqQPSLichKwZorOdqy9xk5p4SniaciDisU/aGufDzGr5bsCKq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749134394; c=relaxed/simple;
	bh=pygPNQ4LCz4XG9R/2L+9Kuc3JtLrJab1o5oH+dnZA4k=;
	h=To:Subject:From:Message-Id:Date; b=heb2lJgSIXFp2VwGJF2aG2GOyWqxrZWwpitnCzK4SLtaCxLNrm9oRGkZBdKbnJQjSubKDllMtt/FqGoYdwxvy5zY7fEVh3EGHoQ92UYQjfG2SaERHDitdvGgs1yHUw8Z4KXGWKKK5vmvawYrDEoh939r8cZ2pj6eRo9GcKywhiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iH9IrpBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iH9IrpBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13CEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749134393;
	bh=pygPNQ4LCz4XG9R/2L+9Kuc3JtLrJab1o5oH+dnZA4k=;
	h=To:Subject:From:Date:From;
	b=iH9IrpBSxa6hZ7MYdRQRgNf8BB/GjSijN3m09rvUhiRqyM4tS7n39uyU8TECK65ck
	 DMGBoaGeZ31YPjj90cydF/NZzp8sH5xbPnDzL6kR9auBx7YuHu/+J99XTp02AyG2gv
	 URdwCUUcd/otu9gy3FlCoAw0Diy4i23oCKDnTnk0d4LgqD/JOf9DazGWJ/VhbFEXQP
	 PqdY4v3uqvJuFr7jaTOr6lBHC3a3RGSYTcFRPbM6Nh/vj9hnmKhT3HnUxG1j+9YSRr
	 t5uCJqA1shTiKDuJlgjydVAYYt37VSoPAHZBycu6uzX9NyhYxEW+im075Trse+2Lew
	 02sHHV68EN0Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90507C5AE59
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913439358.13978.16951835972945970557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1558ed40e8ba49915b3c02b4df0fee4bb709894689d8d120524bcc7c68ad2ddc
Date: Thu, 05 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749134393
