Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4950470823
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735416954; cv=none; b=c8s+RRPWY3hLbauIlaySvtvHyWhJ/LPbYfKiE8Q8P2f4ogG1PNthihLwunj6Dd26tpaWWvv6co1OIW3d/MKHLWLzLnabt0o54hJywtMZ3S8pU+JarN4o8S8Gy8sIIrA86qjm4wNhQxgP4hAs2EkVV2rcAj0TJ816UkMyy4S3wh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735416954; c=relaxed/simple;
	bh=qlRiRXN1/Q6SQQTsxVGYcWY34bjlTk+SgA29viPsdAs=;
	h=To:Subject:From:Message-Id:Date; b=uindQ/UggTH7lNUvzXFF6kLPOrdguIgTT/HLIwFMEnLtFltWOwAqPgx2qsg9/uLVnVLAR1sUpkmZNWbEYkTg2momKdye5gcOi1L7hpEjycHXqA2Kg5JS+T7jD4djA9apFyBbed38mTMy7NtUoOAxwSlm5ddMADLZvIXMkTcWvuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK/0EBeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK/0EBeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8587C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735416953;
	bh=qlRiRXN1/Q6SQQTsxVGYcWY34bjlTk+SgA29viPsdAs=;
	h=To:Subject:From:Date:From;
	b=oK/0EBehvUCL936KkQgjq7hkm9h3LelCeinq9N2Nbu+YMLSK30501GuTVaQIxYIBO
	 G+5q8sxtnJ9K/0GqwiSkLw3fWbGwrytVn5pr1zE/PdV3CVEuXWNUda0fKDuGuOlMM2
	 7xq2NULLTJDjd0kVD5cnIYDxiImAbJxpl4Z6AKKbRlChq5VBbON6S+M1kVoqSjKywi
	 90lSR1np62lFeiSNRl52JhuFFdtBZfqalv2BJE23HA6b/dQCy/16+5IDZVEoTVuItd
	 Ucv6qpvNnTIU7R0LEyYkKWDQGg6h5og6YTk52zfIjTX1MZpsIWXCWGI3N+jeWGTKWe
	 op1ioqbcC9WCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E3E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173541695358.4966.5743887749877830168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a209617fc0ae8b37087824e1a6416da1d0ab75eed476734b9df2c566b3da4b
Date: Sat, 28 Dec 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735416953
