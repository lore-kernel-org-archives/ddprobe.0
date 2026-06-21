Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2F453E0B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782014794; cv=none; b=hDZONeWcBR597JYmL7527SQn0TzvlZ6jcvmu5/FEc9Z471YSFHxlX/qnJ0h+sZf+JPGEukwngcvWd+JJ/F0GEf4SJKNMiLjRhK8h0XSRBlGOX6Std8PNGUWUmpvbZwUdBofTT6eT/a+iHHm0OzpTo7EOw7D7tuwh+02JIQukcTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782014794; c=relaxed/simple;
	bh=zQjlBUq7Y1kKiiv3FpOBRzz6dYgKdMyLzERqDOC62L8=;
	h=To:Subject:From:Message-Id:Date; b=DjearT+xFO9kdNpppLOQJI9KtheTMBic/7YToijAcPuJA6wGvaI5oQ0Owj7oCeQ9Cj4QbFKeBQUwqayfaYYWijV+98lmEcm/qP8C3dBtiG++ifH0Y3P7zMPhiVAAvjmESFjBUvk8SCVXvj4dhWZ+8Scwya08onMBYrwbtP89ZYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gz+8JaaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gz+8JaaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04E8C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782014793;
	bh=zQjlBUq7Y1kKiiv3FpOBRzz6dYgKdMyLzERqDOC62L8=;
	h=To:Subject:From:Date:From;
	b=Gz+8JaaIDHQVgzjAKg0JgjAFsXc0xpZmJsTfXCTGllGoyWZ4kgfX7H+ECB2AznLAq
	 wqsRZ3k7d/rXZcJMzFMY2HAZsOAVNqQjlUnQwiwgw4OpZHHFoZ4+jAl0lAsDuoaOpT
	 eqv80d5vMRdQ0HJY0QwSFjOLUS0SXBDoQpONcKXFcAW6JLyBU6mwbjH1wyIT6PPxq0
	 UFuiIwjIppFBovZkjftNJjRyoc4g5Kh9M1oXOcYx9hTNyLP2AMzfKJgtht70805Nwh
	 pBzeCieIi30nJJty0/x8LN4XZkZa60M3jb9SxP50rnJFD0UmeJM24YVzl0nuiz9chy
	 AeiV0WSBqYxZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A8FCD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201479368.25960.18407717421208552717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a253130338b4bf270b43d99781d4e11f44a8af4c17a6c04c6bf3be2187f788b
Date: Sun, 21 Jun 2026 04:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782014793
