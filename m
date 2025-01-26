Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2103D192D86
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737909954; cv=none; b=tCRVChtLlmrNnpaXdPXlrSbGcIPYI3S+/nphMgeUVpEFqnU5koB5PA1HqYe50RSWW9bdD+Fe+ywJ/t8aHDGt9Q9UsTUs7BKOXSI51QA06uTu0nDN0HZ+srMkXTDkzhLtUyc9dNGqTaipnkKfwlHmPbSfXu0jde98WGhshlh+B8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737909954; c=relaxed/simple;
	bh=s1x75xQuaBDxbQpkSskWFslwYVLGILX4ivbwwE3FasI=;
	h=To:Subject:From:Message-Id:Date; b=OF3zusBeqWrAqM09HWyDeRZW1g95pSLlENgqMw2qVhly9uNPw612nyrwkpnxvsqqiBxLxw3ukL+ujzmfGiNKFXmYScPiLaqnxHCecpLexSYpa4R5iSDKn6808DPati7dV5nsAIG0PRmfvPJ7JWxJP90ZadZqxxBLNwQDLzNYBJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l0DD/PiM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l0DD/PiM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF42C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737909953;
	bh=s1x75xQuaBDxbQpkSskWFslwYVLGILX4ivbwwE3FasI=;
	h=To:Subject:From:Date:From;
	b=l0DD/PiM4MS1ByhvbyoauTRO8lSYbYcRphYKnuekb2UudnYXPFpxWSWOpNRYYX/Uv
	 X2iLdvOlohA6VLzfAWdHiXD3757RXJHepkk9LpLZRuKeTfa1LwNbxIfIhkWSa9u3Ox
	 L9d7dOeIsl47xRNyTzEUPafETreaq5P6vu+RF6b2LkoA4322UOLsLflKIAV+oSdCLT
	 IdwLHRq510RTwObz7a9EfSnZ/wIswlgjxqFZYOKvf5Z6w7OaBnbMmgwyd7DJoh9PCG
	 ONaedNArp5w1nO6ci7K/W370QjjurfXiAOO+QOuivXLEXneYfM563bhqqf1sVCFw8k
	 cHkRgosEMr6eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91676C0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173790995358.3537.1996084893417500745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafd704ae51c79ca09445140f62ba3ba0d700f35664cdb9cc644bab57914b721
Date: Sun, 26 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737909953
