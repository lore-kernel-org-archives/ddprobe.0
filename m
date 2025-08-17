Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DDEB665
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755391194; cv=none; b=l/Kr5UL81B4ojYoExfO2erOvFzGvPeGPlm/rvESDlfq2vC7j7oWri/lw39ZXUsSlF5CVw1E8wt+CFoMRsMpodAwAJBIcB6NX9B+RAWe2qQgpTt2EK4AJJS4ZdEEHT7TR0b2bJHiRKS3QWNVdiMSe1yCZPbLtP+urBGzMsDJjjnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755391194; c=relaxed/simple;
	bh=sscWXZ1YcB3fYFox7aE+ZIaV1dx9gO3QNA6i+n4Lipg=;
	h=To:Subject:From:Message-Id:Date; b=YPv/i2IjYikIrw2g+jyC4SSr9ILgQxP9Dr2l+qvfUm6onJ3CA6h1lvBpxurHAMw59/cWChWAXaBZCKI+2KdvMxBIB3diKfwLuUEccuGqsE4GgkgPAKmroH7r7ZtnXyhsC3ZA0ig3GNovVJhB2YkezNNQ37/8E/MZHdRcrqgt658=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIiQ3DaB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIiQ3DaB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58B1C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755391193;
	bh=sscWXZ1YcB3fYFox7aE+ZIaV1dx9gO3QNA6i+n4Lipg=;
	h=To:Subject:From:Date:From;
	b=pIiQ3DaBMzMOaoRKyDLN1N1Z8YmWlwQidvATOFypfw09H/WmBqIZuxCtBckGF+Ao3
	 96eeOoQZismW62XEBQn95lGny8oqXwhCbes2U/lmbWOeNPKZUg+5SZalW8VVgJQ84z
	 Pk2Er8KgwuDwYvfr1BildPv+9yWyb+IQZkD+QvYsD9sUTXhqnm7wFx8tNmcDo2jyLj
	 mo3P8ifmx9jUINYoqWkhQpIolodDNlDTGqExozFPXMY9lmWuADHhwYvw6ZItl8Rs6J
	 pRSGr5LUOCYywPn+si4qD7TmHGTZybGLMabi/dR3EhuVXy7FG/sE5R8RZMS+B/fox8
	 1JCCdiUqfNs8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93224CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539119358.25415.5013339310286625782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be4240d3d598eb2e2c266d381c5313007703e2ad109af5c366b5a9aeed16164
Date: Sun, 17 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755391193
