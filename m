Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9D7413238
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778682034; cv=none; b=F0eJWvoiHcPamDC8yuo+NJ0UQ7IZSwcaAP5FOqt/O2CHhmC7yyve+c+MDK1BAgUJJqALrBr26X0kAK/GlxL3u1aGZHZdRpfo9IWErSH3l6BBe6oIHyr6dP2J8wjHnG+SANC61sajmOAqW/mRybEvO3sbE1BRB+mwdHwx1wgJA3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778682034; c=relaxed/simple;
	bh=OBM+R7baPqSrRrrQcKYvfjG5TlVgjB8cgDDQzlQ3N5U=;
	h=To:Subject:From:Message-Id:Date; b=HgfOzrSwXvoCPsaoLFFVy1QEkrTYj9g+z1W84kGd/GXiyF9gIixO9YhAntuCpUXCP9G2cQ7k7CjLWmOOzUCSx+mXvaAtVTO20oDDJ5D292SrHJnzumElAns+PBy9R3DtCAix6ipy+tP7n7GXZefsdcDbveHVHPzH5zNw3zi7N6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WcWz/CeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WcWz/CeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C030AC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778682033;
	bh=OBM+R7baPqSrRrrQcKYvfjG5TlVgjB8cgDDQzlQ3N5U=;
	h=To:Subject:From:Date:From;
	b=WcWz/CeJbnVf9oBizzaOD/9f2eqQFQOyvd6CcbFGSL83Whm0qGqn/JhYhHN5yLI3q
	 e9xflr0pUD8AoeE6DvSKKrecd18YGZhF5y2+Keg2Y2FtsCPuUYmkgrsZHfPFgainkk
	 2S3Erj2SiDLmbJ/DKXC7TrJw3l4MrH9bskUluOQpX/JCMSc5R9h8NtdHrW+fP2sVAJ
	 WCccPhqUPLUC4OOHAHlnVEUYT0n1rO6dhpQ+JxrwC1QeJhPYHcRZ0NApkdQ0gE5bgO
	 w4u+z6UPMv23m0QdWVFPTZeGJQSbbSnnSAurC8hto6LaLKp2st11JFNB5SfefaueR5
	 5u7HKsNFspGWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC65CD4F21
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868203369.7971.6089005185722882387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b611051f2ce5269396be15432507e78fa8dae24b8c810a78f3c5858f3a8806d
Date: Wed, 13 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778682033
