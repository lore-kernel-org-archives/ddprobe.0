Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316BD24B26
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754710794; cv=none; b=Z/svc6zVir4lA4JFX7zYiiPPTiHtMOUMYSSrVbdMwRyvkXrXnf+gIfXnkxsGHaQ7qA6WQN/N4hFUXSWZV7nMjTFOsa/o8l6O7iUuqBiYYwBfxHDuBGkcRXvZvTugo+OYbMAgQCbG7wusgH33fvvYnWgxNdnY6D2y4oSA0pAKTNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754710794; c=relaxed/simple;
	bh=W+mLiekZRb80M/kgY7ddZvL2I8HxHZ0IoKkneuKMG2I=;
	h=To:Subject:From:Message-Id:Date; b=mmdVu4DzKHiEJeslhjK2lHfebuRSmZziSmFKJfQmIgV2Fkp7WPoG1mJF+Vpf9Wi10Is4q1Ytx06xeyz3WQymgqifHe5R9ubnNsonPmvu0eTsEIIYA+qJXJHqLI4q/cpEwifjFFkp6CO1ce+K7XO++i5QuqvOs76LNLdBpXBriQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H/CpsVYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H/CpsVYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05DCC4CEED
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754710793;
	bh=W+mLiekZRb80M/kgY7ddZvL2I8HxHZ0IoKkneuKMG2I=;
	h=To:Subject:From:Date:From;
	b=H/CpsVYtm7x9XiHh6jaWKnhSZYv18wyLtK2AoEUWBCthl0O+3uLRZ+BCCe3Km+7kp
	 BPhxfbE8CEv4x6QvnifdNNIBadMTg8KVOUmmh2WFhU6qUogJEBe9IiyhFe5jlghtD+
	 47Wj4RbGvu4qHgxHV8TSM7vS+pwY1PGoy+GVHGN62n45p+kR2Re/2/sJFXhHKKzLE9
	 90Oh5VqHCxX2Fn/zORxZECkNwf4UkskBwLThgbSvnZv4mFD2x/UCLUT5g+ghs0xT5G
	 pQrdBr9ZPzVm28mIEYAXbiw2048uy+FOUmw3xPESLv1yZj+ua7usCG+g+rjoCsX+tC
	 ixycoeRr2/Nfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E859C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471079357.7901.14866592428002861745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377ca1dabe0e59458633a5a580f5427d6f19067f3c00924b6bfe424fd82fb7a9
Date: Sat, 09 Aug 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754710793
