Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4DB42056
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760216994; cv=none; b=n19AlHZ8C4AuFhomIYCtRRWdwbA+6WEvc2LeFzrsUggkOLQ7ld04UMfrI7Z0+7jsH+sV6VyVlNjjfTgSp/qK394WlNujHkWNGR23xKSakKC2rcso+OKKetRc4sp9IXi2TdROTd/zgDeoJHG3bvO1hUf22phFzSDGeVoO8SPeqnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760216994; c=relaxed/simple;
	bh=Za1KSNd09c5iAZ666T+B85qC6qNsyZ2lZ0A/T9dvT2w=;
	h=To:Subject:From:Message-Id:Date; b=QJLrKNSF5agJeIEhLR6VG8jD+AF3rfbE151E3lJdhbbOou0YiK2ZaYN6cnnJ2SLeJyVq30Dvf266rom3WgT+Qe4t6yOY6vN3qtT8sUDMzhcC2EDlNspAnhKshllJPm8FZEx8Iyyc4XUJ98Z3TQwyoCoO+tsBmM0aYMknLJavZ4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4Jr/MAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4Jr/MAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6633C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760216993;
	bh=Za1KSNd09c5iAZ666T+B85qC6qNsyZ2lZ0A/T9dvT2w=;
	h=To:Subject:From:Date:From;
	b=r4Jr/MAa6OWkXADbYRL107QeSDZf420wJhzc6bL84ENMxhT3WNGMP/t+tndhAt4Qr
	 De5lU897zWlOZ053lw1uEhezInLss5IAXdoXCEkJxUjBML8/vAZfbq0jnTiIa+XwJg
	 /E56eSltXPFxnmTVR+epT2KGluUhtEgLR66s+z9DD8gLrGGyQcAT48u6PtNZuScHhu
	 qqjJIc5vKRh1RqZ2WBdmAkF+0hKYudV0EX/HIH47uiG/quv+xJrreCVj3nfgOVcIWv
	 hLBpV382QVqLzuQ8sh4prqQ5F2Vll+CQcdmtx/diX7sMYjoy7DZ8GpDkJC+wzjAR4R
	 V7S7XySmZK1jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0ACCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176021699358.12158.12304299716901235224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b63de2f839f6dcb03f27d3c5ac9d895e688ed44cc041f8205cc6900a2a4e2784
Date: Sat, 11 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760216993
