Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624DB3101CE
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779660154; cv=none; b=tTV8M+H4fwMhSEojjJaFTXWDB1f2bfXqQFs6GNXxg9/cqtZ1wxoFyC8o7mkGDxLOXRY+X7WP4XvjVDvrUhMxJs/kCA26H2R7xOb4GfTih65ncTplkYOsGGCk69ylalKnO7myffAOhANN5d0vlcU0yDyqp0fHBddaA2bSEiNtLzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779660154; c=relaxed/simple;
	bh=jUbP8WvzMtnrFnQ96QlLhP7YeMUVUh8BeqEgBrlPbEE=;
	h=To:Subject:From:Message-Id:Date; b=gyQ83HkkV5OMoS9NWlzUafFKFuxF+TUfDavqvZEmZHg7aYjjKPN66vQGxxK5aYx7AuX0oMUCZoovwnTxYv/6VDt855g6/0LL5gHvYxBzk4OQ6Z+p3U51TbCLF7hMC1pcTxpGHXhiYYdGD4pQ/njCSOLG30GRCVyJMedCo4TJuPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hha/2ENZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hha/2ENZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6A2C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779660153;
	bh=jUbP8WvzMtnrFnQ96QlLhP7YeMUVUh8BeqEgBrlPbEE=;
	h=To:Subject:From:Date:From;
	b=hha/2ENZnuqJi9pb+dmSECJbIv+7f94IiGmIyD2uA31or6PqNOOKjcuKCSVQyKKfP
	 afv782hV04giPu3NirG/nF68XnbSjN4XrWKV9b8uLr8350XthOFl8A7XIhZ2R/y7OO
	 ge5l+emF/8CHDXTxa4ut3PHU1qh8vglNhRIVllU7/sIK6Uj23eMsIP407Was0CPrjQ
	 QyAM6qn/C6oRQrPCO7kul4ANeF00jrrPfKEZ2LrSHKFMqPT385iMUzaYujhFv2lMS4
	 1wFAnhxbRa8mnFouYqTgmbD1jglLRZFVas9BC0Y/h6/GmM8smbkkRC5mHUmuse1VRG
	 6ys/bJ8KenXhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4B3CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966015368.8075.3803497543690262939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8eac447467a82833523a4a4c6235c95e9b7e1e8d322fe682b54bbe1f25b1ec8
Date: Sun, 24 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779660153
