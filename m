Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDD730CD9E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777979854; cv=none; b=rx+2JFe2i9raQqHwedagCfm8nKwQngcgs4UUImHTeDI3Uxc5+uLZIp9fn4/Ol5syxT+7xFlPzg49GrmzmVbrjxy+FSWa7C3aqpeFvbSDLqZHHeGO/EbxJf8U/62uJaAwjyKg+a5O9FpayKbe2NgpmmKOIqxxnufnwXdeOTJXQxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777979854; c=relaxed/simple;
	bh=QXPfOSEkNoNQPmWXK+kbUWQaZKAAJfjTtv+iu6PuRPU=;
	h=To:Subject:From:Message-Id:Date; b=Evd1MClEa4wRRKOnxIvc1BFsXbavhhSrHv3dc4mdPi17JUn3zMnkcVRy5LFG8NIRalbxPsYm1YQUNh71yAIPwbulKlCUB1UnXJVJPDbOPe+Af9laWmczH2TUpnKVmhZpkhEjYJw6Jhkmu7J95WU4yskfl/2OM2d8qCE5jX0c+FI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFss8myl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFss8myl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84F1C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777979853;
	bh=QXPfOSEkNoNQPmWXK+kbUWQaZKAAJfjTtv+iu6PuRPU=;
	h=To:Subject:From:Date:From;
	b=IFss8mylvRdoUdlW1eHBHtBepVSi7QdVVUvoI74d+MTCk+fZo++a/Y5dSCXKMJ1ss
	 QkOuKJMdXHKY0kWz4J2IHazVo7l8ZJq/MNrqZDTCWK8IHmoIcwRLHpup5EWInbthJu
	 2W/Zt0qN5kxddskK8TuTczmapRYNBUMANDCW34LMweWeWjNQW0xOkrADMFDb86sr4M
	 H9V+Nl03euV7HqJHdW07/FLe4FdWsRvN6R1n1b/+FjLOeLSYlN74jYJNYCvHfyPLMI
	 cezxXROln0CSd5ovd9S648tiQzH+ODt+Elv/U0t9GycZc2qko6W/qvuYp4YbtE5ice
	 al2v6JrlmeemQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA145FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177797985368.20371.1733799560919222853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ebac4dd845806eb38329207417533744f5c183106fc62f67769d64b82500ca6
Date: Tue, 05 May 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777979853
