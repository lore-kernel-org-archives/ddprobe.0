Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA411E511
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760932794; cv=none; b=tr1MzMbja0UQK3GEoqy3G9auy0a5Qa0jyCOBXDM3yJ+WOWIu80O4NTNCIqG4ONd2aCmFFZwFraBUo9jhPp5v+uquabU3K/aoTooOP+mK4E2fc6BKinVfLxBmw606hzgGwTt7YFhumFzWuVgmD0YeeVtO9fZeL1FbpiNqhixN6oM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760932794; c=relaxed/simple;
	bh=eQhCq/J/gBDjXqTLZHd1xeZOLPwkPXpbKg8sywSRTZY=;
	h=To:Subject:From:Message-Id:Date; b=bDs+zgWQXyaA2UlNqPrzG2qk/SL8+mNJmK53DDXf61WWmnuaKKZtK7KdAiUaLXrFllkL+M7ezvMjJ8L4zd+Ps0O2DL2KIYkpcgW5Y5HQ8CdgjDFhyLol8oAjsqkMFrDPv9JODiL2WIbi/jF+/4fnsggpnEVu5vw9Fndlblkec6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sx+qWpbb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sx+qWpbb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FD4C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760932793;
	bh=eQhCq/J/gBDjXqTLZHd1xeZOLPwkPXpbKg8sywSRTZY=;
	h=To:Subject:From:Date:From;
	b=sx+qWpbb2cClIF1NsOD+sg/CuyldyFXhGv8jWgAuFQAF/4shXRULOdXJlaZQzrhxS
	 T0lQjtmp6H3bblkv7HsD1I7oMHl5mfHypv7PlRTHV4MrJSBLzE5TQ6fipaje+/kotV
	 tjgT+Wi7Y0lgzWXQBL767kLn+XdMpkZ045V16vE/LzaSSnOHdNz2PBYT66VrRhVTi2
	 xeLa/6L3n7ubJmFksY7pC2oZzSPwEAxzbMZ94Cdiyx5q8T6chUIBOFeS3xDbI7k4i2
	 GC8vUqecXnD3wTeJrlk+TTwB3dkbOsxMPIDVcORg2iwMvYG/ZpyxXjOXFBLKAkBI3q
	 7dpFCDrSqpHfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94942CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093279357.4813.14513467523851484388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0e63c8b0fb30cb3b812f1a0d0fd845e700e306eba770eb0e2056dcb3aafc22b
Date: Mon, 20 Oct 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760932793
