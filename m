Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACE8243968
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756037394; cv=none; b=NrYdp2LM5G36FztrIEkS4jAVWLcUEBK5P+Tui+b5w8tkOEfU3P/phbkaQoIeTTPvXdqwLAT2gAJAgytwTahPf/OOKa1AKlzAN0W5n4hN6OkOq0DczdSF4kjq6TE7JoVcs3x+0F6vaCqcArpxbhu6j6AINJEGYKHEF7Z0SVXtmNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756037394; c=relaxed/simple;
	bh=QmYpAzsifme+8Ew1M1xO2dnctl9LynSKwjVU1ElSq1w=;
	h=To:Subject:From:Message-Id:Date; b=jbQ+4iIBQNvA9xoqNwqilAebdt0OyQUJoTKIZNBihgjSk78g0/OzccR/+32GWrGgnpQTOZ/y2AuE9t3cO6pqeJJaThUd1wB1jFCaCotWDVdmhC02mCLH9gxzXU1PrUEbs0SwDQPk3WLyO+dWAb0sfB9SObT8i14epBCByrhFHZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DsU+giMw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DsU+giMw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A6DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756037393;
	bh=QmYpAzsifme+8Ew1M1xO2dnctl9LynSKwjVU1ElSq1w=;
	h=To:Subject:From:Date:From;
	b=DsU+giMwr3Ds3DnaAq/SbIGuPAJcOlGrOzqHF79zkBMUOW/OjlrVQ/09MeEoGqy40
	 i5K6p1TGfU4fNDZ/N5kWLa1nnCxf5M8yIVUjT6Gl81lPDTaiL4qbAg4s+cTZHOxuGb
	 bfZvnGtD3upsRIqqGk9D8U25+4Fccd+drKe4wCe0d9L+ptSRVR0tQJA8Cbsq5kD+pc
	 78BVJoedq7eypATBge8/Ad5Zyu8iUOv3oNToZNyAF01HxkvZGdcBOGFUr7IdfGjRU+
	 SvrveCp/vrzkE2Hsv/JKxihtVHqYj5MAupMqc9Qz3JMfWcGtxu8QTUJ23kebEbW9tj
	 ZUIymcSI6avhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6EFCA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603739357.28164.11480432676335297314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0338f48ce0065e48a14e2039bbaefdc25280dfd86afa007bb699726869b670
Date: Sun, 24 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756037393
