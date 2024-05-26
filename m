Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115BF130AFD
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716753263; cv=none; b=oKuh30bezpaZqBwGp7TY1T1+B6xR5rGuRhRFaxP5PEegaHbeB97AZJhp1IQwoYcDzP/dOC/l2usD9K+zgmJSEEqFCXXGtzwSSMeTUKbszMEUQbOWwjtzxRFJw8A3OyvmrFommdIYACzKhGifzRLqNtGTPrcFQQ3G5p9kumhrSec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716753263; c=relaxed/simple;
	bh=zpBdPXn18HYX8y9Y/Fk2JQpcUOGHPOVnI6zGQX4inc8=;
	h=To:Subject:From:Message-Id:Date; b=a7Yqn3bpAO9cqajcqOPIsMu8ubxirxDpCJ78OfYZjA5vC0E6OkP4C/Pf9TwNZONZRBCdpSjzLmdokRv2/3y+pZaHh+a4fg6S7iCohSIcmNCfTF+ONbdF6jPon7vY9j9F0gcPmpJlT3tNK2xmiUasVp70aFI88EbePqdKU49cgDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lypO1bU0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lypO1bU0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5BB5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716753262;
	bh=zpBdPXn18HYX8y9Y/Fk2JQpcUOGHPOVnI6zGQX4inc8=;
	h=To:Subject:From:Date:From;
	b=lypO1bU0EckKuwLATpfdAHFyIWXeiPDGBTRZL9TAax9GEvmMtsE9FLZ2HFWGAWmI+
	 5i9GzZzeLJA9RYclwVg5z6hdt2DH/A3CuF5gLkU51tgQES8l0OwKTpjQN0IpB1BAqx
	 pklJmEqXNfusz9R/Wyaui9VKScT0DeKAoSkafU0magILbiE5DvnzA9wXT+dGUa5yDB
	 firDJitqSCKITUwQaAKVM4Czibft+M/IRzNNarEzQJma/GR938dUTIGmOTnnxiTrrU
	 jANLXCHJE2Gep8QY1NSmAOv5NAptj7/a6JsfBcWrK9lDVTi8MfnEBdBByUHcXlu1lH
	 NXwuTGA/VsIew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1B7EC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 19:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675326281.22771.13609373952896440555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65dcb70b13a8db5d5ba27d39b90b6c8d5c74793406b76b6f4ab3de744f81c4f2
Date: Sun, 26 May 2024 19:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716753262
