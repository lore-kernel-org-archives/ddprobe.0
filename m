Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2ED1C549C
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733518554; cv=none; b=Jkgo4HrWr8HHaKuDrJYgof+N9jNuH7Xetfoillo/LezHw0Fiwuku6mDhBd1T5OZiZUtAKm7nmlruASg9LT4FHWVgb7JTcXXXXAH2EU9q25CCyw5yBlJ6RebQUi+EfEcnCVJWI/uE1khyhEAcDnS8vJPzV0lE0Z66hDjZizxHC3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733518554; c=relaxed/simple;
	bh=XJngRec/PDR01iM9fGWTwKLj99mWfffPirpULs3fyJk=;
	h=To:Subject:From:Message-Id:Date; b=hPusnfyRJuS4lFwoXUIP6e0TIQK8eHyx/0TkuBi/bcKhLzLM1TZlTiKJXBEQ3GrmuLhEvN4kw0O6EVnMLXgTF0OMRZOQhGO5nyv1+tau+vycs6DboiW33yRvi35rRep+HM+f3uDa/TJrhNLsYu+OpoLkGeMxjbHX37afHZ63DrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NG89UBZD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NG89UBZD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73B5C4CED2
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733518553;
	bh=XJngRec/PDR01iM9fGWTwKLj99mWfffPirpULs3fyJk=;
	h=To:Subject:From:Date:From;
	b=NG89UBZDgZvF2Z04W2ePL2nDSZdx+AsWa9pqSKZys/JWCLF2Psv0dOJKC+f0/FwSj
	 tL1NV+VS653y3gX6dLRNAPBBNTcnM+/OOp3awhYpCRM00TqZqwlAujLlHRcwjV+Gif
	 Uyk4ummPv5WMC9fRBC3KyOgqu2KZp5mmoumM5j3d/qC2AIogUq4BexYaCHTOSa1P8h
	 sQOjDQEzLPoT1IfNju7+dH1iW7SZGdf6G8LJh2zU0GFxC9B30z6EALZikDd7lw3j3r
	 nYWsYIM0aCAiJxifnhxyNDl+eJhokw1ekGMW9V2o17gRZhwhy/4oxXjrBonMZbZWFL
	 OcIT5vnoDVMBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E6E77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173351855358.6538.14013010283610324509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9918dda738b0dc63b6f2f86980ecc0ca7f28e4106add782e177b5f1239db05a
Date: Fri, 06 Dec 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733518553
