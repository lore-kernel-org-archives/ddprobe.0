Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAA527CCC7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745419194; cv=none; b=d19gVZRIqxK/JEQmSeKf7W88Wrp7LoxEaQguiaG7eHsAApOynlzH1qPc4u9KYM76OjK//7sHu55P203Z80hlstXkijLQUpr9B5YSGYI0bDk74zukD2R2ivS8sGzbc4Yea9iG2pEt2isbrpqAJlG69bgJbABmNLCHqS2LOFxdXrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745419194; c=relaxed/simple;
	bh=SZ0XZP9nX2IX0Bi4mjGSLScV61CihzPjk1nfaPAtBC8=;
	h=To:Subject:From:Message-Id:Date; b=ePIxlm/xqNEX+I+eeblaEZldH/zem+dSmeD3ct0UOthXHKxNbw5bdKP/XlNbbv/jZ5ZSaUk9k2psFS7DbkPR80cDOJnT72pttA2LeViTX426EtdEuKe4JFgcJ+le7oP1drIShaBxdOPxdnSsSZmLzOw1CyQyjnxaC5iHWkJJljE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUe6UT8o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUe6UT8o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13BFC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745419193;
	bh=SZ0XZP9nX2IX0Bi4mjGSLScV61CihzPjk1nfaPAtBC8=;
	h=To:Subject:From:Date:From;
	b=LUe6UT8oSJZD3qIjaTh0JN9ILOpP54prYKakp1bK+khd3GvQai35hf7a2s7TUVH+W
	 W22pvIwKTmEUOI7xO9B1CkweqtjoL4tq0kY6qx6cgMG6a7POf0jFthBEmOcU63UlKe
	 j3QqbqI5CNHfOO371uDdS5cT9Zf9+WGAuSYpJZRSTEZVvK9JuW6mX/XrwXBp4lu7KE
	 EGW031s4BVjbcmvIqFG86Sq1K9X+c1kEy6DqTO+gOyJDjFf7dLqD0QyfXnqvWlk7Oo
	 AqHovY/pRtk/OQdxFOyNztmLmeGh9o32DgcXYfnvaSd/J3qbqL9oXU34qTPcXVETVl
	 ihOxtjtQP1cxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA0C369D8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174541919358.690.11087545405222347074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff93285b154e4cf1ff10ac1660c46c0df88fdafa57e028aff5b594ccec30313
Date: Wed, 23 Apr 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745419193
