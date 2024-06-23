Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A64112E63
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719178343; cv=none; b=Gl3xPOZsy+Enr8F5j6pEiQE5FfHiknArDsahe0Tb95ZOmixIwar28R9IhUxl5TFta9RF8A4k8fZCd08+DzxUHjnxf3CXgK53MxPn/iBV4fkHjWJskiaL9BStRep5rA7Gyw+yJK9o5hkCbX3NgsgNZlTJMShkZiJ5MqWId+eO5hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719178343; c=relaxed/simple;
	bh=1oHAhwrkrSIv1Xo50XueN6aXDq3dqxe7ZvnX/uSF50U=;
	h=To:Subject:From:Message-Id:Date; b=M8w0bwhFzBeoYbSTHSwT6R9BS35Njmlv5n/CJ/eIr4yw9uYn7yrT73/R44YtCd+MHo5iqAO80CxZPRUUTFIAoBA9/naVkV+51tahp+MTRCP4ik6Q9KqonWL8iElQYcVuTLFDul0E4aFPe7ZmL+HlMJ8Hs35Gsuc+0+/esBFU51g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8EStx6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8EStx6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E595EC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719178342;
	bh=1oHAhwrkrSIv1Xo50XueN6aXDq3dqxe7ZvnX/uSF50U=;
	h=To:Subject:From:Date:From;
	b=L8EStx6cGdhSobHLD9pesSYacJLhObn2ecF/cycZJNbqw5VRH37ZgNoBeINXXy6Xb
	 KqE0Fw6CoVyvMD64fsuYBwDJKiw1Oy2aPjf3O4tyQ/zM+6OrLRQe7aAM+torhWPnv4
	 ckTFFotpbsg3hl55koHtnON9HTor16BEixOK7JuE7THKDLqvHNCRhI4KrYkFvZLzdU
	 m3AbNsF7U75sRBzTBSUuXtEWYijKnCxRL6EqMA/i6tpWpf+tx6yh6H6auKs8ix+5Jg
	 N0R1JwyFePd5YFDHnh7oXpEv240+uXkBJMrpUmzlOvgfeTEROJ3Fh3kpd1pgd0aiwN
	 StUPCj5CMtq2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE010C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917834280.30330.2137811738400210593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a257557af9e0dbc0ea21cb28cf68f13f62f985ab88e86e559c2b807dd76fbc76
Date: Sun, 23 Jun 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719178342
