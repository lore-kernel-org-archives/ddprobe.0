Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7AF2BE634
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752605394; cv=none; b=eSk2b9YMbLVHwa/O93PyqjqJgfzpzx9YZyUIG28BZqIKjkrHA0odWAsFSDrPp3pHEm+3i0AvXHjdaXFr2Smm0hgmKdvXuDNO2dB4CXYlm2pa/VmUKbiC3tY9ie8ujsd69xQOkxLN3fC+GngII0s/rE8Q3ddtBgZei6V0IzgWcEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752605394; c=relaxed/simple;
	bh=BCMV/4iyAnUWV+tCWvKSBN1isP/ITs1egLCO11HGvrQ=;
	h=To:Subject:From:Message-Id:Date; b=C4YuZPQeanz2DKW6XdOnzeVLQCowRAVHl7KGHMDg6u3GxL/RGSNj7+wt+ejvIhlY+di77nvamdjAI5r7Hgpd1wPPaBo8g/ha/xhSs1V3+8ykYYyPBdirUT49M94mSzNa4OQTJ5qDjV2xnbTiO+46nkCkRPgxh7tkGouKzlekZ/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5YT4jlc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5YT4jlc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC2BC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752605393;
	bh=BCMV/4iyAnUWV+tCWvKSBN1isP/ITs1egLCO11HGvrQ=;
	h=To:Subject:From:Date:From;
	b=O5YT4jlcg6+MNqgTMYg7q11da6nTuHxGT+w+EVSQ+Be6yEqpQlgdoSqhH8Pb2Exbp
	 aQwUAdmiY1ady5eClEc1I3JeyLx2yfQqU3IZy26YqZceazwi0YZx9VZcC6z/Uc+D2e
	 ISKrymJsrUsR8I4Ex+LQti6xklULf2w3/0+pzz86zbhkASjrrPCJc0Enb/t+Qw/zi0
	 L6je196hyNl2urvxq8CInAHpDFMdk9B8GH9eHpcyMNmcrStDcFjwRb55NsnUY0JLpI
	 HDwGseN50izi3iax6YpPw2jWojVve7R9Ytqxs9lsxGdHTg+7SWCen8UbjDOLZs6Mqf
	 /PQL/Cf/C8SYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F77DC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260539357.7973.6349845759020109185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067d70b00a1e11957c4f205de0782000dbbfc3d7daa0fc2ca09dfeebc79936fc
Date: Tue, 15 Jul 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752605393
