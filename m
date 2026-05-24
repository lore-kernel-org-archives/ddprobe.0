Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62DF91CD1E4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779597754; cv=none; b=Gvu2hm22Qe5cbkLM/9sJsBa4MesJ+JoN5mjD6aDBVOyJKBzRUIMXAmXPzYGCES2DTP1xvHYKhId8bRnGxu6hJCn3HhVaIQBJDZBSd2i9oLkC+tXE2kJm9t31Jzqr0PG3SfkWknraaOKuwn23o68JiT5a3EqcTErUBkPSZgrBv0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779597754; c=relaxed/simple;
	bh=dhHYaKaN2ILkzywg9Iam0TLmVbtOGjwh7CzZOHYGs6Q=;
	h=To:Subject:From:Message-Id:Date; b=VnMjOl8FG49TKp/sdU6/tlOGl+7k2jbu2IkQN3NPhHs+KbGf8zMsIfB0Zv9JBwNjtPi2X1Jt/r+Ax28hYxsHQgg1570LQBKfBAD6SmPy29XA6NVxxX7QznSHKuAnlckd1O/zW5sUEELLNuzH7VYbkjCxeG0HknGE9HuyRRtCdzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyM7yZqD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyM7yZqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2B1C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779597753;
	bh=dhHYaKaN2ILkzywg9Iam0TLmVbtOGjwh7CzZOHYGs6Q=;
	h=To:Subject:From:Date:From;
	b=UyM7yZqD//zZcktn694Mpv9DtYm5CeKzDBn8UYoVc09o08H3C6gNNzix7kWMFmYbj
	 QqQOjaGNEcT87FDWDQVautV3udxc3iuJm/+Rsd8DUgDiNcCsEgB9+/a0qISdKXbXO+
	 Yf/Lhp/EVC8xdB0v3jZaujCvXJtDyj6AkPFpJsKfn88MaHqtBk3VNKWqn+Hb88MEcw
	 lsX1TKTzPdSvuQX6TD6D2Yjq9I6L7sbdAnI52BbFUfyGuZETPn+KTEug7NeeBpkp4i
	 IN45WrMOIafQ7wR4FszEIg+tBUBVc7fQ/vYKV7V0gbrNQNT13iPy7Ah3Xj9bVw1BK8
	 V3q2oeAeN/9dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC03CCD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 04:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959775369.19628.4910530958506333132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4471de66b86addc3c362961794cc4747c872c2aecb89ed9d5490a793b19fd7d
Date: Sun, 24 May 2026 04:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779597753
