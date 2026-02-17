Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E32FE05B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771319694; cv=none; b=PURLJIaXnEGdYbB89jkFoB76jVXndFdnqCKPPPr+nJIWhxQoRoSdHP+pb3VKzN1Vmc/VTqEGmCiOYFbWdAqtPp6tyqkbDHwF3df4/qMUGmO5ceFFfFxCfHmUuzBA2vB1r3LEs+EKXTfrfW3fwgTsMVUVszqJTcgGK3gNWoXyZ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771319694; c=relaxed/simple;
	bh=FxQAvq7A5a5I5pMtL2IU8hKaOgAsblJFnIGQlsTtCc4=;
	h=To:Subject:From:Message-Id:Date; b=N7eiV7THck60+pQBlnoB4V2swYPHrMD/ubNIGMdQo4UHXhP1ryY8guYiL3OuZeKurwaptda/HnaNlr2Y5S/ScorY4DSnyGBHs3LGluD+F4H3aL4cxFUv5wc9Ie8LE6mXT5DEg64gn8z5TCjwI4WVx5JhTTClLLKyEAOPRN4d1Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ar/f0ZlG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ar/f0ZlG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A514AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771319693;
	bh=FxQAvq7A5a5I5pMtL2IU8hKaOgAsblJFnIGQlsTtCc4=;
	h=To:Subject:From:Date:From;
	b=Ar/f0ZlGR67Ittv8p2/4ObfzfzA1kT2WpIncsRjI60k2QvgsXBmYXsHLMc+MDwf6G
	 m3Y6jBbwGceYyaNgVkSkIc8pBN6zW6vurUaZBWACZC5NOz4+DHzgFaCkDvImFG/ipq
	 W4ek/df/TMR8uTUA2T1PcQnSxK70sLeInXaljIfORIYnF/9j1QfweEbYPYaH/hUYmb
	 p4XDoSHmYt0+IPY08Ol7UTOVwlDhTN/BQMB/2PcX9AIDq+ogyXVGKfAHIZZZGQBPKm
	 +ZPn3jP9UjgUzDbzhvFXbS4HljYk1KBJfB/bqzA8p1UyFoPSpYUT56pQzpEd9lMXe7
	 l2rOf/ARlFbPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C23E68151
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 09:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177131969358.18573.17361907429975177478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a08cc98a42ab67ea44dc5f20454fad7b5bf264b1bcc2f4059b352ce47b3f61f8
Date: Tue, 17 Feb 2026 09:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771319693
