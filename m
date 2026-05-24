Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78EDC2248A5
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779592354; cv=none; b=ZgNejRbEr0bN8hYWGZDXFnHqXU1NDJYeJtCpKBJAj4l5gEco/tYvFmLRJchd1mU7EMMmCjPJcQqGTy4FuGdAT7tweuoHbxw5eC3VZ2oEwlSqW8asuIVYEHZTSlOT49lt3Jsy6Lb20kO2OB2+Gqx0IGPCK+DeYGN7j4K2SBYjbcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779592354; c=relaxed/simple;
	bh=3UWQhZ9668k0F0iaHl+b/jp83FF8kXCaIeRRB81aDfk=;
	h=To:Subject:From:Message-Id:Date; b=gzKNJgaktosnsHNGbQscioItXZPwhGbpWZPG7R+R+3n58DDLEsY9Kaau+h9n5VJwSiWldXBVsexrJmdReq8fc/AfVCQhICtq7S8wZnd/oMJIkIOcgQSW03pIGN5/bBdksT4tC4bZlXTJIsUHoSaY50gAx9CqIDeosU6iGUNCbhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WL2kuuGD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WL2kuuGD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3000C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779592353;
	bh=3UWQhZ9668k0F0iaHl+b/jp83FF8kXCaIeRRB81aDfk=;
	h=To:Subject:From:Date:From;
	b=WL2kuuGDNe32bKA9bruW6rkNkmtoVew9zC2m21TiWEuogrGy5ZYV/GHlyv5cgl3o1
	 4PMvshZmQ2x/dWkZFfJC4H2SsMAClwFzzaaVRJ7ZMFS9fskCUWPP+F4FxcLcM77fEk
	 erfc9HfXr3AyPiluIaQgydJGUIeGcX5+UB83wCkTfhZIaud7GAWU8LoFIT6X4B/c2T
	 vBCyhVlirpld1PmtvwJky45IOlBMxBs+uM3ab+Xl5ZTifJz+WoPt4FmhI9yOxIXOyN
	 GdumCGutmRuUOUlzGc5Uk8KHE8DTWgnv11EbdM+56AkpQlErAjCZHvplf5QfTQhTcc
	 rfhhxf7eK8EXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83E5CD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 03:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177959235368.13729.10190532008580632492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1011762a5587cfd6d472dad5a6244820d289e000e4275522f55bd94c3da5a2c1
Date: Sun, 24 May 2026 03:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779592353
