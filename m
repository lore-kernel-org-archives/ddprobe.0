Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019FFF9C0
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773017094; cv=none; b=pJfcYgvhrae6EoOQ0pYBU3toAqp3WlnUiG5L6To0Wz6xrAoxRseDXhhzU0DKbi7MHph/8iAmz7u2pMqErMg3tTjjT23UAo4A3Y467zVVbHX6dIhfgqPsS8UYuRFvUolHvDemGuglIJDO0oXxDPLMVfr8qwUCJ6D5AYbS46PZ6EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773017094; c=relaxed/simple;
	bh=cB6zT3+A802W2FPP2yHvoPjUzITbwxoSVztARMeLlrw=;
	h=To:Subject:From:Message-Id:Date; b=InV/Ty6S3YXBlbdhkREXaFdMjNJVJTJW8BCYHHaFo3iq5xvQfvMCBlzGOcJBls+oa+3b8UgQWSxMp+DCe9eWH/3pxkNMqrGmDKVAfO2wSe4YQBXhxmCQpkLBlLTxqxiMyqzHJnlSr33JMMv6v3BC3Nrv4hRfMHXwt53LvDFyK4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWrpeEKi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWrpeEKi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09EFC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773017093;
	bh=cB6zT3+A802W2FPP2yHvoPjUzITbwxoSVztARMeLlrw=;
	h=To:Subject:From:Date:From;
	b=dWrpeEKi7cJfar1HWDpgw3VOigDILAImD9a7UaRYZ3WWinKuH44BKmJhYyL7VZiHO
	 g8+VAg36M8JrdveqgzdqIj5/Jh+Z1soTWYKnYA4jnnIJv5OZlVId6uj4AEZ7xFzFVF
	 EkS0rs62OSJaflcaNW3p2mU3ScGUOn5NvLXDWkV3Hjw5IUTPhKrPf/+0dYDAZ/nprj
	 WjviV4jHnhI7Lj1z0HdPDSlHCCVKzVWarE4wtkfN71gjJoguwy8ZS60rl0DyJaSN+T
	 sMK2AUsiVZ7oa7nv/OAzO+Mhsty8F9rB0Pg+6uS8wGcKcSmaP8oi1+sdUnxbe5BIyx
	 er8PdbdSPRcMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4E5EA854A
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301709357.17424.815797767291933142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 775741939e5780d25769db5776ec1720116a4f03a6bfaeaa14ea2f427d41eb70
Date: Mon, 09 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773017093
