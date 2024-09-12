Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242D71E51D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726136754; cv=none; b=L7+CDv+xIEeOTG1WPuM/ibAoomuhDpQZyzLcorG0tDLV4Y8PEvKgU4k8+MoURN1ZiyqQoUxXuaHMCxv84WbSRihaYvDBxtAapqoWrhpxdlz9xGB49hJ1kwLYKqeXkRqnevTttTYQq2OtMcsqTEcr1vOOTMuca/xQfTh70wxI5Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726136754; c=relaxed/simple;
	bh=7LouWsw5+3ffZoj/VVUcHAtjiJv4dcZO7Dv6ck+iOkk=;
	h=To:Subject:From:Message-Id:Date; b=WHPMWQgyErDB3DU9aL6f9tJx+jftQAe/NmHipTIj4u0I7NgeXg/K/tdjnE9rorfzKiurLPAY9QIPatiE66XQNTpS8SBZ6D98WnsXF6wkAPUXDPQnmdo+/1bnkdlqYPQYSqBSHtm1auRQEshjm3/LS4KX7b8kBUR2nzjYNFi8aos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX9Jnj4z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX9Jnj4z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2AB5C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726136753;
	bh=7LouWsw5+3ffZoj/VVUcHAtjiJv4dcZO7Dv6ck+iOkk=;
	h=To:Subject:From:Date:From;
	b=qX9Jnj4z9wP7m4IvByqKSoMa3iM5CPMpH+sy542FwlVuwDz6OJnBwdKjK2emx3HQf
	 jIntrSUeoxeXwo2BPmcRxIfOJzgMcrFRauf4VMZgGkomW/LZB5ZcIW77/T8DziGZtR
	 pJXQMGaJjkmuiDmGOt4rpQJbQHQqES5fgsGbxhUk/MNzkBjlrkbJgswAAttDJw4Dz0
	 B1F2eyb415e7piIrmRI0gpjjpSp8HJZlBfyAMvAo3IIVHGu3KkaFJ1j8ol7lhAKpgz
	 NkVI78c/AKsR06iy6m63jPPtsX6cezyX/gbqK/93uJN/MvrW01sf4IsGuhHCGJEhWc
	 PJdvMDbiUAgzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E1DEEB587
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172613675359.17945.14103564092687167926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e9d5c726ef480231f282687ffdd92bf5f9faa27b4c0b4e392005274beeb2e3
Date: Thu, 12 Sep 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726136753
