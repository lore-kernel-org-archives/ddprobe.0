Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9B620DFC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713009563; cv=none; b=O929TBTMGcFy9GEUhw25E7yDegt7Ab6Na0MWyGq9Y9chd+E82ZCtqSDy/VUm0Bkd6q4um5fkkW2S6OqaLGn98l9BYLDbsRRDpaPNahxopAiGCcHaq47ScgX/gEYKJi42jtkU0UCzk7zhYJUOkChZDWbsdxzwS8ckBtuyAk5huSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713009563; c=relaxed/simple;
	bh=Qe8i8ftJWSMss8z1XCQsleeQoptLYgQUeiGMKzYJd0I=;
	h=To:Subject:From:Message-Id:Date; b=FGbYzNMSoOF9YGgDY1q5it8XUbDur3CXpvoGQAu9J/fj/620Etp8Xl6mirbaYlhBNhJbNUGEsz/2lDUDFbIdJwSD26hepK0GWQxJD3uYPOFO/bFyYnJs6jwjhKitQELCLeEoODHi18PP/4WrpjNtEEqkh4MBK8UJqz1WtXJHs7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Auxp3AtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Auxp3AtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1477C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713009562;
	bh=Qe8i8ftJWSMss8z1XCQsleeQoptLYgQUeiGMKzYJd0I=;
	h=To:Subject:From:Date:From;
	b=Auxp3AtQ9uCjCCAZE8n3WhtQrWG1JX5idh/zN9mjt3yzQHte05v2UvB7wpNaEU0RR
	 +FLKgj12sYFrIpRm3lDvRn0kXXy2NoGDbwafJoyUE4oCj/sVEF4I6WGb9GYenoQ0Mz
	 /IGJXcxxqeWmkDDhzHge4az7t+qxyF+7/mAB08WIAfeMLFVc0chRVRZnrD8WAvfXIO
	 qPD5NIg/Uy5+ESb3777TBTjEFzWd8WR2wQ8czhLl6lODB1MzAz1L5Uq1lCJ/H4otoE
	 6CvhRsBaEX870yFblodfRFgCNNQne3Bf1fZj+U1/JAsCI/Sa26BMnu51kpgxd/Nh6r
	 FU1jye10Op/2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC3DBC4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 11:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300956276.28937.2420204851918055432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d22c661daca22b4842fd73b1e3ff7907542f153ed1951101de815f0a7f8bfb6
Date: Sat, 13 Apr 2024 11:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713009562
