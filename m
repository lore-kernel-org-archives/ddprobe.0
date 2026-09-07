Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F83B47CC
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788808234; cv=none; b=gejRsS+2E2xcPUdrvYB8we1hjwUgHV5Hj0AgF+TF5QZBlUSy2sKiRy9pqhotkfRk/N/GUzLJ+/rI4XR6QWEjaJ2k2aaLTvmmNik8aNTUyusZ/pP2ZHZdyqYF2lGR2WAPiYiUNbw91GEMHMLsCab2Eot8bewTi57YQLZjXfmJjFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788808234; c=relaxed/simple;
	bh=kkjczK0l+G2sEM6kqNcBbWFq7nSc+XV/5CrgvwP48AY=;
	h=To:Subject:From:Message-Id:Date; b=KGJxx6lE6dg8hn6dQXxGiAyM+PSuIW6Ioq4iF7H2e3rurpQMkJDjQ5VmoE79Tmmf7m6muL5DsvaiiG+oHPEc04y7QkOd5dKFK2HVcLGtAq1gfCkuRVwN/XPSJaE27HTfbpB4K1keVMA6HFZvTgqlQF0Rbl9RxHEIo90E/qIvDDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd1EsKog; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd1EsKog"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D554DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788808233;
	bh=kkjczK0l+G2sEM6kqNcBbWFq7nSc+XV/5CrgvwP48AY=;
	h=To:Subject:From:Date:From;
	b=Fd1EsKogf3r+W/LejE1MhgRswlB8sHcHLHLLxI72QvXZvvVKkIlYPvLOggNwRymXW
	 nFzMUB9nIV39wA905eLaiGsYnCFtNhJ40XxNbtrBRkaqgUaBDrQQAAOkVaD1KQIeN8
	 l585b8iK9i2ZUIrnhSsioxVRCBJlDvzZQ8qd1dxLTnNOFq66JTJHgHVcSdaIcGtlpE
	 qJAmcYg+DWckmRsSVO4G8zPREicLinvj48igCKlJSeXlosRcoF0Zg436lr+7p0Fk0H
	 xeKIUG5a0KkEYoH9beZNocjXioCO/rqKf/0WPqGCj7rJqlDZJxj1zGMxMkygSQt2vm
	 EDZTqv49pYJFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B5C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880823369.4487.10189282648501762374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eeb3dcabda5ec7b3abe86b8f15530121b90e3a83563a5a86892d684daff21e1a
Date: Mon, 07 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788808233
