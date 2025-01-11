Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FB433FD
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736585154; cv=none; b=E9KZ0k2TCJsBCoVXXQO2fW/U6rg0Bm2RnowrSq0IaZ1jeEg4SdEQF+rWJ/YEaWwIGUF13d/YYWNzpyXvnzUXre58YKAfJ83fAl/PRv3XCT03mxqqUaLSd0A55zWE7QFFztTreGlsRnDp8fqnDmr9O6dbE43G1Zc1jmVoEJk8TUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736585154; c=relaxed/simple;
	bh=D//1PjETm9I6xobffu7XkTMRqvnfvZEQEdKj+M+Z0Ew=;
	h=To:Subject:From:Message-Id:Date; b=WTolnOa1eD8TKEL+c0f9iVjpDDboS36CX1cipka3T66yWmHxuqydGg0koJdPHza/FdXFCaYeFEstFCUJ7+Ee6EhqhC7kys2xkKSqr0Wvm+BwLJmrVKeyHCxydzsLt8MrjaJ75sY4eB8y4dqpx7YFFcKrCX47jLGLyjqqKNb/Zno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fTBit9Ex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fTBit9Ex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B206EC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736585153;
	bh=D//1PjETm9I6xobffu7XkTMRqvnfvZEQEdKj+M+Z0Ew=;
	h=To:Subject:From:Date:From;
	b=fTBit9Ex/DizgGosTUBQYdYe7KuYog7B3GLETXbdTG7poD0k1a+XQa1tlQIZnIh8Q
	 IuIf4dZZn9Y78mGpB63kO/32rz9+EpdcXyFa7ggGEweB/uyucZKycMA810bBkdTyIk
	 iHC9GYWbq2ZRp+rxloAEBuTH91OzcQJXSONoEhVpcAcJkmCZDSt6v4V2cRWw68Q2Un
	 AUOZXo5td/ISZNwp5pC96pVAvw34Tu0sdA4M31xBbH+ggrBsSjG6vGjIOPX7Lya7KM
	 sZHIwwAhdqic5ugVKr/GB1i+cLCs6PJg4vex5hfCF+swq7K3vvcim12gnkILuP3vng
	 V0gayUKhq7p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBA4E7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173658515363.32028.14108725628742407376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f56040c939c836d49a34c9d73af68187ad5fed529591b62863413d2b3b392730
Date: Sat, 11 Jan 2025 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736585153
