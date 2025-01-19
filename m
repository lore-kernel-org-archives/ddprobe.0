Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499CF257D
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737329154; cv=none; b=V56pGAvGL23Pt1cVYONnEwGO0q8uQ9CNuMbd2Wu4xBkjIatqiK3wGCsPOjkqx0Yja+gD7VXNnnT899BXtP2rMaNK+KI7S2uA4ke4q0U0slNiq9zWWedFpg8SEcXKfhnvSAs4D/jc0wfSN4LvKn8J64Hl0Xxndrd5J1CqH5HLtbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737329154; c=relaxed/simple;
	bh=UwjAusoaZBY0oJDXlOgf2qKdIxFsL97vQ3Q5kVHkuwU=;
	h=To:Subject:From:Message-Id:Date; b=THR+R4poqiS8wokX1jft6QNstY6xUgU5+MQkDaz3qdBiSehKmy3MccdVW+Sf1JFd8iD9AUKhSLd3yhnkWWjGJZYuv+vGtzRr1cwe9F/HI/dwSJOheSVbhSDUFmuOCFJ/xnUHlSjGwYMHigcn6b7MP+5nVrrYOqsxvWrgKLVZZ6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ticW9e5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ticW9e5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F4C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737329153;
	bh=UwjAusoaZBY0oJDXlOgf2qKdIxFsL97vQ3Q5kVHkuwU=;
	h=To:Subject:From:Date:From;
	b=ticW9e5Bqafvz8T5FumQWz3Io1gVe2NK4pref2wOLLuPZiY+rLBZrd9q1Bf68dzZO
	 OtN7fnofyeDBn6vE3wNzKkiuXKU6sW1kyp39wvKs0hz4ke6wXcrAJ1T0vBH2VLQqPy
	 QmncmPVV8g4GTubfv/+GJ4C35zld0vx03EMwGCgL0wZ/0LayMUouM60VQWVYEnGgkX
	 OnpYBj68j8i6o0g4Jido3/FbNwF/9p0a6YYDrqbwXB4KwcfsNEd5XhYyah7DmTCs71
	 dvSKqoRYz9c3036Wllc1hHjt1ywMBHcwU6wnkbdDFwOHuvhHV6w3eTEGQTJOdOlvU4
	 0su/HiZBdq7CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F815C0218A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173732915358.27079.2484861954996364778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: feeda959c8161a223d45879e5931d1787aa7dafbf98372b860be3e72d3ad7dd6
Date: Sun, 19 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737329153
