Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5336939AC3
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720904423; cv=none; b=TwuuCHhvd2B9A8hzOLO1XdIegBel0CyTY8pPkt5RTtNplGZABORG8z42fub8KGPROVgGyU4LoFA89RSq1IHRIFLKqjJz1BSzppKjxC+BkbIs7MtOwU6p3gapYRsr+5CTuEkq8Gkm0R4Eb5moGVGruoPWzOM8M9un815/4QE8na8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720904423; c=relaxed/simple;
	bh=bso4cCJjRxggvhjXGk7QE780Yv4GQ1RmXTQQwg6nVUM=;
	h=To:Subject:From:Message-Id:Date; b=if/7YjsbHq6cqfTe6ztuMZdCrcYwCwtpGMNcjop2s+k088aYSBSZoFCjbqroYmMG3DLA3Y/Nw8m1Rh2twsfGAcQm6mcz2ldOnJ9wAYL64K2AeKVb0mkyiWcoUDnfUWTOqzNGYg57nRmXIFgrIn1aQ/+0lGoGFYBxeBBU86YkRkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ueJeMrkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ueJeMrkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4406C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720904422;
	bh=bso4cCJjRxggvhjXGk7QE780Yv4GQ1RmXTQQwg6nVUM=;
	h=To:Subject:From:Date:From;
	b=ueJeMrkw3NrkaYWTp1S7HORBLdTsTOtWp85FOOyHtvESMu3Ri/nkm2sgWnqDsas3H
	 +LAFupLwvuwivOwRRfF2Vin1haeMUxVqUac1ljK8/axVJ1iusk+e4RR+WVx5EGV+wW
	 T1Q6XgtObM1RozFuSAOhAz6/tbkdPoS1sdqhy+c/T6U6IJcKYk2MFaJ3itdbjYttxr
	 9j+H1pCtDA7DJODfheY9RjUAWWssAp3bSVFDQGeV3vQYxyWFGJmcYYLhxCxf+PjEFZ
	 wAp5It6eddfarOZIiQ46ZBjcqVcBM17ytH6UQhQaF9oEJpV7VRumVvKnmiHrybMo0k
	 zwfWV3qn8MBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62F3C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 21:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090442278.10546.6803298968860799497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56698485a8a43d9e5db6208d0b6e2cf593d0d5a49ba0e868069e53e0caaeff19
Date: Sat, 13 Jul 2024 21:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720904422
