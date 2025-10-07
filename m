Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263C2226D14
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759822194; cv=none; b=gUlfu+t5Va76OVjrqwIyWgaiehafYlipdRRDc9eJ9G08PYyJlDgsOMEckoSW6Ms+H4M/3y/1irZdHLUpyFi6G80qcZdFR8ata7RX+j0Z5J9Aojx27ercuzm2KI8srwRSZKhOQVDU0c1NYqkEf9basXQWZCrDH+qBp5qFtoJTifI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759822194; c=relaxed/simple;
	bh=yDov0wS4ss/INkjV8rJ77bSTHKwMuElAN8eM2U6MrEE=;
	h=To:Subject:From:Message-Id:Date; b=HZ7R/PbtWz11Jx9OFjiamJOMT7lVCkKvTW+C1NuvY36ANSBXyGYJvjghiaSQoQSUZT9kjY1oq/Bg6guMm5U9XgoWD//B4SIXJk5atzcD8gdAPFg2nROoQ4A18xjc7YIVQqizRQamMh3DE5qGk7i1+U5UQvP69M4ti/q3J15Apo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vl3BgjN1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vl3BgjN1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C19C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759822193;
	bh=yDov0wS4ss/INkjV8rJ77bSTHKwMuElAN8eM2U6MrEE=;
	h=To:Subject:From:Date:From;
	b=Vl3BgjN1lb2i4A3YtlrYhshu+g+Zzj3yJRiTLy/8NvUyob1zqo/O9JG9UuQ9zg0Yw
	 E1vq1FXT8pyaPfDGU28rYosRj0laVayZUQutBRFzUI0UCi4KtuCOYzBG4iKcJJGKjd
	 q+yb5cN6ShF6l+JBv8065FliBL7/jRd8vQoOQ8e4z38sJb1hXPMODZdpu71UxQJTo5
	 YGi/Vs1e/qEX1b7vdwmMDqpiMcR4OVVcqN4EVVyn08/NLgCOI0VrYN1ppsCurRiiUI
	 /x8r7g6VbaIiwosDn55S08omdmTohW9dq17tdpiu/YU1nQksAb/EpW8QIpATXLFDY+
	 B8LInw7HFM7VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4EECCD184
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175982219357.9753.14993272839368826116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def9c2f7757f5f0e373dd83cc7722ae3354e713171dbd30f9e5a7098c934f9a4
Date: Tue, 07 Oct 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759822193
