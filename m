Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D077125AC
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724376354; cv=none; b=HoQw0dAqB3WYqoKJNTnjfitNYxFnz//TsRtqfRgLbXNlowQPa6bLbEf3uo9t8F89H5MiUx+utuL4GoFilTu29UuaxaKui/pDPU/XqI3E3kkiYxFIgd7dPFCIlY71Wu3yqxUFbPqa6xzjGAMqiD9NfU3vIvPoDMzuaDkPWdUGgcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724376354; c=relaxed/simple;
	bh=sOPvyI6pQJgxWP7QnzA/a6+phgc43CYCPxva44UOzwk=;
	h=To:Subject:From:Message-Id:Date; b=GrnCsJ/07z3W4Hb4uidpU1PMVFzSEmsoGdNzTOzG5jtKLyYV/KIW85AdU4HNPypDujLeVZXKApVqnYnY74sn/28HQhIeylARQUndAGVhVfrrvzMEDDOVY5SKzXY4XiYIFaGhCC3Hs+wbWktZtL7cmstpPEZ5WdG0R5uCzCCYH1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s27bm9/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s27bm9/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA0AC32782
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724376353;
	bh=sOPvyI6pQJgxWP7QnzA/a6+phgc43CYCPxva44UOzwk=;
	h=To:Subject:From:Date:From;
	b=s27bm9/yceG7dwdGoveulv0XCCdO568x6EUNSXRsMVgY571CxEfz0W67YmgUYCdhd
	 rUUSpDF1U/WAh6upHLVRzLMi0U7yr2FrIyByLQNKxtyuRZHaMdn8yN5VF75OphBE67
	 /NJOM//Mh8LifrW1iJkKC/+XHuuSN2jBouiMjvgXh4RHnUwtqsJafnDQk53a6DA19s
	 /bAvHKK7L4DB9+K7U6cCOKZS5B1sIZgcuXjm965nDolRTjDNEUumEBKV3ukAckFaeS
	 MPCz4Zo/VzxMtKoHhcio0G0v0ZlDLMS7nrxU7O4P7mpKcLGfJsDjegLDrtHm23gQhO
	 VTbagma5TrNTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CACC531DF
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172437635359.10798.8645204290918885885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6a261a03a183ebb33c2f084b7ba67b2a8bb0e6f49f433e76f7af846c91d76da
Date: Fri, 23 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724376353
