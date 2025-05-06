Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38700139E
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746572994; cv=none; b=h7ZafVIsk9c8QIefCed+gT6CXfO2TLtVmAoUVGxGKdphyA2AZOyUBL2CloOY5UP3ZgzGHUMdl0TlHOQhLcARGRVq2vCbG7lW7SdGA7OFutUO9Swt2NXV4JJ06Kx42xhi0nSqWWedxpvxYnUZlOotQ1+KcwyHsafKGvN1E/WZyCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746572994; c=relaxed/simple;
	bh=ViXR/3zpFQA4pen8TPdmtciPmGFM07kM2erXFbNNPGM=;
	h=To:Subject:From:Message-Id:Date; b=jltpq0wzbz67Bq23djmgcwIXVow+/5cytD0RJrh5iT3PnwU87dQ2dKqilGqxiLoXqRMI/kcOCeHw+RxK8GNM9LfJgDzD0LrNeLxippmAikBOPUVzYdUvcdQ8tY6VASlGswHULM63i4rcVCyN3DoD/XkybpvY5giP5gKnR7CKRJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBn9nLMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBn9nLMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FCC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746572993;
	bh=ViXR/3zpFQA4pen8TPdmtciPmGFM07kM2erXFbNNPGM=;
	h=To:Subject:From:Date:From;
	b=oBn9nLMfTPcgBfgww0oPV19SrvstImHE4t9B2cYUOPm7kZDtFkMYmbeXOMifDM+rn
	 49AVckJkoSim35cn9/5GSJItGzJGwJNS15sGm/o+UdsncDwZEptwOlHfSZWyuXkR2I
	 1k3CkUobceFK4frDL0vrGe5MS3cUEzHL24fSa31qPog7io8MMC8dgHo/AGOFs716VT
	 TjzuEhaQ5iojjTgZc/52/M3YrW8kwtqSevZwR1wffLePey9kIL3TZVzcby1r56y3VI
	 hUewUIWr8sPTBoObEO+Ji8UUK3yXVlicjrnNtLC4qoAJWGb7RWelL4isU5GMQT0SZm
	 Y1lhTZIbK9few==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA6FC3ABBC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174657299357.10509.16584073791628209971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f0df78a14affb1383f866061a936931645d7e130f6ce4162dde26cbce9ea503
Date: Tue, 06 May 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746572993
