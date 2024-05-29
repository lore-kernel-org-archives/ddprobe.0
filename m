Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E0BDDA1
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717007063; cv=none; b=Gn3YaX44NZwaQQ1NijJ/8os24saVKBQOawJEaZJTzt013ZpWP56A3JrkDs2CR/OTR1AIOvUBYNuvmDc4g/fgqyl3Z83+XBXttZvhjoonjyS/OHvSvjrwRQTlWLxrj98A6NOR6uUUIxPq5G/refEBFubUT/YS7+hN/1CnO/Q5des=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717007063; c=relaxed/simple;
	bh=+mlxGdyq6vKPoNg+G/ySPZwsKvZL/u3uVkU4B6bu/hI=;
	h=To:Subject:From:Message-Id:Date; b=UaFNZFRsU77fhNQxmoMDedXYiBzN8hblJf7JYbP1p1vCiZhYTmmizOjdKkHOUQ501iYjQOeg43SkcCVPvOqSr+pkl2nsbijiKS2QU4hLlw59oAgT8RM80LhXiI+CQDMPiZNBEmCeNpLRSgq6TuYGqWloOr8V47+SFIRlbmrZ+P8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAjdNbqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAjdNbqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E9CC113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717007062;
	bh=+mlxGdyq6vKPoNg+G/ySPZwsKvZL/u3uVkU4B6bu/hI=;
	h=To:Subject:From:Date:From;
	b=bAjdNbqhOBiZHOqAXog4GkI6uzmoz5zmnFFfMLmDmVBbSwEa2jQd5NLZrbOcbH9x1
	 jbQEEMUGMw+4pCcNa3gmRWHiOCJxVBNng3DSMuAUNs4GkUgS/IK8I5lHDswdeXhrha
	 nWPWRtKpI35/tOH4/js0+KxkPFmrNa+fQ0GCUAGkr8ZPssmsE5fBDy6lqze4YFn8RQ
	 azPm+vadmX2LvpIwaflpA0hAWBWgWcbUVz39YEwFgrgFfSS82jpZZbk1xmk0aaxjow
	 SVFFYcW2SK7+jKzDt2AySDu/Jmao1yIuoeqZCky92g+f8MyD42m4rPCQGhgvq52SQF
	 oZIlFmAA31iIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C90C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171700706279.547.7268642017174502012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751b3f0526054160c45198c56426d97ec03fb310202c14d6aac6cbbaaa7340fd
Date: Wed, 29 May 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717007062
