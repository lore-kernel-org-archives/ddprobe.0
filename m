Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD13207DF3
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755433194; cv=none; b=oB6tLZCC3zJ3I4K+S6pMCUGbNf163tEkV7oGkYIGl48ijOqhjrvCur7FE4Vg45fRmA0DsqQXZ12Qy6qxml3MNLzBcLe+ykhTnAIdrXYPTCUowkDVr3smAR6Q9snz6HEtdKFdKEy3Er7PA96fnG4v04U49SoBBC8trwBVyaWC3ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755433194; c=relaxed/simple;
	bh=ktRhI0JKEH/vpbNTfeb9X7OXkjQBHZJGRChNOEtaZ0w=;
	h=To:Subject:From:Message-Id:Date; b=kAmSQti/IY2rwOsFva6d0e8x6GecghTfCqoEsCIDn+WaqctE6RXmvcsoiCdMsOmeKjlkmR3R8TKJgojJovg9t13gaKGTVk4LHxmhfMT99JhcHm/Kx3auZWF9sU9LczsNgEdpqaOb/wjxMllFB9XcUzKCLSORZRAKPkhlIHntbvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GX6eldHk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GX6eldHk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7251C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755433193;
	bh=ktRhI0JKEH/vpbNTfeb9X7OXkjQBHZJGRChNOEtaZ0w=;
	h=To:Subject:From:Date:From;
	b=GX6eldHk7jB7imaYOvKCoHG5huwscI76xP28IAXcIpO9i3RJ6T3MSsdfQrugB1hUp
	 18DFuxu5gDYEzV8ByzPxrVxm8hPorR0DGAWEa1TcdYfU74HvWw42H2KC1xxfbXdJJi
	 jAO4nnrMBB4XWCFG3XVkpSbl+PL+4YnYo7rgA+0z4esasdAG2yyZLjXQ3coAm7t0+T
	 hE4hShbDaf2PadoWOCywodSOHr8X6k+2Qi7w7y2gOaSoKE2ZTsQcMWLtvjFFP5QsKP
	 JagKF8ssE9El/KoN9uvzIWHh8wAKBlabLaQ3H2HlUPVVdDVVXrY2ax19gy1woqDGMB
	 3Ly5iHX98Ha3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5FCA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543319358.18973.870886261386995604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60cf1af830d1f093e4eac3f3e37b5cd0cb9f7a066315e7f60a9f85382cf5a945
Date: Sun, 17 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755433193
