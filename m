Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5C92D738A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781840194; cv=none; b=iCfY+cfHQDvjEeDy0jvBr2C9JE8A7jCftBe50TjHvLkcHQryXhnxUk79UrRAmXrtq1TycQPxKlN/pYU/Af8RFigGaZ/4WIGNFA7O3kJTmkEq2MjFWCIq397g5khqAOWcT8b8+erLEDaEBwUh9ajCxxm/xFjDkmEGkZXkJ7ytCr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781840194; c=relaxed/simple;
	bh=HgRM8a3ZgRSqqj9GMOoPOg15p7MAYRS1pX+/VcS49W4=;
	h=To:Subject:From:Message-Id:Date; b=C224G18suAHf3dIVmdQuNQDfPk9y3W1ipsl6m/jKA68KZNS7dwxfQPgprIJC+2jlbuE6kOV//r62SR7FRiVNGETJCdGPCe/5v3ufkVskKYmahxotax/JKuvLTMxbPqzUnc7dYznXdGi+u8V6NwW/Wee0dksvPPxwuXMM/bt4GAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KbzpoGX0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KbzpoGX0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE75C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781840193;
	bh=HgRM8a3ZgRSqqj9GMOoPOg15p7MAYRS1pX+/VcS49W4=;
	h=To:Subject:From:Date:From;
	b=KbzpoGX0Yj7ZVwgGTFv6GaQye7gtB5ZKPAO9DbZzXyzW5G++Pmg4w2Ux9KiqRR7Qv
	 46iwbjd7+ptD1QfR2g4OhhMvfyM9FBDdjC/QRcJfLCGU2CYe49e5jpInqxVbGJjcIf
	 bywqvQmIY43bQv8GFWG5JrgJTAr/kNpD2jH7c4G57dq3+pvnRNR2cWGkVhZG61BjW7
	 Fbio6Q+wsvV9NiY7HyHXDcUxaQEySY7enPrRYF7sEjTr7MdUcsimqls1RJfLLnqY3q
	 zK4pePzVVxajro2I5aZw1MwbOJRojpsdWWA5nvbQFnF9IeqODVMQEOuSZ4AQES+DAQ
	 aEPpI9QOtLdQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA32CD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 03:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178184019369.4326.10651027016233457977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94d6ad6539cdcbd35af0be9e3b5f55ef857fff0b6ef5b9b344363c5d6e0ced78
Date: Fri, 19 Jun 2026 03:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781840193
