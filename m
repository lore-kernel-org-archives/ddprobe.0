Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7478C2EDD62
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770839694; cv=none; b=RdPSbVhoP29pqnosstUAUPaNBzeQpqPpgS1j/i2F4j5LlFzje3m3vmQl9sFYsy2Ca4MUrNeLvyN3a2Tgw5bcIGRhBLRHtd/cqFNakIX1GrLqeGyCuef0RD2gU3vk50DNwhbJ9lGcGLHLpp2JtFnjd3KdGrfsjooFGMdmv2wNavU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770839694; c=relaxed/simple;
	bh=YFrqs4cverTZ4TXjhuXLm7Cwg9cIsfGUT1VZ2w40Gu0=;
	h=To:Subject:From:Message-Id:Date; b=ezcSGM8XU0Ra2OqL2HehfE/qUHQ9IxR6gjTr6Bad9pwakdRfQevKK4ATEY2wI8e+5LGX006S8QbJRQZQcNI2zvJzdBfYpEjrzf1BMxfdGjiymjgeZ5cxgg/2/Lo9HWAwYn6H6nmJ1jp55cbPtHPh0mCHDVoblZ9fB+bBUmzPMgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mdWIX6AR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mdWIX6AR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00FFEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770839694;
	bh=YFrqs4cverTZ4TXjhuXLm7Cwg9cIsfGUT1VZ2w40Gu0=;
	h=To:Subject:From:Date:From;
	b=mdWIX6ARqQhSQJK8b6cb9/A6OT+jvGVY+jMTD4JEbi6ZkH/YNcTOuLztkns/TOK76
	 QpcERUOtkas+/6oLbIDQe8OZyma9V159lwoGUDm/vZME5wetSRDo4rqWyggQBNIHwP
	 fRH+5gt/TO3ei3MbO9fEkGmzjVOBJtGkwbiysTSdbOzMzhJxZfL2QgWaDHCIZwUYCn
	 WLEJuojXItv1A622bnf9uiLowcanA57eAhYGlO8a7v4jl5lQyooOB0bt+q8KWMfXYY
	 Z1YaTaX7KlJOWc6HOWVy2VBwak+NezdGFHTrKcIlNX0Zmtt7W/o2iNCpXHCmIR4NmF
	 RyHDbf6FrEZeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB98ECD6E0
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177083969378.28340.14164149291541804269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be99b1b4e1dab305b48c02c4c5c530a34ad78c460541311a5746b9e815a2677c
Date: Wed, 11 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770839693
