Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9E341F36F
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791402634; cv=none; b=MiIn45e6GnmrB1XM5Yogtx9s6LCkUtGzAkiLl0cAUEJHopWNHP3Li9ef0TnpNIB871tLWB5Eb8lZUnvcNEaGVj7C3yav8jkTuD/ovCnB5mGkhOWemFchs28J8IWCnor8cQ4D5uAL3KMCDcWpcmIs34mnynYyKfVzgAzspqeePLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791402634; c=relaxed/simple;
	bh=1SB5rVPsRpogjZi4XvZzKCxUh06smAgaEO1d/HoFykg=;
	h=To:Subject:From:Message-Id:Date; b=I80t83FOMOznfVu97GbRpBTWlyoDJVz+vI4tpY1n/LBQ+SynW+jfa5/RVB8yYrWslJ+PRjlVsTQKUeAaWIbQhdtUFZk19ZxpWyWyv3ern9nPXXHRBRg47JHQjTtpBqrEHpzyLm4keT3XEngvXIansvaxWdmCrcn0uk60amvDYkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8zJGz+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8zJGz+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE20C2BCC7
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791402633;
	bh=1SB5rVPsRpogjZi4XvZzKCxUh06smAgaEO1d/HoFykg=;
	h=To:Subject:From:Date:From;
	b=u8zJGz+Ad2r9JaaAK1CwZWfSuSFW/lUQErPBkVcmvX4tYvLJhGjFwfdxLFJiht3Bs
	 K7zc/8ApdOtCb3g7NtJilpDYNL3QwFX9Y1PLz3z/FHHBHq8TAFLV8RYcbpyyV4X6Lh
	 pUZl5Q8hWksNaBxa6YgR7GKo2tmf86SSVtMRCx9wO77dZHM48Ou0ZQHGQeTX295361
	 ijj8Z4Y0fEpAXDWZ03s/56IAv9vAs/jwQAGLXv0aYz86BVi82pKI2K9eJGrSKIM8xS
	 ehlMMKjDQ2Q9lm+fyOrtfJN8QB0TXDC93XCZ1k77xqjEpVN/pJFXiszgnha84ltrR7
	 h8CGkBxT8a95A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C10CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179140263368.14232.4714683795826222016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179f6e1d27dbadcf60a531af54a293a2e6bdfff1dbbaf521aad6ab483b344357
Date: Wed, 07 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791402633
