Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71FA35223
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728167754; cv=none; b=Hlq6XlfcXQmRI1e4Y7zBf7ly7k5R4tbDJlKmBnMCAmnieeXyHfw6Vo6yT3R/AvNr+DtgtBzzFFWPND7ssM+P0FxEpraK3xe3FQtg4k/ynaFKnQzT9qlyEASOxCr9ZGNTEhHXYcQJD0VekjHrcOMLs3O5/1iNUfn0rIrAdwmsMi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728167754; c=relaxed/simple;
	bh=Mbpdq3SpuLBlW7Lxq44Pyrq2chRZbqgK6vqBZEu20xs=;
	h=To:Subject:From:Message-Id:Date; b=WwlP6aCYJj/7FPAoJPwz9ACFHaD+9lUOivmdfgAYrCPAWYrQCHxpxc1dbZPte/cI5WFK2QAv0z9zzsJfAIn5EqKVnuwbOW3Cl3OPmX7N0xOBOKcYMKRDQvL4yLR5PIqm045xIs//vbdzsmL2oRF6JKvI4WCHTE3Qt62BTWHAaTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=atANbVBe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="atANbVBe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C29EAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728167753;
	bh=Mbpdq3SpuLBlW7Lxq44Pyrq2chRZbqgK6vqBZEu20xs=;
	h=To:Subject:From:Date:From;
	b=atANbVBelV1wn0RCUwFPYJOT+weMmcHLDb5g0VA7tP0uu/UetCBxB+NMnFl60AQJ/
	 sIuJ1b+y3v6rtf/ItSl4ikbTZAZqBf22IJexM55h/To8YMnXDCKmZv3ZLuVtifOk/n
	 Mms/gITaxh6Hr4IhACyeSn3RbyC6w+lFX/XPswqDpYchMZaj5/BS6wHsGxJMuSMIlf
	 7Gma23wj2QIzW3d4NAVmFAu03HBQbdlM6LaIT4Cy25wZ4q/GLXs4uBFMACztvi0Kr4
	 efZMRDcExJNKc7oqWY+xpP1N4tTZ+p8v5lfZ9HpUmsdgb9Yt3ZosUEMO91ZtPG2mqN
	 Fjo+zZn3UHHxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC46DCFB43F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816775367.31281.12798901911416205518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12a1e15b444eae06637ae05c2b61f351290e3e6d2e73a39fea57068ba40a78ca
Date: Sat, 05 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728167753
