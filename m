Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F37A171068
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718083103; cv=none; b=Y5JHZ+GltfUzl3Ua8Sg3Y4T3fm7h6kG692cWI+PDW5ozents0E/2nMITtobBxCOgCoN+sMAph3OqyPVgGUN/oZeRGATZn+Y8Z5/jdR11/dE/7lH8i6u3tutDEQYF/fnC7w7kgw2nBXiyVjBqc/o5fS5r07O/bRtV5RqtGSCA+vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718083103; c=relaxed/simple;
	bh=ZPVsHUNtsYxSXzJwKw5L1VBrKFsKK0vEHO8dBQKbSDs=;
	h=To:Subject:From:Message-Id:Date; b=SjYEhbx8D157Z66CHypoDyqECyCEJNQXPYO9epw4nNAXVEEA+v8p7sscDmhy6aJGzn3vEpHxXikaZ/ol95yhP8DMpsanNLb50cBw7YboBSX00zkI5UA9Ipv1rlstjb2vyYCpBqVRNyBaHOuKUs5ay8cgmiKoJxEaFbm889bTh8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oq8/zHzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oq8/zHzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1656C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718083103;
	bh=ZPVsHUNtsYxSXzJwKw5L1VBrKFsKK0vEHO8dBQKbSDs=;
	h=To:Subject:From:Date:From;
	b=oq8/zHzndbet81T1H05l85ilmIDcNsj0p+pdz2Tota0zf37hss+BS1hW+EvsZ/m8B
	 LGr0abUzv8lHUVZf08W6TEi/FSyH+sHlGcMW3fGTTnXCGdYC5MXk8VMz5tDbBVXPXX
	 p36XnB5tidqDn886+S4SmGdPBgQlNx7dPTEVT9z//PK5UXxzH928asuBw4SgxKICTp
	 FJYLQhCYKxFogrcC/TOKUlIYkrkpf2V7Jd8s8fEi+WKjv+tAtTd2bLDAZKUR7kGz7g
	 ik/cPDCS7lFpjHff2f6qMMuC9lDjp2deD6EYsZaxUQuMrgAkCeEa2tpsrYproU/TY7
	 WPsZ4mOedGvmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2B37C27C5E
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 05:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808310283.29894.1666056754076674864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6681e672d4a009a479b9e632165b7aec9efcc1a07f45eaba79cb1b5c88039ae8
Date: Tue, 11 Jun 2024 05:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718083102
