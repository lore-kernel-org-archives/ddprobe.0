Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357E14071DF
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780974274; cv=none; b=ZYtzMJ0ybyT4thnDbWxmum6x/z4AMg9e4fBVjeaCYke64RwMT1dt8kj4R+78ZEEcDEsHMnWMv0dL6/mX8L2UxA9lgAgme/JTWONuwV2PIY59rEhbHcl6xYRBTTuAQOCFPTVRB0IkQ06lCdnGUvmTc7n1Io62LN+gih0Kw/VDZfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780974274; c=relaxed/simple;
	bh=WVbd/yaCNh1Lbq1QanKcRqMEsI1HDPMZb7pYuiJHiqI=;
	h=To:Subject:From:Message-Id:Date; b=ghcqQcRwAKkFlf5+AZGj2eio1ixyyh2ZfzwkPcwYScVMbieJXDw4mVyENRA4dGYwjUMgFLHH4ReiB5v+r2E5HHQTZOlAH2wLegIwwptoA0Gi/HdKkSAHmxexIlZAShO4zmZuJde9l1bnGUbRIf/Mt5kqnuZE36mjylzCApmZT5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggG6ywbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggG6ywbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C98BCC2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780974273;
	bh=WVbd/yaCNh1Lbq1QanKcRqMEsI1HDPMZb7pYuiJHiqI=;
	h=To:Subject:From:Date:From;
	b=ggG6ywbwh3PrJbqh4F5/IbIcPCBZKAdNagUeiO8/8z2G4Ayh5gimGXc0gjWct5TjK
	 oTp/vfDE5+wKXaHQGXkzOrhcALfTF+nQx0JEOjCnkyNXvv/Dt+ieVQxP0B+S2R/sUo
	 pboOZcIJRcR/Zo4dgTtdraBZh4uw1Lf5vT0/2m7TLavGwRpggnqgXTQMzFMdIoontt
	 0jyotLh3qNpxG0hMKvxsJEUjsQAweWLJPf9P1WZlFQNLu+cfCGdvybGBAdbmH4XoFH
	 foffYilk6JmSIhaC9E/x5bUfAO32EBj37behPHPGjftTiT+BemxQcBoMF9ucLXUXaL
	 TRmdwgxmgGZRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE40CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097427369.20475.2890086652924293177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50f9e6a3f078595bc381d84bfe89449f9a76929a2dd2f24207ea0928aa7cf6a
Date: Tue, 09 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780974273
