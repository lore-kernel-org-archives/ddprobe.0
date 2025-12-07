Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1889828D830
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765141374; cv=none; b=fwoNbKT9FsczdQVVJ2PkbEW+j+XhtuaFvCaFCeVRuHNCFYwx5JgiOysli7i/+fE1M4FxW/1RjeiW8vUQJkKcd0w9fwjiPqJxvjDAfy2MrekJkVfHniZMXh8aXKDjYlNQ4Klybg7OAit6mwL7laryTRaoEdKjoZ9C4OUOYB7y5ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765141374; c=relaxed/simple;
	bh=xYFt+OKg9YWsqIpzDk+Sq1Fs1rya/1eFgH14d82OkBU=;
	h=To:Subject:From:Message-Id:Date; b=HUUKLGC+j4lGq98nWdOjmiZAX0bh5Kka2FvgAHl3nBcx6ffn/m2in+h9oSEo0n5QLnnvJgZXR40cjldcobZwle50fqxRupnnmP6M5pL2PA4lV2usSl4J57Z27OTV2Rr8/50NfcyBh+2L54Jx+iXRrbEyUOpNTUfiMNy6vJQfz10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksdbMueV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksdbMueV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B6FC16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765141373;
	bh=xYFt+OKg9YWsqIpzDk+Sq1Fs1rya/1eFgH14d82OkBU=;
	h=To:Subject:From:Date:From;
	b=ksdbMueV1sZsA939ohchacAFD6MkeeGKbpWZXcCjjAxutVCACo6+dfmTUCx2XHaDK
	 SHn6AaDTJxozn5Ih/IK/Yy2PcY9XdyTSn5zmxt4I34zFB7gVLJRRdqoOvFGLpTCOb/
	 w6pa0ya3pu+Il6BEy/Bxe6BKdxZPdE738HVKWpGUm/9y/OPnnj3KmPlgJipOKgGn/i
	 jE1dpJCpEAAtroIrlcWjxFnbA/qifxNqFQYl3KBH+qid2sDHIVyfnqwSo4Hx8DJNGG
	 7P5FrwzdOKCJeM56ynxZV9sK9aSrhc+dXhPHooh/HKZ9GT5Ng6ks92W+d9RWVfcEnK
	 WcTwP56E1aDnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D94D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176514137360.31310.3742391422447843955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c0fc20ca4fc4b4329f10ab02048bdd0a48b147b5a862b4ebe636c0c6bb36586
Date: Sun, 07 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765141373
