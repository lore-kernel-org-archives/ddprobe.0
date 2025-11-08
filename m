Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3101B281520
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762635594; cv=none; b=fgNsD152ubgM7Sl37BqhfeY406r/AGuKiDeTkPn8Cuypm8ChnHMUGJM+yvisdu7DyXld+kIb6vAYRZPqAdrzDw2rs542oA1L4A8en1dnBHUgPMZSAI+IRf4tuUCyDGc1I+dJxPe82euR4yNHZWI7jsVimSYx8XfkP0/o8BxZwaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762635594; c=relaxed/simple;
	bh=xVMBCeB5CksBKaANzWqYRZx0Jp1vGxGyZH5U2Df5oa4=;
	h=To:Subject:From:Message-Id:Date; b=KC7OcVGqUVQ/dKLJA+V00MsX9UtCucquebyM+CqOsW4c53EVIuLRf1vexDikvIzZdlMBRnErDQWleLZ1kIECLAP6/nHC7r2bXzCKGTwbGkqnMQw/FbMhdgAR/dd1I1DPaCdLIVHywz/ob1BenIgtqKv4jjRi9FHZOqX4rUh9qGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXDaBph5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXDaBph5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1260C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762635593;
	bh=xVMBCeB5CksBKaANzWqYRZx0Jp1vGxGyZH5U2Df5oa4=;
	h=To:Subject:From:Date:From;
	b=tXDaBph5v4bCfs0m0ip5tSTRwKX4E0OoTDT0l8NzCgT6H1vIzr3au58Bktl3V/L11
	 CyPCoCsXMiemPEa1qqdL7eQ9Ll7x+xUAo3GlSPt6YEfRTTsuuK0Mb4hGUUTnCMVu4T
	 dU0IgWo74i9p38DSCE+Tt4YFol2wHgmALA8VHBMizaT3dMC6JMMPk2GQIruVNcENSU
	 6DOw+jaNpfF9c4NcOfJgmXKby7TyQ4uCOlPvfqtGS8cjHVQHNzN9eZUYknB0e2dHj/
	 pj8eQkN/G8JoI8IoCza63r3HERCkkMc4NucG5+wnLpcPwSRm4PQv7+WVOxY6u+vwW6
	 1T6D4YHFfC4SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950AFCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263559357.20819.11039211827867483406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d173060d69aae60a8cb11442b15a5f8f36666e79e0f54cd83261531a6a7023
Date: Sat, 08 Nov 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762635593
