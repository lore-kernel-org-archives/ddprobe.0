Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6F712A1B2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763457114; cv=none; b=aBBbteG7x9I3Rbs7NjLCradGMHCHufS79ZbdZywFu7g8P0TiXNxgPjVFR9m5xYJ5L3ahiJSHL7rW6xzbi8vBhYfKFHOOWMz+89qbiqsDpLti/z1FwASPnSpEi22C/f4YmYvNbRCCsqtEKzyu0ZVYEXAAstLrguRYYBZjNfFwKdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763457114; c=relaxed/simple;
	bh=wx99nkb0RPWVfo8ljY7vWE9gGvjJF6JQH5RLrZ3i9nw=;
	h=To:Subject:From:Message-Id:Date; b=ABgeqnHTUH+sKBZwjjizH9AgQyhySE/GTEbXzGVj0LeRxr1wBw3Stzg6H82dQlNUmqHeDrIt0F9UGt3Y4FlHba2QFS+xz9F0k9HaN0RCe6g/cld9uQR18J+5dp8h0YhV9cr+xeYnmQOep1UsL5ASR0lUlxekf/nrGhVHEhLGQso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irP8X4OG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irP8X4OG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8B02C2BC86
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763457113;
	bh=wx99nkb0RPWVfo8ljY7vWE9gGvjJF6JQH5RLrZ3i9nw=;
	h=To:Subject:From:Date:From;
	b=irP8X4OGbyPGUAiX3YfcezD6gbroqcFHq1OmgXiMBTkvmfPKIc3WRpyKfu8KRr4dU
	 DNSwj6Gx1eLU3HH3TsHrlHjzmCmZy0AuOqcy1U3P4357i0iikMNJrjm/IyvfuaupaL
	 9raTFWl07AR38mwBewMQkRMmWfdG47PCWTRdBCKAvGPWA6iz0shj5BDH0pLYKFv4QE
	 4mAcYq3J0uV+T04Q51RbyV+v2HRD9fuZZ0iBSJw/PaiOD8OPpgtbxGXeP6z0I3M3xK
	 1f6IJXjXtEPw9L9emhi33mIQ4LS8tBmkPvgntmg+ApmKFRJwfhzdugXtAktm5/lHnF
	 wCWOOBPKesiTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90085CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 09:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345711358.31265.6816127663115164878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c8db08deafb095a8f0341f192d3fb5d466e3107048e1dab30fb00e8e08d241f
Date: Tue, 18 Nov 2025 09:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763457113
