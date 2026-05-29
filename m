Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 973543EF67B
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780078354; cv=none; b=sLHxQ2ab15mU9qQILZEncIweCq3wNbRsamZzD8Jgk85M+QIuYwF7y2aYynbbABSbFWdtfFXMFK7B6SQOvqG2TQw/PSuHunwmttW3VqZQGxenymiXH1skh8naSA6KC4o/5Vd4R2SX7/PCykuojH+6I9JqugNm5DBOu4vxhzIxTg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780078354; c=relaxed/simple;
	bh=JJnVsbNxPjb+Pwltfn560mGqHuueA0427TjeG8qnK2M=;
	h=To:Subject:From:Message-Id:Date; b=YiNIvvE0s7SYelNhGh1yDYNOkSPFGdVcbax/AsyWiwszcf4STNS/xIidkwsGApc8A7dRf/xcwEPEkmftu/uudWc6pf/RguG0RFf7nyf2gGljr80FW9aOSmjzRklJTTgDacSluaql7amm2mqMrch0Vow2V+DiWrxlY24o0LsFT10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHTlgoWt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHTlgoWt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F2CC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780078353;
	bh=JJnVsbNxPjb+Pwltfn560mGqHuueA0427TjeG8qnK2M=;
	h=To:Subject:From:Date:From;
	b=qHTlgoWtfN7coRdYwXPMACsUkqjpPr7LORFetmEvh6ASoMe4egEgtQcT6bl9dlrUq
	 6XnuwkcUUmbXtl6W72/t8IiO/bnbnMWG2TeH0hS6JwgRxG84N/pw38wJ5Rt5UOqNBe
	 q1gT8lxUqHDpkBG3sCrRyb3ANQO7ZG9jwdx89y8Pef2hW11f5liS+FjZKa9hD5T07L
	 6x71TJfoVTMdSAtAzrseD7EPfbK07eUnMJOUHRBkeGLrshB+t22K4TX8kSX8vshldH
	 2kr5Qv7u5JckoLLpdmos9weCiX5AcUTW6R//zrfM4yBDRgyaSnLn8+vVA1cij1DP5E
	 z793qwK7X5/QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C6CCD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 18:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007835373.30196.9468043776373655484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7afd65765b5dc48b14050919f3341677ff55e88468e7d1e8ece7e06ab4291697
Date: Fri, 29 May 2026 18:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780078353
