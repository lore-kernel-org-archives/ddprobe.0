Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CBE34D386
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762619394; cv=none; b=hGkkdr0hL9F70kMIDvaxxhxTabCydOx28JqHwdSa2nv/UA5csAN0LTSeeMa7fxCl0UkNW3L4Vd9uEG8ix5T6Y6raUQQQE9eYb6WiMZQnE3ke7s2dWgCWan32cqvwaGSSpNB0wrPV+JZGOYwZ7hZHU02oothyqNWdmVa2x/Kmt88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762619394; c=relaxed/simple;
	bh=PFtUdkUzWgi9SgxeR1lJcjd/OhBJxwzqz9tfI+rl9SI=;
	h=To:Subject:From:Message-Id:Date; b=kv9ibKVHwm5/nYagsbUVgogACmbbULZQSD2eTNS3+NYSkxKEJ9J2iDOFa24ZxSHtugG4Jrp3x/23Wu5Y9Fe4K3C1zKGVRTpe8lEmnjMjv9r5JYbCDnu1qHJ+6TK4Md4mS62q8pg0Ir/C/prThbXlNuJwcZ8gCDfsr9LTsB2TNy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+3hMc4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+3hMc4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0891C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762619393;
	bh=PFtUdkUzWgi9SgxeR1lJcjd/OhBJxwzqz9tfI+rl9SI=;
	h=To:Subject:From:Date:From;
	b=E+3hMc4Oam+LFBvI2i8ooyg0uawdU3rAKv2i6aj5MrUcqVtkD+l3dLnyh8kt6qbag
	 bgSe4Ei3a4YulQIzbsRiCa3bIyuY+I6NIXcw19xAAD8OogImxjnaAPvFXwbPWLDZg4
	 5HLlMwB4wprjLEFt14kdcAL6aA04tcotoa1fH5aZsawp2W83Qnk4HQbcXsXWrYrD34
	 il5BWcbcA2fV9AijsYvYusDq81UmzUKqmec6AVb4dbQVXbGUIz/3afttsDWLC6XEge
	 hYOpE1AiUVUH5GIONxxSFHmd2CrotG9Jej4eCcVtLa+OlGrSDwKp+iDqZ4QigzrEp0
	 lhUXkCf7on6HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F1CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176261939358.27787.7075940375840514186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0f0bbf04d00b65c3a3dcc411e55949f13f6d73055695e82e62e7c9964783c31
Date: Sat, 08 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762619393
