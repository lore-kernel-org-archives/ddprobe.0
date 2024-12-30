Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B321F957
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735529154; cv=none; b=vDhfYG9YWU06wiqgCPu589Kl6DYvY643lpZEiwbNGXVmNTF1r9g2jYtV4CmK3XjLwaKGsEP79PWO2JJ8TVWgxesM0RLiBjS813cxl86BuZm9r1Jhe6TLTtJtq8eubpBbK89q9Lpq5x/lMUx6+zS3iStdZ72qNfgOi8d7Ravu828=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735529154; c=relaxed/simple;
	bh=iPfKUXdYEWBo04esChr5L6or7WOMEMpkPgWS4kh+Saw=;
	h=To:Subject:From:Message-Id:Date; b=PhKrjdWZfqShpkwsy+m7FDdXGofSRZ67WECeL40xmgAcoTuF7ApAzo1P/8PNH46g48q4SUbRaVH+q5imV/7b7OEUKh92gJJn2qL1ndUlh9wYBqHsZ3b16mD2uOoWvS5KZaO91bVekkmCKkB653VzmdXyVVGb3OzoTnCP8GtKMoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JTTLwsPB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JTTLwsPB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8119C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735529153;
	bh=iPfKUXdYEWBo04esChr5L6or7WOMEMpkPgWS4kh+Saw=;
	h=To:Subject:From:Date:From;
	b=JTTLwsPBS+OVK2WQvjxX/hUU+Pb8QqCpmrhk7xWrh4VGECl1ksCu4WzT8VEhli7zj
	 cp5HpraKHIiQQU7V/lA/RXbWAB6LpPHSYTNrN292eNJ/r3Uo9zA9YLid450BzWTKvj
	 7eymEy8BPMmWeLsp8AiIL9z2jeJFnss4jVSGCLiOqplHmLcKKvrQUqzz/IHU+FhZRj
	 1IspJseld3a2x9VwbklpUNM5JLthvMqLlNK0IrAjRQo2jBklAOirhlpydo//z/xo5S
	 sSX5BgYVD5+93cw4IFQIHvHnf++aaRmS96HXhnRgjiEL+Tmx3ETOucrBFVXiohBksW
	 IYIO3Atfm/jRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94723E7718F
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173552915359.12094.9763877744620887983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb55e170cdec47b26af65ce65eee7a946edc5e3962ee54892c2ca5e873418e19
Date: Mon, 30 Dec 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735529153
