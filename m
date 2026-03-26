Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3255127057D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774485894; cv=none; b=ChJVnOg0sl+v2DzrJkUjTKSlV7ZUf9Lw06AHu/XZnB+FAX98oJmNHE7Gf4C+AMsCFEHojEIcTvWUuG9GhVFHAsqqsk8VqqFkAQinndpC2+4oo0XOmai/75YWeXA752Z67cTCEw1KwteTre/6IvfWM8m3SG5u44G3I8AB4/folKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774485894; c=relaxed/simple;
	bh=oeq289PKKDSF0Z7ooD3WACve1owMavRrNy1bXGIGX7M=;
	h=To:Subject:From:Message-Id:Date; b=nCYBCzyUsy4S1JTP0b7y8yQYsw2uXt6TAxUFLh2n5rOfaBwICDKR8JyqC3hVUFqcEfcS0udAyjxS1aYuSWKgnpnejFPqa7VGpI1/AdAvkjsNzvTGBp7aeueODgy1ekShlAJSfOt9NDUzteE0klK4CumBZr2IqL6DJjbeMrov3Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyDqubGr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyDqubGr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2769C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774485893;
	bh=oeq289PKKDSF0Z7ooD3WACve1owMavRrNy1bXGIGX7M=;
	h=To:Subject:From:Date:From;
	b=JyDqubGrYranP20GBan6lIxz9jv4oH6h6V+9gtuS2YwiCnQ2L8GBZOJnjBNfXGXRh
	 P4p1dI4m+CQ9Xv7uXXtrCg4z91BkCUkgffy3tUl28zDZKbmu3gGQ1X/caA5LgiHLPU
	 X4Sq5/qED/fqyRE3T4Z8ckiVQNIBDn83EnzekMbtE/6L1xexM3h8CNQWgqM/x+mSrS
	 +dDqtAvli3dn8SC6Ez9KyZU9wz3aWka4pyWKNdSxnVeCi/I1RsQW3SLMl1d3oDPa9U
	 mu1MRswD1zmSTccpKx160wx+hoSZpUpb6Rf0HzKlb7OejAiFvn4N0zgkkKI7gmG0jm
	 I9oLWLLDjjRmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B74109E52F
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448589358.10950.6493644800958693918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f53eca3a0daf37bdd9f2a993a32605a45668fc8839b4b868a8099741e7d72e43
Date: Thu, 26 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774485893
