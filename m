Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AB3A55
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753871994; cv=none; b=YYuHaILfFnn/of+2scAgR/8snt/GvNaO8/dNqr92GWc8LRITSLPL2G3DG9QFxTYbuLYQsgdQEhIAf3AqqEDGeM6Hg32gcPoGc/bDYpJUhHANX7Y9StkfjleXNqlGA+wIG/Q+GZHp/Zfkyru8GwUR2PHHrF+KPPPheHnsRhvXBEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753871994; c=relaxed/simple;
	bh=WWI/IGxYLls54ZosiHX2J4Pi8yPEQKLym14v1gb46Qs=;
	h=To:Subject:From:Message-Id:Date; b=fAVVU81cqMhUCk6hLrjd7NBoqan6rbMDJENKq3KgODru2vUT16bCgytnULdONyKa2BstrdxaQ3acCmy2HMqQtmP3yD490x444dQAttWcIE2XL0lMP8LJwTCnfa71BmlmeB9TiRtlGR2M+csgJqAql35eQZGCWxnOEIC/BVPucdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFkpBDtc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFkpBDtc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD9CFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753871993;
	bh=WWI/IGxYLls54ZosiHX2J4Pi8yPEQKLym14v1gb46Qs=;
	h=To:Subject:From:Date:From;
	b=iFkpBDtcTPVBE29+dTET9FbGGDG/AnWyBhs4lhF01r7QRrpq0MFiqYZRBNwlMWIar
	 svasxQc5Hnz3231u6wSGZpOKktj7AVwkDnJPkvY37SFrBjia+HcQeFv9pXCy5YWtbC
	 DGxqzGBZ2RIIZ3EZJfPaj4zNRpdh9R6Q7hxnu5Gq7dfSL+pYfwuPFD4ak01ikoD8LD
	 f7pXpsuubWHHs7hhnZiHEhlouVbBrkPzgukLJB2jOCUDrcMo0UPj0MsmrTDj0nxib8
	 hh1KtXSPWGAJmtnh3HclUHXJDc5iYBQ8MNYViME0lT2MZV2dpDY4GKON57/X14fcx3
	 3QUnZ7Cb8KgPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC54C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387199362.19659.11606123557521112471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83510e0e3b721bcb9d06893ff61cfaa26418055f5d75209b457fe930bf98794
Date: Wed, 30 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753871993
