Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212A32FD665
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785429634; cv=none; b=nlnO1y0nduX0jRzuDaf8IJaHtcNcDJmkLdq+qEOkdHNZ1lcyIIk1z22d5BDAUL8h1lQYi23Ar01A+mlpQ4KuKWRwyhPd1Kyks31q6XrbN/AR5cKHS80N8aZMQZYJxBCXeCz6lgeuwAFGGaueAj3r/uhjKksx4ij3Tk3JXysi4Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785429634; c=relaxed/simple;
	bh=1e9qcXQ1WE9qKzeCQIcP0bkrKeHPZ9lJavy4w6ykOAU=;
	h=To:Subject:From:Message-Id:Date; b=uvFhj1tQP5OxMXbMzQSDw9A7QiTWVxL4gMqHL+sbXIpR0lVLV2oqTtnYgyR0oO78sej14GM5zuQd0cIULrtOuRoamCUugHUneouF0eWBcv1o0pyRu57qpgtqicmZ0rFGV6c5vFerYnu7oG9gy/MHRUISClYWXaCFqKV35QPW464=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zt5mVp3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zt5mVp3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6C0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785429633;
	bh=1e9qcXQ1WE9qKzeCQIcP0bkrKeHPZ9lJavy4w6ykOAU=;
	h=To:Subject:From:Date:From;
	b=Zt5mVp3s7rONASbijnq+YOHYFWzYQ5POQCxEvHjqfQ/8qwf4aYhzK13Nl2/pAhDeq
	 LLVMi/pvsg58U4C1JK5sJqrT/vGG9ReT61sSfn+QKWY5jobzDVGj9R7Lq9c7YbYi80
	 QlyRVuGSzr55anujCgYHi3GmanlU+73Nnwv9o0K42WZhzNkiXnqGf2U+fUuGc4kJ9f
	 LXGyedH8uH8EpCrlhfuc/pALqC8EYJPKIT9/fLlUcjeKPXlsE4KxS3LPyMt73hCE4u
	 6qcJtkoAViLcAvUiJmPVBgk3FfBaj4c4EK4vgBzA3RjsF2VAGfZZDLuOmWXN1ES3SZ
	 VsHDx0+HL/yIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2F6C55160
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542963369.23496.12647892278430466441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 933edba1986fa319c88aca1b4d950119542f5b11bea079c0e7913a1b5b4b1239
Date: Thu, 30 Jul 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785429633
