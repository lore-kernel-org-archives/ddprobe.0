Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA7342050
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767936234; cv=none; b=eaz9b2woWjhwF+pmCq3tIpH6V3vCVvNroYdwyG0h47Zzhbwxfhakl4V6p4V84imWV8vcEuDpd12+LA35W+FOSBvtL/XKknDvIHZ4YQHMbs12RnJtWbquESJTAIiO+4alpX7f9A7mikd1M8Z/VgLS+gtpb8r6z8xiwZLuxaB0OlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767936234; c=relaxed/simple;
	bh=0dME/tOv0vwoyoF2kA5/9OBhr99UNUKNB6o9/8ltppM=;
	h=To:Subject:From:Message-Id:Date; b=Pw9QvKT6RSjwTud1GUppwzM3gCB5YIGZTMQAq2TCn41Pexr4ycgkoC38LCGirDyKlkx07AdUoFGui15QHvQHaU6aISGcvYuPOdZsU+RrhWdwFf7LrIyvbPx6awL9FWxqJB2igdX11i3bfrgjTQE0noLpt6vlKx/yIeqUIf91oMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j8pyYc5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j8pyYc5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767936233;
	bh=0dME/tOv0vwoyoF2kA5/9OBhr99UNUKNB6o9/8ltppM=;
	h=To:Subject:From:Date:From;
	b=j8pyYc5wZiipAAYxuNEOOytNVFU7Ljj0rL+QOZpD8Rr9X/VclhX/Zf+yuWjbvuElY
	 FO5mdB36IiTFr+SwYQVXDZ5YqqwEBbrfzdtcyecA2Mba+ZHFUlVHfEEhiHs9/IVQrD
	 HDMOu5gA3s+OppMfs6Es+71jmmLFqyAl91Z4mrblsVh8C4Y/CciF7BZV1jOPHBOMA6
	 srnTWgI0gHwdO21XZVPgLMHxXTubj944+WBGm71xuDBs/UFgf0Qu65TSCeRmE338qD
	 LSw4WRuR3MfHlG3DQCQD82HjGeAeIIwKEoMXk7NhuUnMuU2e/nW9aGfWfbaggJFsr3
	 sOCRkhoq95Kxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A90D232DC
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176793623358.17080.11894609690943436804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cf5cbaeea6f14fc0950261c38337be8283f02a0454e1511a1cf824df11353b
Date: Fri, 09 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767936233
