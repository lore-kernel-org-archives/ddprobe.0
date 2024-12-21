Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB9A3F9D2
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734774954; cv=none; b=fghEU1EWbaR+zo3MPbvRihQcFNNZzGCxyMgkSd9Wiy1mbhvLC1XBMyXkopQN7mkWXavYl208Pu4W8UA70Znoe0qpuRMqs/pquknaUHZl8v6xWwPB3oig5FZO8UwGWZ45/90L0XH0CMhI0nhKbPGubBGJDdWHrYsLZIH/9tRiiSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734774954; c=relaxed/simple;
	bh=wdeEICA2ty3x0taGkDMQeHMZfR9ZdczXmbTh/FZCdSw=;
	h=To:Subject:From:Message-Id:Date; b=a1dWf7kcXHaNf4iN8p1VmHNFEdVFtZcItXpY1parSbdalX5nMPUtHvZo7oD8tK590gRC/ESpy72y8QewkygDMlU4aJsflm7QnF4a/QrFTXEpj+Uv2FBxKWF23JS0lPM7wRhZH1mT5Kwoujh8DzZjy+PW4pkpgKJgRfsQLQzehEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ruQaLfA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ruQaLfA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40F4C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734774953;
	bh=wdeEICA2ty3x0taGkDMQeHMZfR9ZdczXmbTh/FZCdSw=;
	h=To:Subject:From:Date:From;
	b=ruQaLfA2J21Hin8c02KSGSWq4UDnIdVBdTiKh+GpDkX8WCbLDK0OTaTtEGI3VBwqu
	 O4HwszxEDpKxWZo1lgARw1BAqaM5OzYAAb2Fs6o9GyvQDF4/0V057YcaVV4249elzi
	 UhLOVHqOQmdqPm5oaa8yKRGik3mEihb6rJaKhjUtY6zXvVDHBylBPltiZBECCk52B9
	 JHhBPKhmkXMObJt9qBLnh8DYkTary3fzxvlWY1UVE85CiYncEqJ9YRCn/dqPPp7mE+
	 3KUZ8pEIGvSqLnHl8aPV+C8dwAMi6q+etYLe8k23qNLPZ63fOu4LpemaUAM5TVgzQ/
	 vCQH9+ucE9iTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD478E77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477495366.29803.8465267682007729604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fffea864661e38a28b44c4de2b5bd2a1137b7d70bc05f9ec4be1b114d7e9eb14
Date: Sat, 21 Dec 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734774953
