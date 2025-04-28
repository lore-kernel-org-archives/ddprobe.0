Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2970227468
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745846994; cv=none; b=RpY5tfml2dxfHgkDR+8PfKn05erJnO5P0GgR6iE6NeRup+OsaJxZqtoOPznQNrADzbx3NPAhvRI9pZ+TtMyJtEBbimvX4ps6AReIctyAnjZR5QQC9h756E3cXEKDZ4zBXLGBEhugwKUmKxdUANVZ7rReHwPHZJd//CzHMCa4mKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745846994; c=relaxed/simple;
	bh=3RW/JpaxBObGM3CNxocH5ziXlIO0UUY7lUdCof4T74Y=;
	h=To:Subject:From:Message-Id:Date; b=QnWYQfqp2uyo1cI7FpjPKyfsL0uax+aiD6HO2w8u44JCoVO5crqi/xyaxRaXHyhjnNygFcMHHvJredHIu7XvI9FiS/muNy2ywLjxK+mAbXmtSgDrESPAQxEAT/b4RnbWmkRbOi7gmeIsNfmIQF7WtOE92Nc9kEfWuX9HH164qeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MUjCytbV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MUjCytbV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745846993;
	bh=3RW/JpaxBObGM3CNxocH5ziXlIO0UUY7lUdCof4T74Y=;
	h=To:Subject:From:Date:From;
	b=MUjCytbV4bCSfIM/Fn541MHbEvvaEf06uBBh17k1xl1tNQnU3xHMzTV6jL2biG6xc
	 Cm5MpbO+6mvvA1UGr880SpjFUkZOMZImm40DWGeLuONMHTENv5E5AfveetMfqcadC8
	 Up8yr34J7RZhRmaBec6jNXHYrPrgkjXwBAzc4S715TEvof792TcAaR5kAXRUuuNVBP
	 GMjx/N0QE13+sdna1p7ig5z2br6kIDsVuL/dcNoD1PUUP9rr2XRitZWOjQnmu/iM5U
	 d1BQna4rEMuRGF00jv15yuybxWwEbKymxMHshqY6B+bIpveCG9pIax785L/MKGdVUu
	 l8S7btPPYYnOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CBC369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584699358.6154.13673093151745694230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b4c4074d44f8a0d7b086e3e61623c94e4f9f9bc5feba36629a42798274a1ad9
Date: Mon, 28 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745846993
