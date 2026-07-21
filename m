Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5138A4195AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784633914; cv=none; b=i+hsQiXb/FYZajiXJ1sJGpx9p0PERRoWlyRh4D2qy7aXv8pk/64uCaUkTGXSUzR3ElYIEizFPRNyizN6+f3MsPlxlJslgA2cHoIlDovmqK28pvBzkoxpRbkdB5vhbJAvB9a9MdINy3YQqYtBsV4fwpM0+QhD4gdfWiwyswu4zlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784633914; c=relaxed/simple;
	bh=OLmrdoLMbbtcaZrVVbBvUn9kGawN7poSmZrvOdtbGU0=;
	h=To:Subject:From:Message-Id:Date; b=HlheuqHgmc7klEQmJvLP683NYR42OEtyS+GMtro4pbTgqe/h8XSPX0Y226q478Ss8zEd/ZPu8QdzlAnOTqip66Fq73+jREue/XWb+3GvLXd8O2P/hIGzbLEyFXu4nhIiiJKteA+XV4eqOXrNpJSGWBPq2qzkOpNzGML88OehJGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZuRLeiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZuRLeiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5909C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784633913;
	bh=OLmrdoLMbbtcaZrVVbBvUn9kGawN7poSmZrvOdtbGU0=;
	h=To:Subject:From:Date:From;
	b=dZuRLeiVK5+zHKbJazblcg/X0Cs7RAhPoKFEMBTJUBvlGuELeaLOqvZ+Pkir5UtGw
	 i/r/ZDNrFT35Hw7u597CLzEiO1mRXUJjIsct16Fo+PzWB5I/aZ/xv/gAnsIcQ4AL6g
	 P83+gpzR3NG8frLz9LL5x1iWrE9Y5ydRnTb+dlcWYlpp2rfaWMDKlg4PlU7lbulPiX
	 ebegODXHmKa2xjVmN+RG3XmMvncy9Vs5/5oYUI5k9n/ilGtvSvheFdD2XojStRa21v
	 fna2q+eb7aqVZtBZFZYMFZpl5FEjYAXz3WvXxfI81/tVAHL0f5SWKpH8Ue7kQk//l3
	 zT0JTZjsQZJYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E84C44529
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178463391371.23764.12441812183923221252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bda828d189c09d2f5607e631bece0d6c73fbb0ca80b1b49cf4fb2fe4274f3c3
Date: Tue, 21 Jul 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784633913
