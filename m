Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D116D1BC
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706623697; cv=none; b=X0DeBhYcct/aGe0Ae9Qvqd7DoX64SDaRk5W3bC383D++eNL/Q1mebEeIO9YDSNdmG0h1ruavAjLnkw77+hJL6I7eWa4VBXU18FHNNY/EJuHGZ82b4lPmEvV2sS0PvcJfz2PaN1MtQa1rDzAIeEL63ME7pYc+KCwV4IfiISNBUOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706623697; c=relaxed/simple;
	bh=fL3aOFjE+yAkxcdO9H6FeYDo2Ne+WDaXS4wJ9tFlgog=;
	h=To:Subject:From:Message-Id:Date; b=Ks8EATEmpYtzAL9ZCOK0KU+a2C3tcnFIv78Nj8Eehm43MejHT32Vb9iJj63V6TGjZobJZQF4/2XfL5i93uvQf4w3KavycKt8zXLPP1PiwnAlAK+rSQ3Yn0Zd5H1tcZeN1PAJ2/8P4GGESOdlmAJwu4ak2tqNL9xPgmEiAc2gEpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JE4IUZ1K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JE4IUZ1K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8748EC43390
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706623696;
	bh=fL3aOFjE+yAkxcdO9H6FeYDo2Ne+WDaXS4wJ9tFlgog=;
	h=To:Subject:From:Date:From;
	b=JE4IUZ1KKMlNnav8R52a23VTWgxzLkZg/1M47ZzzHfP1WdPNwp8+ztPo2LdLu3YKU
	 TvoXn+7TXv2ScItjxDubJzcB9loMz4XE2SIGG+jhcc3gXoj6bj9QUPmZdkzY6vj0ag
	 S+vQnMyFdX9h8DMTK5nSLCABkGo5a19GJzzVqwgw9PK13yWfAJ6HS9+/eXFXyxJW7k
	 jmBURRWV2DFDIT9OCB+GVsyvbX3FA9u/j4MdS7opemrelJ9aIl/5THy/bx2qjbKIuF
	 JQpSBX5H1bWeD5cB/ATwKwhIUGgSvAA/dvm9F95Z7n3wwINQbEIqGFSYo7A10ovzIf
	 UlNFgve5RGPvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 673A9C48285
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 14:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170662369641.31865.17580031779038442988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27bd2cfe610501ec30ae7136a9ba378b8d74eb9b6cae2dbd6946073d23137a1
Date: Tue, 30 Jan 2024 14:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706623696
