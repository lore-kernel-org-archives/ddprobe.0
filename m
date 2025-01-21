Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D321F470D
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737478554; cv=none; b=OCpFpGFlUv8LrgThBead1YoOOdsiTcrVhFLQ/c3hBw0v0DiBEJUCHTR6ksJmI8141X2EAKAUs3eyKkHx5a/WY0+AO0D/0sDCbp97/EXNDPtatM+c+vyyPXI8LRNm/9Nm6cQ2eJ8M+pLaM92AFOGb1iElHmaY7Fbi08ewQrd9azI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737478554; c=relaxed/simple;
	bh=krjphab3ZlQuPcv2zD+iusVQXPmXKmatVF2lOKC3Qko=;
	h=To:Subject:From:Message-Id:Date; b=YSwozZnHpWixVSnSsYzpmp37F0rsoqkiyMu1KSX/HA2MeZFT9yec8JIf0AOPQV6VxCN2MwGt5o7W3NbtrvsqgqzI+Lho20VtmXHNDayDGcEYwboxpJlcgcNhlnt3wSZwER7SESLocB5SMdGXWn3+kg7DdM5qToGfRouiu8AAbmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XV33LRA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XV33LRA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F5BC4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737478553;
	bh=krjphab3ZlQuPcv2zD+iusVQXPmXKmatVF2lOKC3Qko=;
	h=To:Subject:From:Date:From;
	b=XV33LRA4NolUPUPYyqYrqBSjhaykIj8m2sQilFzYvgw+/vGoL+/hzcRc7TWVwE3su
	 iLaCsA9UPbfGfd8wjiEIRPVTDea8if+zRdNeXiLhHd1PoeLLXo6AttlOflIzx0Wu6f
	 W7IfR7qwAzCN2XNxjFl4A9GgEyLmhgf7KqTo/J+42leNNqr4pDVXnjHxAcV8DDa5nk
	 QWun0I4YIsSffBMfcXEKHIF04puW80rNcqLb0jwRYzuzXf7dFqvysUyNxKIANwxgMw
	 2cTOGB4mYN0kY9LJKP6VjPDlToWilQpaIU1satBJZ5NCOrUSi+A+HkvgQx24VcSgxw
	 yT0mi9YgUYFhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A0C7C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747855359.25968.1271372714044378191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4d81053667e24272334b30b42acb9bc8c62fd1c803f5f7295120ef68423072
Date: Tue, 21 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737478553
