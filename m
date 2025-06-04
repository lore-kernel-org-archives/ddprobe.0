Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DABC828F956
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749043194; cv=none; b=ECWJeVycBJvKL9AHckZiVVrSbk4TzS2qUBznjZaoocu7qpWSzkesi9kD0NmoN2K9UGy1/3QcPgLgGLwt2rVjbgeBl6TR9Lbe+AE2oi5dpttP796lSsM64F3/o9WnDE+bb6oJuSo031G4cWZ0seBihHvvNUusAYgLafYzrS54oD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749043194; c=relaxed/simple;
	bh=RZoPDK7Q+mc3a5Qezc7uMfPOGr5P7pMTEppsyfrWhuw=;
	h=To:Subject:From:Message-Id:Date; b=IVxP7YFzOjQDUqhMzLknD6RFbUvqAvVFPvtfHTmAJv4SFtXb8GaPcd6kDtWw0omOVPlUCcwMHHslhRhOWezMUVN7cb6dlJtAIFdNoXZjNvPtz9kBqrCyDvPTSeAJXyeqYYHovd8hyGpMNP0FmRHOs7K3Vv+5V8Jwt+qJsWoJrdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fORIlXaz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fORIlXaz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A206DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749043193;
	bh=RZoPDK7Q+mc3a5Qezc7uMfPOGr5P7pMTEppsyfrWhuw=;
	h=To:Subject:From:Date:From;
	b=fORIlXaz/jCz9Ip8viBd8vhXodmbWSY6+nKZwhR5akNoog/8U9qQj6SIYrN7sWlJb
	 ueZLPl0LOfs3rBjndf/RqgQPYzQfpMpoQwhs4SpVN4chRJsLThbSlTq0zCtwqK2Het
	 CPAtngWmpIfoMDTQRSERhfo1h4W50E7sfkReBzIv5Qao2SB1g8jwsuM6r/5sONzrJM
	 QMDBlH0Pz8xGfij/x/N5gDHvUVS0C2i6+FMisTm50Rgj8/b9e+aRjgpK00Lqw7Huxf
	 gKLAv65OK3Ml8RMLZowIcWhfe1fdAkM3+ARqBZJudmQGvcxTLrlTir43GzWr7/aEUY
	 1ryx0bwKAIscg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FCCC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174904319358.31382.9602901763376758003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f724fcd7a6eaa7e298d32b8af2d92b85bc826961c705d838905204814ef37715
Date: Wed, 04 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749043193
