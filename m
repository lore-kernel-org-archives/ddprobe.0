Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E1A1E5207
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791763234; cv=none; b=Vv+QA+VTySHQR5nc+tt29ilJGCNVkPoAwUrb+GCjcm+RaLAfSw2tPXNgg17juP7czPWxZYkuZlVFamyfzDK+1j0VNCfq7DqBPZKo/nLfxpa+n1PxUoV0KkGij9k9hZCkQ38L8GH6IBrGjud8IjaY3QC/zn//s68xG2jGQl2RlGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791763234; c=relaxed/simple;
	bh=12MPsGi7HOZYyGWq584EXnG7hba1/Cx2LolHliibjRg=;
	h=To:Subject:From:Message-Id:Date; b=OAiey2fA14HcAPdqvQT5xr7vqCwV78Tu8hqsp72RPgdZU1lEz0qGFcY6i8fxpr1IrkKsG6zDEQouPGnTjTrsDjCl3o4bKdgNJFxlwIyNLn0zzXwE1BXW54+Pk7Wl8UoiH4r5+9R7F0NnkKGr3pquYyedNAlmv2GudyHLO4NzPKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mh+tSVql; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mh+tSVql"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9AC7C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791763233;
	bh=12MPsGi7HOZYyGWq584EXnG7hba1/Cx2LolHliibjRg=;
	h=To:Subject:From:Date:From;
	b=mh+tSVqlfvP8ga7pDa7jHQ7CAfd1n6I6JF1LedDzLmMIpezPCffpvU42gqZNrS9c2
	 M8fVUfwGQiu6Iy3MZguSzHQpbJFeNKzzBXFp1iw4oxfGM5mO6inlu6G7RydFRmv4D/
	 p3Ws/1YkK7oVZMdECSEQcpOC3TB2uzNqvHtP6B4xvjPG4QP5BhON0IgQUMzLE77Zah
	 xNQwE07vBlqdj6ZlhCCmRWn8q3qUhbN1Ha86s3uCLsnqftN55xnd4/tbxLHo9URt+n
	 ZkFeVdzvTe/mOtp8nKoQySKZS5OkRdm/y8YelXvLhV653N3Xp8MmMpaaPQ/dCJelre
	 vXpfEc/gDJ15w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F9FCA9EBD
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179176323369.7667.8441840731192147725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145c2c74364d5afa75a839bde195247494ba2f851ad4ee8d4a7f7a2bac7ee909
Date: Mon, 12 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791763233
