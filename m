Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D26037A496
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789455634; cv=none; b=pbe9DX4Dy+MCkaXEClFQxOpgGNzFMnTGKmXPGR4AByQLN+OTLF2bguftqDEoe6xxKRnNaeG9lVTJ987bo7R6WXnnoNhPw6/GVRtAv/F4LCO8JPH0aNwxbhmTm3Jr2TkroSwv2jkJgYsOgBxoOPl0IVafOVp2NNHMlBZszHIUu+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789455634; c=relaxed/simple;
	bh=EFdmE3TL5nfFuH84C34n1m3+4EsK+v6QVTtjMFjqZDk=;
	h=To:Subject:From:Message-Id:Date; b=DaL+ncYZdK2oVR4gZd1XqrbQoowqyOcsSzDPoFgCTrDUzmaNnn3+Ee88O2VGofW8jnzmmBEqzu5if25+4XXFolywqfFMgaFV7yvYs+QNPau3u1Dd73cy1gvYH2xwQ/ocxJCZ9/Tkcb42HZ0pXK7E2fQ3jzYr+FN9he/DIsbGWKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLLJlxJH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLLJlxJH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCBE2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789455633;
	bh=EFdmE3TL5nfFuH84C34n1m3+4EsK+v6QVTtjMFjqZDk=;
	h=To:Subject:From:Date:From;
	b=XLLJlxJHliWmOkGyX2JxazHet6ogjoc8lMt9iY/4EQO6eHaykjLOPOJ2sYpQEyyet
	 AsysaCfoOp9C9gCYktmkq6SJ8MQplYILIOcq9TOQAsvGRqMAAFid+Kk96hZDbYSgqG
	 V8uRNtAOWdSd05YatxbYxcF8RfmpLNVMlzvWkeuYDd4tLWRWaZwSImzVOooZG1cAG1
	 SmxP+GBaKA6jLtzUOIaqvqX/dVGZK0A0LKRjjcbt4AUBl5io44Ow4JJNHucTv49Sam
	 2A8yVkSzJ2I5bU07RAhHKKoUfSSkis705fbbdLcbjMp30ZOC5c9jPZRGXUsw8t1lYk
	 vIea3zIlziJOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E78C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945563368.15615.12223491382516438317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca91609821ae4f484582db7a0db270f29fae4e002ca8c5b4af7c5394f2f79da9
Date: Tue, 15 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789455633
