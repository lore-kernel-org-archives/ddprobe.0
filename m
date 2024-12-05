Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0872E19DF66
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733435754; cv=none; b=qq1hTn+vKlx0QKOt7U0SXPJMs0oSHQBr4txPqh88rlTpIjzmfnRcDCSNuDepxa7T9hOBFcqaUIexPV3goz7WEOlfiK0COb7aLoG8eXmeqnIHZfbwVtlzjf1hRirVHf34eVu+hQ2wrWPGossGBl79FYQPLo9/s8HIQJq/tjHLzTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733435754; c=relaxed/simple;
	bh=yba61MLjowO0Vupuif2THORc78ufJ7KY+R7AhqcNk/4=;
	h=To:Subject:From:Message-Id:Date; b=ObrSoiKf/ETpOk3I/DqvnVORcK4jLSpzVPzHX94NuiEFlHZPKia06gXG4kVo3QRMoo2Vn94DqHGNiQ8Eiw4GIfVcaEaQMem9TzJ8Q4Vmx1hPudbjm4ZPOAhnNYAcOyiEhZG28YI4UjsXoRXGRx+6v01SdwN6CuUrEQFLTyCEwWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4ldC1Dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4ldC1Dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D091BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733435753;
	bh=yba61MLjowO0Vupuif2THORc78ufJ7KY+R7AhqcNk/4=;
	h=To:Subject:From:Date:From;
	b=r4ldC1Dx9zhcyL6BfkoOlf6lOd18G1kfUkPnBDMyuTL2unU9BnVx0V79AoAMGD5T0
	 ycIsu3GxF2UuhP6jbXspTc9DgY4eJqeWig/uxe/eTtJI0bsgXSTKMe2mwRxUOzK+Jr
	 7oOWuto76/hMkrj6epbanmmAzpSfI+CHM6HrvACN3U6m42YAWoNzPippTX6Cgv64fQ
	 ssoP3vJI5saRa9g/li+SsI6Pj9uqpCpL/jqL4ZgOHQKNXWfxzLJG8kapoupAQmQCHm
	 4Ff/Td3vuSdAVGL36u6sqd045cg5FHuLFQqyKc9csJ9ZmLZXSWyHhiCjTOlcB3BWJ6
	 XdpI06AMxrBiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5B46E7716E
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173343575368.19582.13360237505679092452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621ebaf8c9a21737cd7bb6101c784b3f78ea1f49f9b991a9903b8b5a201f3169
Date: Thu, 05 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733435753
