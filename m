Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C0763C
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709430497; cv=none; b=ss2Iq84nbkyAcgk4GPvFq9ZzrQ8Iutt10j4SfwDDeApmh22zLrlYuyx6KXbAbCY9Zk9LxlutFHrgS1lScOFIridWhs/kmHOn5zk5+XPeh0QKIGjdqJoDvP3YsVJe37b4zmI5A2ce+4HDydW+8nMxPblH6AOA+1a/+ySjQhicw7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709430497; c=relaxed/simple;
	bh=C+/7ozGTbxAWJkad2Q3EfVarOwtW4zp49O0V8f+joJg=;
	h=To:Subject:From:Message-Id:Date; b=uj6gB9U6iJ8je5aiQZxW1tpJA2ne3F7FV0A+/hkBmY+1Fq6wnEMM8T3uDvqWWGEm12wr54sqmmN42qoSjp/0qpzCMRGuZrSULAmxp+UT4TdEOla22zsB2HkWhebkMRjmz5tfN9EKP9qU0n+mvM3wOKUGIuHeEkgz9S5SOvTr9fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ffiHpOxO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ffiHpOxO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B307C433F1
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709430496;
	bh=C+/7ozGTbxAWJkad2Q3EfVarOwtW4zp49O0V8f+joJg=;
	h=To:Subject:From:Date:From;
	b=ffiHpOxOYEexL96lgZ+wMRDiCjT4M0Ta9PBQExVsn4bTZwI50Hm1EVbu9nfPMWw6P
	 h2jFEi6x5fcLcsSOKZkZOOLj2leTmwIDa1A6sPTEfbeo5z3IROGhHjTvdtgBM2HgqU
	 XVOsFal8B+p64k//HzevMI7IH2y4fX2gnRPuph6ggQvLtnmt9Ba8a3JsOld43VOHkE
	 hkoUef7/v4eG+Dd5FuCVVp1O6BaIfiB00pOTbnNTpEn0lyfOkHRvaGrHKYWWxSD5JJ
	 NCMD321QHwlYyFfejD8cJoK4Y5YCHyJWp3Gnlu/KwU3ARO0kihyI0d1ylZHYO1TA7y
	 g2hwB3fFhp3PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6142BC5478C
	for <ddprobe@lists.linux.dev>; Sun,  3 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170943049639.26672.9576743653125123987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c75d39d6c226b7cfbfb8ffa039f9bc4b9e2e7c9c9feaa734f19665b4e0e74100
Date: Sun, 03 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709430496
