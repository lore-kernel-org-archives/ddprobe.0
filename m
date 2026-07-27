Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482003E1CE4
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785139834; cv=none; b=rv3i76qlFZ7d8HhpkA63L4EU/vXOSI4p+78vB7gjR2DyRJ+ReNKDDlPpaX+4bQ2OQSzBIbDFUF1YpLamUQzqaMjM8R0jf6Lr90TkjRraQHih+XRg3uT6LnyInGexiARQd2OXM4H2d5tXMZCTKWKszs8FE4jDuQqPVZ6Dk6gD9EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785139834; c=relaxed/simple;
	bh=MKrzDM1I6punaS+tbZRTTtXh/5zMvoxmKGpt0YXmosE=;
	h=To:Subject:From:Message-Id:Date; b=IFobNdwglTDOvtYutubxMBcy+3vL8s/rAvMbrQ3/LB3DofX3wJnX0nWaq1Pa6GztHLCgnuJXvrYhXDNYFOBChjkW0ro2vWq+ZdnyQ1xl0ykeAnsH+mZDkN6IWJXvD6LY7lu+nbZE5fArB82fYVzUGg1ZPWQ39kyhIFmnbu/4kHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dD7D7u2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dD7D7u2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7300C2BCF7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785139833;
	bh=MKrzDM1I6punaS+tbZRTTtXh/5zMvoxmKGpt0YXmosE=;
	h=To:Subject:From:Date:From;
	b=dD7D7u2TDRHcSHOwv48OFLmiXF59AiqNpW9F5mF6g+bPo2iD+rnxuxHMkWBBHKR4+
	 l8jJ6YDOCJO9ADVVCkVx/aKpl4fUOq79zyn+hUD+J3Q542B/rKcu7OH4FouMeGstIG
	 ZBunCU7jmv+5QlHO35RBvOwiI/DmaCq14h1O+/GLMUy/w4dcU3QLzXdZ9o92lYg92U
	 unHAjdbCU625OOj0UKnG+Cu6eo3NSDqccGwvWolHlKhfz1qC+qvyIxxhOeh1FZroi5
	 xTXGmYU7kGEVTnIvdBFzogF/I7K0pk/ZSgYso9FjhDzf6Rp39OuOr6WrHDTuhzdy3m
	 pnO/szcivaQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83F0C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513983368.8840.148822992451636190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed76619b84e1a66953125b82981f4daa70939884aeede69a0a0f09766199eb7
Date: Mon, 27 Jul 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785139833
