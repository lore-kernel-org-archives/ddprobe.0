Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C3D632
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735079754; cv=none; b=ZfPXuTcp0iE3HEqYYr5ovTcijlBkFVKZNgBGnMWrCDmr9mDWYGHQwDSZetWSuzAnwrXmlinEQL7LaD6KqLvoerFeEKCsgUPbJlIbomteufFhGeqYpVL7Mo9z5zIMXdvkQ74O3Hv9FCiwYp1BwrN0xrnBrJZuKciVwp1wgj49RSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735079754; c=relaxed/simple;
	bh=w24uGD50HC5witVZsfR/c7Zg6SAoVxtyxJ4tGH03KYk=;
	h=To:Subject:From:Message-Id:Date; b=ilPomBdBoaItnCWMyBfgyRQOGeaMtkBvA7/V7Cw2JoVR31QejJaH/H7lcf/MRqQcspu9jMTUP1nnG5IrIqRfgIc3wNe5Sqf3pogTYoufNedA6onQ8e1yvRGvnrlMV0QV/lVEZ4sQLFGRsWtnMCQki2xEDJPwo7ML/OYABvdcEKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc03v14j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc03v14j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE6EC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735079753;
	bh=w24uGD50HC5witVZsfR/c7Zg6SAoVxtyxJ4tGH03KYk=;
	h=To:Subject:From:Date:From;
	b=Pc03v14jN2IudGs3fETJJB9xc7nOoGlLoNd0Yq7HFjmi/60D9FAqiZLO0wWKm5Cg/
	 h/k8KqIpDN2WbfQQtqsEdUwLIZGxC7EU6CctO8m99opKTcbdA4f1F9UWAo3S7sOGIK
	 7k7ecD5euHgz8YBirYyKNaml+YZvHCi4ThejXNt3Ygm5Bxbok2phWnJhHwSpWnXtyV
	 NtQqlA/VvKCvHGWSGak8QRt+cap3hs5Zzm5xZ7YUtOYoWwbmcuLYXi1iP4TD7G2gBZ
	 sBcY40qn1Ld7EhD2v49kQfGtj6VdF1OQANtFiatEvPOTbGklfEqyY4fIPGxS2pid6X
	 ikxg6PSI218JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981D3E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173507975360.15567.11629045262055285108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 192970d41c07b4d3fe7c3863ab54abfc0b37242d4e7fe8f9c8a7e79bdfa53435
Date: Tue, 24 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735079753
