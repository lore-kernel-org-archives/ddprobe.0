Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3187919E82A
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755417594; cv=none; b=auFZ4/JK43CSzj2CPEoCbTN0sLZEXe+xCmUc8W87Jq382QQ4YZWpn3JZPS/dKRjCtkPtDG1VYYolvd6iy9+1b9LrWB8pi/MqGENrdjJIszmUc9viB8FddSGbQJOt8HGy7p1aIfHmRTpygyAxhWSPqh2TWiwshSy5RfhHwlgm2QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755417594; c=relaxed/simple;
	bh=mS95KlcfVKTHRwH5MkPFin5VlGnWk2gnAHXkJWy6Ybs=;
	h=To:Subject:From:Message-Id:Date; b=slJi6o/w72agbCeEqZYANlvLWo6gJigGVJ6jAX5vLXUCrIhscIRt6tx6VG/hbDm5LmAKXC7SuZMYrQPSsZD8FooDcDAZXoK0MLSlMAkK8PJbfc4GDOTehuSxJgerzei7nPOppnjOyUNxV42thQpW7XD6+d9GcTcpzZh1/iC79fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXmAfIGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXmAfIGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755417593;
	bh=mS95KlcfVKTHRwH5MkPFin5VlGnWk2gnAHXkJWy6Ybs=;
	h=To:Subject:From:Date:From;
	b=hXmAfIGCHarbiDYeSpBjTUiu14deC8dyQdMYntUyW9+/2MbK6ai4WSL+YKu5s51W0
	 G+Kv6QOpjb2ctbAbFQGWYG5dFO6vLUqS3aQ6cDEhU8zA7oI4Ssk+0cSAG4xARVlDlq
	 ndbKufu+GUUrVqD2SnWvPwoR5xQVe2M75xQFnAbAdBwZxfus89ocG/OuEfcAuI6EmI
	 30U/YUBLgTKYNWAQ3zAH1sy06mowAYL7MSktbEGsAp6QK8ztfaCIQ/50LSUsPd/RKM
	 90Lmg5a/2jBgqdbNiIXN1MAJfbxiD/QFFZiffsUZV6ZDkYzXWArF7hW9Cw/jCnMUAl
	 Mj9k2y3uonA1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91101CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541759357.23780.8014523311049301737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38a08a71a0003dfe38f0ac0a54108df3769751e23ab55c5e4f2ceac9c27a97d4
Date: Sun, 17 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755417593
