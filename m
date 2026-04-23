Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 267B917555
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776980254; cv=none; b=ndpOedMXSznYSAWezippTWUnOeK9bzfTFugHmKSwn2CYT3MwpZqpse2Gyn+EKLOBPw3GyZhudfKLr1001eaP0bDXy6zhi05lK/3uAyyAuogj9vP34DtFIni+XJ1NAAFLeMWoG88Weq4Is/xnshCocBehnrhvNan2wlmQBcdavJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776980254; c=relaxed/simple;
	bh=k0yUtnlHoz0BQCfJ0VbDgKp4CInRoUn8bh8HAtPl53Q=;
	h=To:Subject:From:Message-Id:Date; b=VP5Ag3Tdu6M5bKDXT7JnZrzOX65TkslTSbygD465H2K+hcoLVLcwFn1bQryEX0z5QWoS6HKAO44eN+Ksxfx7/T8hm2y87HTf2EcqY7YnN6AhlgiCQTxuKfqkKSj0w20BocjFkrZWTU6hVbJaMQw13aBy2mSJbbFDM3rtlflq3x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKSAmTBw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKSAmTBw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC553C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776980253;
	bh=k0yUtnlHoz0BQCfJ0VbDgKp4CInRoUn8bh8HAtPl53Q=;
	h=To:Subject:From:Date:From;
	b=RKSAmTBwki9fIBTbBd9ivMU3RM/HcRlfvkAzg6o0GS2ttmuxMCH8gWDcJtJo/oKlN
	 CQfN3IUHKRTqGMX+L4bximZBjy7pjENsatNazQW+zwKtYYtXYlBaN+NEM5wIrt3Siy
	 rduttj2Gfdmzs9Yt58UuoPwkppndt0eUMBJrQ5oE2/bp6drH4xs2qY9qvmr0hzhH68
	 L/89IlG+cyw3nbaonRFypqG5n1EURyfD6/q79rp6x39CFjVu/PhYprWDRu5LtGp64c
	 HHFnCeHR7xeXwzUBNAP6XNxuEzwmYEoJAqazXWj1jAqH2+nfz3WfroDSiKtprnmhVT
	 VHepmS/LCzcAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D33FDEE4E
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698025368.27766.7781015916969870158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 597628e5f1f602ec3686e1a691df10833f95b0435154d725cee7f52ed6b8c8c8
Date: Thu, 23 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776980253
