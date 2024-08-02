Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BA7335C0
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722585354; cv=none; b=BX4867KBPn+FfJ2QluN/2ONoUaSmNrJJKmC3byJwSGRz/4UiH8VWzclUdya3EwrCVbNPFobU2lxghIwa7Q2E72LXRYz7cnIq7+cgnHaAflGv3RMybOLDmEXNiEPUS94ek5nxeNXKW95iSQ8/3r02Hmgbd22uHzbpXhI1RUxocH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722585354; c=relaxed/simple;
	bh=xJbFECB5HRjtQWz24YC2F+BxDTQ9lCIls36P+Y1tH6k=;
	h=To:Subject:From:Message-Id:Date; b=rwJmy39HTxCjDuZDoF7LqpSEWNC9NHZz8LsBu5hxRy8Fac8dUWohS4t7zUtvzE5HayBIiHnRrBCjBgYepsU9dpByqbZA65ekhjK3LWD6raFLqlmWqPmVkXdW7QzSUvXDGC0cssDjiu8o4wHmYcnIRu6EcY4sbEM5sIXTGt3ypys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiIDomdQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiIDomdQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76DFC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722585353;
	bh=xJbFECB5HRjtQWz24YC2F+BxDTQ9lCIls36P+Y1tH6k=;
	h=To:Subject:From:Date:From;
	b=OiIDomdQuK21tK4qd+0YYCtLGy/6DVK+wL0g3WC8lo+W67X9T1YPwUZkiFAuX25c5
	 VlnC8I7wd9G2Y51jiB5Lubi8pDQ+QkcXCxhUZGiQC4Ym299+XnWOuxItbTf5rb1+aw
	 UbID5SEJUHLOonSeg2k6oGWsV+F2otSJ+RoO62tQTCl9vrwjtYFN/3ivrl+OUt3nif
	 ohYjWvIsOhcbpGshnaR1YJwXScqeRQ4tM+NLyjR1eH3IvhvCia1+Ufk6+R8Cnz/oB7
	 0IeXYw6bclloJtJS994KGpBkrUEkQtHNvwJtpxplqaotP7IPmXB+cOX5fZeCZ99QTo
	 szUZWG2r9oPRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E45AC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172258535363.5703.13676982980644410808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbec6b186a2f663ae80a23816c11785eab4d3e459f76b4a27597463bcf146f4a
Date: Fri, 02 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722585353
