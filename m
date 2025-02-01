Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CEF74690
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738379154; cv=none; b=NetzQypfBmfiA3t2NaBcUfEjzY4XBdIQhJI2aJUipJFz89XNH9mRcnb9hs3DV6E9ngLgYTAJt0dtVHyPsrcOY/pVDa82pw3F/6XbBhbueUv4N6kgLHxlYRPjXnmIdVS+tT0dEzMo8neL+Rd+yuOrBmBN94iHS8voR6yf+Yce3UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738379154; c=relaxed/simple;
	bh=lGLtN5fztgOuU4Lxf/+wXWUZCKgHl4bONkMliu0nLqw=;
	h=To:Subject:From:Message-Id:Date; b=LLIB8xjgagAbSsPTmci408eMZTf9Z1i+Z+AkgWCSjLRB7l42nn+RxneaOjbMg3gI6Sp7e6NYw5HUeId3QXy7b01LOsBM4eJsOlqIappLTchTmmMwXNOw38gDy4Xzh7atOB7SQDe1lxhJfDXkvq77fVYC1C8GImQkhSTd6pGhd8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rx0SLU+f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rx0SLU+f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF7AC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738379153;
	bh=lGLtN5fztgOuU4Lxf/+wXWUZCKgHl4bONkMliu0nLqw=;
	h=To:Subject:From:Date:From;
	b=rx0SLU+fa5S6rb7uVDdcW/DTm3m7OvOetZUG1OLpXw3ejdGSvK2d6ZAhqlQ8SMezg
	 ZUNnJUQVKYkanAMuJyMR+cJB/PAmTcRpdVjwgTOSCNyZplGZwOMG7QVO75EOSCAglf
	 mOjV/g/kSWsn1xQnLZJa9MshOe7G5n6jM23vXqwx20WJxUGyJvyEkSX5fjiqn6Amk7
	 CTpStZMOu1/jk3w94MRZz2crW6sGut0zJUuiDPD+WLpjLrrMs1exdYe5ztn6TiOW+a
	 uKLsdhsqdqZJTk6U1AQjDIcmI3rproVgwkJfWo8UEtBH5PFP3S4IniCcvJvPPHk3MO
	 ty8j7XC2v9yfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A51E6C0218F
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173837915359.13025.2874069846888787577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0f7026f2de635058fa3346a96f5670f3614297889a2565fe30e3b785006da40
Date: Sat, 01 Feb 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738379153
