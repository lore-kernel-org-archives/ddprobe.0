Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480BA46B5
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738422954; cv=none; b=MZlKjC/eCfY5OAp5emTnOqFZ3Fq+A+eRDcmHYuhglWpY4XAtFlfB94jpEzgFUCVgzS+heiyZBs3lRHLG+62TByPjxZfsJj7OrC9HAdRWR5SDPFlzjmAYoBoetCW6DtW/448S6JqguR0S8/qjLIVjkUTHzvIdVLCNHZ04AAxaEp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738422954; c=relaxed/simple;
	bh=cx04/+lkFibG69FA0+YXe9y/nZItFf1GEtdj9nHl0R4=;
	h=To:Subject:From:Message-Id:Date; b=NAUEQGaN7pjnAwDWi9U6VJOYfMbBMQh8vXhvDiA8uCng1e+H/FUMpQnFhj2xJyAccE1cXqu7NPFl/16s0yUZK7mYFQgPxSIcym/2DI2I/WXMRIrkexRNAbS9hEXzF8I7fssnwhmDXdSgULq4zxkRuu+tryN7BWeghFir/tuHtEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjxZYkRl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjxZYkRl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80C4C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738422953;
	bh=cx04/+lkFibG69FA0+YXe9y/nZItFf1GEtdj9nHl0R4=;
	h=To:Subject:From:Date:From;
	b=PjxZYkRl1p4O+Vwuk2tzh0U/Z6htrUNCChEFClwv3QEk+E7HcQLPWWAqOhJ4sN1uJ
	 L96UxbWXwg0FgiOTR0omTUdrpFKq2SXmCao7u0InPOSDpQzeOIiweGCo6xegFJ4M5+
	 MEet3vF/rM+uAept2PxkacSySLx9XeDiJ7H6XWn20V+kSOJOTJKp/n/bReEHcYW0/m
	 fka/9nGpNtOLwQZlKDokNe/nlje4D5ZPBo+yBoigl16U4ebJ9/5spOJFu+OHfLAwTH
	 8+hvQzmNill2f1W2bwRhsz09Om6aPU1GTIfZMi4isqBizHiY4+UfwO3xMxt+6sU4Yc
	 0xJa8DaBSeC4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923DDC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842295358.28934.6388417254941744350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d16ba8fddf169340480f577a6f71c6871e5da4fdcf4f06592cb2cd4fbdd8db
Date: Sat, 01 Feb 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738422953
