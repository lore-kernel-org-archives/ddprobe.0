Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 587954E2F23
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791399634; cv=none; b=DiZyj75P+OdnZdmx41mmAGEOIT0s0PES/RaJAEN+O2iwuQmcOctaQLLbFNfyVQyHFgm4RiOnx3OcIAB3BPP64lbE07AQKbALbjdaq6YzJtawFJzuZN0citzLKTULwceD9ELg4obyrAD2W2fuHFWN3JDIX4sHV8tsh8Ry337N1VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791399634; c=relaxed/simple;
	bh=9zFx21izKTSylyVT0l500gYSpIANELhY9sg3W2g3dVE=;
	h=To:Subject:From:Message-Id:Date; b=A9WXBv9/NQNRbQWTAScFf1DxEspYbEEVPZyOJvFF6Vek111nT68LjR+HTUBVIeu6uAE1OyGKXMPobmgII8QgbPXFQWS9DNiudfQcBmblN5VXtL8osl/37rlhoCmsSK0icDrftoxZD0swmVFeb1qFs89E8p7IrD7t83/r2TWmFEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBlJatvb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBlJatvb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0165C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791399633;
	bh=9zFx21izKTSylyVT0l500gYSpIANELhY9sg3W2g3dVE=;
	h=To:Subject:From:Date:From;
	b=MBlJatvbsMO7rj8Il6TM6Z3H8AhZo2OM8CN31L3dHNs9Ku01RyW7u6de5PAT+/1GM
	 owXZBt3dmXWsJbQHG5RyVWtacIMC9BpFB5GBQEd8wvp1SUUeHQ3GrHOXs/V5RQcg5f
	 gWodBPh+ke0K2o/j4cOmTA9oQzA3M/QUWKiqB3SjQW3jKGHu+j/1Iz/ljI7QTYgoHn
	 l1p0iKBLCxJ9p07gVOWzEMZ0OaTzDVQ8uF0xLeEkp048OC0q3B6ZpiJ7jwy9Y22BBJ
	 42XjGWNu+D64UBwxLI1Ypwd3onEhy0Y80M90I1fUAE2gDIOBEt0izFYEt8OKV8gvpG
	 BmXP6lyryYWhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB60CCA5FFF
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179139963369.12987.12859739127152762665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ff9dbe8b64e377d5c754c1041db1c5da62da13c18a0eecaa4b40effbf59381e
Date: Wed, 07 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791399633
