Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7D01C3BE0
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740854934; cv=none; b=Yjt0tYlhKSkHQRx4gH4LThP1ZczC7o3crES3Orac13GNni2u6oWqhXttU99ndeUj9/kLgOZKYoyrGG9iqfJppqb12T528rrq6Joy5iLH7OTo8cd0S7TUQ5dOauY/HUd0qZNjb4oGHHv10UyLLuiimz/afy1rUbfenwwrauLy6vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740854934; c=relaxed/simple;
	bh=g1MsVWg0clB8FqsKw3noVXstomN8L+K09HIJfUFGLwE=;
	h=To:Subject:From:Message-Id:Date; b=TCVWFeJSzLjkovdD5N27l+LkHbW4eopBlt6DCy9hR9l2tGIHJ20MHb1uEbs+mcyFyZOdwMb8PpyPt6pu+2GH+6AejQsd0Ls0iMg9eus5ksb0BT/LM3p2clE1t6T1YznKAmiS7MObjMNsgRJuFxBkUcpABCieE52zPjYaNxlOWZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kbo5gk23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kbo5gk23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3C9C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740854933;
	bh=g1MsVWg0clB8FqsKw3noVXstomN8L+K09HIJfUFGLwE=;
	h=To:Subject:From:Date:From;
	b=Kbo5gk23t6QC8Xdzl6PtJ67dMysTUT1qC9c4ln2EAGdUe4KJJMiMO9BcsWF+sW/2o
	 Z4bW7HuPr4o5ZhoRB5TUOctbkkzXdivOfvpr0a0S7UeEdFk6EHtlY12OA95+U7fhhN
	 JBK0MxyPU21fRr8DE4AoQdwe7U4dXQNOacekLRm9rh7F5FOAN1YFqwq7AeLA0qZ/5m
	 baOBN5oOMNVtywp/KuIzmOwE0E54y3QCDbdqEZOESJvcytMCrbR4RZUXem+iq3tCgS
	 uRXbwa45WPVrpM+BhEv7Hbbw10OrzRZpdXBt/CBXD5bHAmszyq8wIqZXo9Fo2AP22w
	 NicshTqe6S2vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969EFC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174085493359.21865.12171286931525174691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace1968e7d627f5dbc494738574051e6d00cb29b29f9bf608eec9c6381168d9b
Date: Sat, 01 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740854933
