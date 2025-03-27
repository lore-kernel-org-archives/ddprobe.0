Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464E91B87FD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743105594; cv=none; b=jc6COVWFRy25aC3gwJcXfu/D3anFrxwAq7wsq62KkB+2QWHBuJBPIkeRnPzbSmeSlntc5Eau2riGLHtg5LZuZq5kn3cxH16K10BakBSXcIrrVvjoS8yTnFTiLeLMfF9QMPZgKZeJ0p+DLhRxWIDWYgA7yzyWc2c1pQLQ2BWY7sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743105594; c=relaxed/simple;
	bh=/aHOnRLTDDozFxaqINMdzhlIeYaswMYh98qTYagcXcI=;
	h=To:Subject:From:Message-Id:Date; b=dsbmEvi9qh3y7ek0cLQTEFyx+zLYljs58bJ3iPEGYwMrXXpqKLyUdwB90QD8/mwlvRxWxdICGpztyCeH3lK1p4ku47Y9gMMy2AqZwxOyk9wCoU/EJps/UZUZ5t19gAEX+SYSJ7x5Y2gthX5w6yTyDr+CSsjaXiFiX6ETPfZc5Yw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TlQVXTOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TlQVXTOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD43C4CEE5
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743105593;
	bh=/aHOnRLTDDozFxaqINMdzhlIeYaswMYh98qTYagcXcI=;
	h=To:Subject:From:Date:From;
	b=TlQVXTOLPhPE7d6awAFKqly4TyX7bj6+sudXSWvJxeT9q3o6zTuK5Sj8dAcAgsXis
	 mvzT/nbSiqcjXkCRaENhqQpynF3GebtrG2LBOnhgVcDoyWfXjuyaQVHo6/aCpOX+Zr
	 KhW/F/uqBO1xJoQltKJbnDH2usALA+O0EWZi4qzisoIIDLQVe1GNpK4EZN1zyrBlxM
	 2tKVUlTTGceJbulukyMmX4Af0juSvlJfUkhzJsy3SK4WNKRlAz8M3rTi2jmaUy8Fr6
	 GmxX6L8FXVWwjIkuvaWxpYngW0ghAThQ4JUv4ssbtiKJWpmLfFfNwOZCNMdyxPTnBy
	 DkwAXnG6Y/PlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98964C3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174310559361.21998.2255176976619204735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5bc29e76c64492a27d815cca8ff79d66722dd690fcfa1ca2ea7c969321b8146
Date: Thu, 27 Mar 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743105593
