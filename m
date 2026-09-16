Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BC12F3622
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789530034; cv=none; b=GLAc2JNEXfvSsqO6nfTLUW+A9MmDfJ7hRWTxZC8aNlUo72bEsujQxoKBnu1TG1plFWM8VAAbw4RDawjzwOtCUzBJR0DlJ7GP/NyTk9XsEwfSizCOyNQYUD/ecNJzVJ3vbW0Z6XvBQHVSl1bmckee3UorO/QC12TyXQKTVoFJwss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789530034; c=relaxed/simple;
	bh=inGmikrCUHVSTsQHA5wIpqiv+xn8dmMfqyCuI+ywb/w=;
	h=To:Subject:From:Message-Id:Date; b=FpZUsSt34i7GAGXO6/kENqHSmcMHBYsy+wLefhBmCj8YLKsDCYqEGCypZKrogPXVdaOmFckMpl9WMiHLEWzAIwky4z08bPD2lqkxCI39sTCO6klZgzT/qUG7N4Na2AniKXB/C87pcYhdm8jrWou0J/fqqAnHHsBi4ZAadnPSfPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3u6hKQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3u6hKQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37EDC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789530033;
	bh=inGmikrCUHVSTsQHA5wIpqiv+xn8dmMfqyCuI+ywb/w=;
	h=To:Subject:From:Date:From;
	b=M3u6hKQQLu1RTm91QD6WTE+Ji7JT0DugMhd4aN1gBU9pLEDT4dsdjFxfMFlh2bmlT
	 f30THZqsAdfboO98p9rACR4IgNOBNS0slWD/OlHVoYJ7gLdXdRIQpl2VPA30GRFyug
	 f8+QpYXquNUub2vCuBc9xSIH686ckLoJlJ40PN7PTnY9kvXIYKTGqzXepstHIySGb0
	 nbwQJnD36qhBppwOp0PHE6hd+7Jjykl0+a4jPsOP5deI28Y5Y/uko2E6WKVRc0Y8XE
	 fCMXgQEoKALaDKGF9ZfcDpFMGF1WFBKG9qnHCnxi1O0zhGIN4NPWHqQoZFRGITqmAd
	 k+G0WIpkWLa8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD593C88E77
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178953003368.6546.39768162534608650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 054b2805b5c6ba6876c9c2909f55781dd60505e6242321a7ef06d08293578193
Date: Wed, 16 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789530033
