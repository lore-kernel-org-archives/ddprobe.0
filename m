Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC6728DA0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705531697; cv=none; b=eDbRIgLIz4Kr6bdhaTsCy3ssZCBr57zHbqArjT1ODuTarwcCnF8NQlC64mT1Gn2rPlyE2qDoCfexFbMZOpF28t9uBEPjU/U3c+up5Wl0tnAZhwGJpci0p4ztz+ikdzd9woW2jO/LX3p5AYLeQEeT1FVK7Gab+U3jtkNyoYfIOls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705531697; c=relaxed/simple;
	bh=4EBC/GRIE6VEj71N6xMvbpgx+B15JKx+mQHxxYbq+h8=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=FugRRUDBXB2yTdX3T+dn24e/X1eMZFSYeehoUptCYm5pLRpQPj40schLg/XRtCYAtb56f3DgLI3EPKInglhEtF/xbpL09rKChiOW6J1WMV+kkOo5CjblysKe4wNXuJUb+jzcBk9kc9ltmxClySR7ZaX20NujVq0DLPieaf78oJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYy8uv8S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYy8uv8S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79486C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705531696;
	bh=4EBC/GRIE6VEj71N6xMvbpgx+B15JKx+mQHxxYbq+h8=;
	h=To:Subject:From:Date:From;
	b=eYy8uv8SCcv8NJOzIdG96hz9xndKkbIN/MgQdHvwtjj4XmDCk25DdscRzVUDLdYEh
	 QEvX6RTNQac3VMFSfZqTJVT82y23od2YnBZfx4bcW9kofxBzHfaS1wFM7PjuyuR+c2
	 xVRd45Oe5qW8DwMNqaCGtZDaZLGKLZun4kJa2VOh4Sv618MjPEMHOwBfdKms8cKLN0
	 NcfwnJdF4cjlawSpRwJwgA/d5fgtdGwd4pWAEvGWcqZHWEKLLjXjxvHwgVpKYIRGPl
	 Uqv5hhwIFv+YlMnlaKrJ/EpKnwrHNOOX9i1ifbJDukKnfgq5BVu39rD4n5MCNwP6l9
	 w3aVP3CHq4PcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C745C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 22:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170553169637.3223.607057398828808455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297621d8622c6215b231960c866505d16e2175d652b5bf4932aa9c1ffd37a466
Date: Wed, 17 Jan 2024 22:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705531696
