Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC1B489863
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785586834; cv=none; b=B/bjqaMEFT1d3KXt1gOjHiIpZtYCbY3biQqEQDtCaTN+ffWePlGotdSJZ4frp5dQPVTLwfs1RBFHvUkWOs8vf8GTEeR87ZwQBB1xIfbOPeHI2GzM+zKeB305a83RmSFhEsEuvWwJ6vCX7apIrFBaG8gMOEY+9tBFnxxsE60jkmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785586834; c=relaxed/simple;
	bh=ZvXmRJl/751AvQaFRKoHehQwEuupOtUXUV/Ry5QUQRg=;
	h=To:Subject:From:Message-Id:Date; b=pKoVdrHq72wwl5MVUSVYTAl35dYW+tMYedlyJRrHdRwUTPf+jU5siwrZ87/M5LG/r/nVqcrOVwNJYztqvVFqSiO/WCzAwnG8cat5jKi6l94KgeuD6tVoCizAzynigFhWVOEKl0EW+9W/7xkC6BnEMWWmY3tNApc1azNzLEDsJms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuYF2tiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuYF2tiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D342DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785586833;
	bh=ZvXmRJl/751AvQaFRKoHehQwEuupOtUXUV/Ry5QUQRg=;
	h=To:Subject:From:Date:From;
	b=GuYF2tiN6MHWV6roAo69oXKOyAZ6N1Uff5dEoaBFxaKtddJVp9bwzBUYdiUh8Mpop
	 3Da3qRYHtjfyOsgIAKNO9+V6sjbxEyYcwx9mclLLp8KOfnya/A+Tb3nVhIHJQCOs+B
	 6rSJPcAIMPrfhNIIgaj9iw15tS6hP3gtfgouWxNSN/FG9qDYlUc+AJc65r9WjMz5Ug
	 0G9XtacPy4KOBp8K9sSgk5wGWwVItrX2hN166Ku4zIjODo6mLvnQ/fKLoIAGm8gUL+
	 y492A8OH/CBJJ2IGrJOMgCFtxsUzn3OWWH6nTcQRohQsk1AXmPufyzeSN1fgfr3PQK
	 GwDYzm9mvX2TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18E6C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558683369.24435.6373067308856113002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222f95706b3ab1918bdc61a8aed31a818bf8e680898306b982c67708b9ad8dcd
Date: Sat, 01 Aug 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785586833
