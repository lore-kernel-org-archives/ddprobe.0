Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7768BF8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717811843; cv=none; b=NNlSBeS52RZdCFZFr2ssw2yHytZNSmJiyDSWpE3yyCMzJCFMzFLSbt1Xyem3f5tNldH3QS4podryWKuhzR62/KIP/cHf+3HdAEZMnKpjcStr3mkLcnMK7xsys0gcBNRp6JLegLrw6B2rpllH5kWk7wCRYrW6HjF5j8s0YZ+/OeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717811843; c=relaxed/simple;
	bh=YqzFfPWd56nvJGI3OPMXcrDFl29G2AyLDW8AGp1GgPQ=;
	h=To:Subject:From:Message-Id:Date; b=RfSbVAysGzxZawWO3Wz/X/zMEi75YXRN1Vegas/mBaoi5kdcWWgw2emRNw0k6p603KgzfwjAfs+jDKFyIsjMBJrETmfDP1q0S6AmE2d+9GIs+gaJpWrkBY2lA1ltmpUb3tXtDrJyFcmCTAFXpPPQ7WmTiy/9FTVefYCnvIvyIPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5wKz6XJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5wKz6XJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7ABAC2BBFC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717811842;
	bh=YqzFfPWd56nvJGI3OPMXcrDFl29G2AyLDW8AGp1GgPQ=;
	h=To:Subject:From:Date:From;
	b=q5wKz6XJYSxjKo/smSMzJLqWvEODGR5bII6tVCBLcJBhFmSS+1oJTb2fSXF+w807N
	 W/REV0VvyuP80bvPQhaYMyosbc5umw6dsfanNMNBWhymarF8PPX5Hm5NAZdBC4Q4us
	 T1e06fC458VIWGLIRJXLV45jyOhCe/RdKlqaIx+a4s1udGzvvxNdWg/VKIhGXKSGYA
	 rJeVoPcY2DkJh+L4w4JZxBpXkcrlDYVdrAKRqA3ebeJb5DSI6E06Qjq4DivJYB940+
	 oLP6wlqFpA1YmK7GA3+V5cV3qB2EJYffC+DCGjrc9QwtzWPpExKZ+2acVzmsYyhLPf
	 o2Ktv79wvBAkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8312C27C53
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 01:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781184278.32590.14461332202811095102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2541cc7f88dc5e2283d22b780c6e236ac2b618f886f321413e7838b2f6aa8fdb
Date: Sat, 08 Jun 2024 01:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717811842
