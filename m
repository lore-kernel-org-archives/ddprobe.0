Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A06340A76
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770777834; cv=none; b=RfWUrlc432CATJpASp7C3+FnODYmQiFwMgHM5GjBLs4K4Ang0AaGBG1igl4ZUPVzXtbQrQs2AkQGWzorlBlXZNRbq22kuuynqb2+ZFWDqeuDRYRmp4+apAMom305++mFSPPpg1iqrz6ctGUKKIn81B7ehka4Geer4zq4z/D1FfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770777834; c=relaxed/simple;
	bh=AbvEdk6WST/fBUOO2SmfVKwwqyi7tx4Cjp7FPHEzO1M=;
	h=To:Subject:From:Message-Id:Date; b=F+yvYIvtuz6708FV8YeIPJegEBV/Wc94s3k0gRTJ3XOOTaTtBFD/CcuLElnFz6l08txBq10kPdHt7yJPW17OfS8gJO4+F2sNkWrLMLY8+yk8ZAF1VzYiMov3rbgkAqGkzhOmFHpGH6++sa5e5iKIzMCiwxeT5D02fjjUWZnPlX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqMCZ6Id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqMCZ6Id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6587C116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770777833;
	bh=AbvEdk6WST/fBUOO2SmfVKwwqyi7tx4Cjp7FPHEzO1M=;
	h=To:Subject:From:Date:From;
	b=WqMCZ6IdcgQkDEUY60KSBxLzyPqlS+kOIz+HzvYKzZ4t1c5rQoJuZYl5kxi8pPEJn
	 m13ON4XhkfjteSTGHOWaPKOQs5I/uq96NSYwkHaPMkySbUbt5hqmKOWQFo/+LaMzeT
	 S3Ldbln2jYMgVYstY5x42okgvsDsgbGKUKGt9jFn5C0u5W6qWgKTXBVWuwLJjiCaBr
	 +YBycQidgQCijsBsr0MQ5RQ6OLCUG5b2+6QGP/ncsCErx4WzDT81CDqjU3Qd/OdlgQ
	 IlncgEoOvzR2/Mc8WIGIZktIUF9PElE+rSedLlLOc0sMHL7NbvLjOPOAmajcKkNSRi
	 L1Q+WpmKf/cOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F4DEB5953
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077783367.28945.17210211892494169416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106a88a0e6911788882e8e056ca4ac281e75b44f9141a1e71d524fafa7251fdd
Date: Wed, 11 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770777833
