Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAC619D8A1
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717650443; cv=none; b=fMZOLdj52PMnwho5+6tmCCeGFJE5sOndU5gQFLRnANM/WN3F5gC6vE45fdqRom0zVVkp2Uf+LzcWAJv5YjOmHoGi8bro8LwJ/+f9V0xLAa6a9dKhOJxtun5l1u3081o4w3Xv4Z+liXdRa0a1M8hoLDWS44nfpTBFK1CYXGkTW0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717650443; c=relaxed/simple;
	bh=KSaHsBcw5+vanOmmRE69g8tQ+bFbfVuLmioaWCrKZus=;
	h=To:Subject:From:Message-Id:Date; b=Q/SOt5TSgHd0hTyI+vtmBV1hKoYVSABEZsxS/7SYoN9z5TTcsA+0LJMtHJLyDlQiUOy2aJFKe5vbmRaRijWaW/O6s7J/y9dVVeTHN0ugu1sMV1t4rmfSngBaqgczyKZqKlUp72NTk+rJMuf6AWiSBfLCTBxV2s3mbLVZUtOCJEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dSqiazbr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dSqiazbr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E47A3C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717650442;
	bh=KSaHsBcw5+vanOmmRE69g8tQ+bFbfVuLmioaWCrKZus=;
	h=To:Subject:From:Date:From;
	b=dSqiazbrFmsH9kZ2xtBTdEqwDpe8nfMkb+U2yPlapTb9MRV7MqM3wF7+bZnoWYd2w
	 UdRXftQMx08Ol7WCeJOXC76a7iHc6uiUqVKPGvpNxgEY7WaIJrGajl05FkvWYAjrZE
	 voq4XQuFmtdxfokZ+vn7N2wjr9ePQqeNU5f6Qxo33uHJFVvk2nuut9vsdE843vvLS0
	 9SLk/9Tg0KPn4fLCTeW4nPI7MASyq435cJd6shCruXMhdbWONGL1P3//JrRcYTFAvp
	 L4Y4D5p+6f8F44T8Q0Wi2bRa0cayA92RsivhVBKoUyLSMSgPxsLMgO9AO3g7Wb1aaA
	 kAf1ju2Hx1WlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF68C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765044283.3004.12052612553700608040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b9c723aaeaea39ad96f3c2526e3215d743f0d6a508dc5229e0dc906d5c77a02
Date: Thu, 06 Jun 2024 05:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717650442
