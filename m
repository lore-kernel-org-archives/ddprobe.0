Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B06433A9F8
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786851634; cv=none; b=JvVuaNPiLLIcCqM+7bL4ymAXAYbHSEt5CshC94LLVLgs+C7zlqAyZZflS0Ag+gm2Bqy/EctFITFk/2lQaP/rMcDwZO0NxiwpNutK6S1Orm3XAg8mXNo1I2GqYorfBngW7tuvv5WwOjJi+t2bh8KzeVX54y/SDMWfLH+6aIyMcUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786851634; c=relaxed/simple;
	bh=+frasyotmLgEAmHIUvbg9MmRBFTEzSsDHP4RwAeedMw=;
	h=To:Subject:From:Message-Id:Date; b=PWYSsvXAGvpYyP3XA5zrulohXHN6k8+L3ofrBVQJAJ33nccP/Q8Py9PcwnbDoY8UQqR9UDRilJCZ2XMutUW5nFadesl8z7weoVLyfqs+c9hODN8IoHU4QzN/KhPN3pVwEzgSgod8vRInKXhDxYoH/h51mgnSlADytY9hRCyhtyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BvG3mOQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BvG3mOQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD73BC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786851633;
	bh=+frasyotmLgEAmHIUvbg9MmRBFTEzSsDHP4RwAeedMw=;
	h=To:Subject:From:Date:From;
	b=BvG3mOQ0/IQCgtFfboTf2SlSX9hVr0/4j+FLqRV/ty1xKoK4PSg5zfD0QwDpJ1VEx
	 UZIuJXY3oXG2gUgflJ2NALx01ccSiXb+NNxGv8IBXwBffYzg7kW6GIjB2zwLhu1XJa
	 wS94YqyAV4VnmzM2olu9RQ1zkwGKCBUDOPW8Xgm2+VYqjlqfqrTlSHKhIu9/HwKA6S
	 p4g8vpMUeLu/uZ5eMRmE5TY/crX9MZ9iOWo2h4/2bTZcOiSHoFzp8PY6oGc0jGjU0V
	 TRai6gC/1ex8m2jrIMILGopNeD+A80nHNcwezFQx1xLSfQaWHdE2lgfoliKzrHMrAR
	 pT1ju3sbek/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA703C5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178685163368.29294.9124838583677873110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29ae67f098723b64d38b122d9f24b46fc84997b9ce6c98e45dfdc06d823c16d6
Date: Sun, 16 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786851633
