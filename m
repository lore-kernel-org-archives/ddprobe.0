Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1064D2931FF
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784898034; cv=none; b=NRQlN6EKd7i70MHIQlKm+DSJR7hRSU4BMsWhJUFUSg8OA54BBcjKnkQKWLPZMIXwwireW7/gTWY0WlAtyfNTUgoYmI0/MrmSy9ijiMRi342oaMdlPj2aPS+gWSRFwx3/+ggSNlxnVqdGLprcBlNz3rmQel5JEGmoJUhvHl6XbCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784898034; c=relaxed/simple;
	bh=vfWoDE7bvEDF9dDKzRqYoo/F6taJCvlOBLtBmK+Dlvo=;
	h=To:Subject:From:Message-Id:Date; b=urAG6qYYbXxO7SZxSWpQzrqfBuuZjQeqzgCYjr5MwaENw2y9meKZAd3pwzJp+J4ds1fbmi1c7zq0bA7lgy7oP5aI91UXzzCKYyMw4+I5GCufR2VBbPJhMVz+JH065GOVqc0J/WxPjeNjcmqK9KqIYKD8CB5uzWOwQ2FSyz54f5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iayc6MM8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iayc6MM8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2257C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784898033;
	bh=vfWoDE7bvEDF9dDKzRqYoo/F6taJCvlOBLtBmK+Dlvo=;
	h=To:Subject:From:Date:From;
	b=Iayc6MM8oSUE98j0Ryzt0z0xd+A4IW4qOknllLEYHuY9xb6mveRvqNRrDFRGFq4ka
	 yDDBXe+gEFfrOeb00+Fvqqxph7QLCPTCBiwJ+1oCKHTPjxjLyk2sCVech0XOEkEHfm
	 wrwyivRBNL4hV1My4E8P+SA/lswgTCodXAFjERKruFSOB3Q+kXyqVEXv/2/pdgld6u
	 eVLc27HuJHINfSWXex7vhZ0c2uIlaFzej4KZX/vFb43ucK39b7KDJboe0oXYKKbYfm
	 FHKKqhajB93SG1L5HJx2wPu1tkLkawf4jT201pB6N6DvG+IKgqQ/jaCWkqgZ+QrMnd
	 idloABXW8Attg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC20AC531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489803368.8839.4977437702012576740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0673a97fe64eaacd953c180d2f38fc07f34b5df2759bdf5ceb1246fb2c851a21
Date: Fri, 24 Jul 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784898033
