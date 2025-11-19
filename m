Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89A6E334695
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763558514; cv=none; b=B7ut2WaEL/IEgrYL6PBB88Ce9/bYhFrum6kna+MSAzeMU4+JoJqTpLMP/QtRWPjaMVSPmt55GRFgFADXCTa/PlaoL+dzNMw5E5UYfSsuPsVf0ncRVrvBzlKcq/wfaL9goNm3Bnl/1vAY2rSE5dduhcIHR3JEO4A2GrGRcBXf9CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763558514; c=relaxed/simple;
	bh=khnGiOHtgVpTjR2uIma5kGg103aCMxdYWVpgPNfqxMc=;
	h=To:Subject:From:Message-Id:Date; b=Wy0CQJzEVUA9oV+2vtN+09uoAGPzVaixrBM/JT2D52gYge+8KBCahH/inxemLrTfttUmXoBv7ik1QliF8tMrM4j0U9C8HJjvmWxoP3AjPGWvyaad15NVz9ZX2RiiUzX788AP4hdUIqXcsC7oq017nrDWTx8d9zkz4XSM/wcvZGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTE4TB/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTE4TB/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D83DEC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763558513;
	bh=khnGiOHtgVpTjR2uIma5kGg103aCMxdYWVpgPNfqxMc=;
	h=To:Subject:From:Date:From;
	b=XTE4TB/YJBY4i93ujFJ5ZUdP6JtikIcws5H3+3gFGsH80wfzYoV+qxwV29k+NJYUR
	 +JUDJK4z5bibFjilmrWbQuIEbrC48AbqqOkQZY65OcWT1BaY6OnezKjKzuWP3POVCY
	 CPiR1YL9VndQ6yO5DZX8nBXkRtWELPtHQ5aYbd41qsJQjhvM6r2k5fpgsQMQVbBE0k
	 Qk8smfSVOYGATGj6IXk9On9wwCfVjEUkQHFSD8DnoDRAeyEgR9V3OefeQ5PFZ0EeWl
	 Hwwt07K3M42K5ZXueHnM28WctxvwpsaXkVktNdYzhEsfFJkc0nSy+NkG6SHQ9OhUoE
	 847PBnODGix3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931D0CF34AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355851359.28182.7521420873404762332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7dabab3ab3eb2cba5c9f035698c2467413b89bd86acc4074443a47d10f0d50b
Date: Wed, 19 Nov 2025 13:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763558513
