Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E728690
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782855514; cv=none; b=jxEi+kWLnnfPY904iKDV1y+Vzd5KgmlH7V5gwL8ZFqKDWjnwhIgR+RwMPVZMxXBthB81xzou9M+NIL2adn9jsaSv+mcHy2+P6pc+l2KFWDcp/gb9T5upjF1mzx4HtdHG0hlaeWU0OyzNpEd6BPO4RtkeLq0mX0E1BSHBU9zKGDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782855514; c=relaxed/simple;
	bh=5gBtFO5q/YT3FWYguuqiUT5JG8zXGKDnm41ILFSjOWk=;
	h=To:Subject:From:Message-Id:Date; b=AvWN1pLPcJCVFrKX03SayApju2+8Ll5g6h2jh1Q7YvDCs/6NcVlmyn38GRZbBwWVKT3jV/V+9PzIDSlhJT0sqxcAx4aH9jY6Crtj/jEoGehZZ5XCQ2UpO73h1bz/RjxHAmnihhdRiJBo3SOXgzALwX+eJ1OHdkA77LgwhixM/Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWPqfUfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWPqfUfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C743EC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782855513;
	bh=5gBtFO5q/YT3FWYguuqiUT5JG8zXGKDnm41ILFSjOWk=;
	h=To:Subject:From:Date:From;
	b=EWPqfUfnS8EVwdFkhntEgsfOCojpC4+b7H6eD5+299k16yXya2DyMFCt81rBMe+IN
	 WzqhkIUZWNM+yauSo1czGHdlM/W3pZDhdKS8UeCyaEEnag8r05BePyJSYKDGFvUxzc
	 IV+ycUL9usPP9PAKS89BMy0IDB8Gom6qdecOI5EtxlXhWFH+IlCBGeTVSOmQvp4dqc
	 X9l1ZGf7guC790PAsvQl37nw9aJH78bIXBxM07FBgmbYTspaD6X1+kTpZF8jqNCKk7
	 KeEXrkD3DQnEulZ0gl3v+hkht3OCzbN56m/G2k1CuOsze0DvPmuGO2UWtqMqxFAjRp
	 XZCx39B1FOOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC6C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 21:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285551368.689.10373357999214826271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87cd9e2ff176c5b4dbec90eade20d9659ce2436412128f4e9e619b7a94b14ed8
Date: Tue, 30 Jun 2026 21:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782855513
