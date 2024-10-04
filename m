Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FD9136E01
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728030954; cv=none; b=Izr5mAQoVOfnVYY3dHInTnGK1l6ZcrLnFV9vIrKxEiZGFQPZCELlNitSHENX1ddbYaHoo9dG5+MTzicSB8uZhbf/qvK+RGDDexXH2eVlC1+rtJ7YBuf+1K1HVR3Hdzqnbo2W5tktpwVuT7kYki0M7YSRQo87ICTCokypIpPoBZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728030954; c=relaxed/simple;
	bh=f22pfjJ9ecNt9tZx0Mt4yL2ru+vS10dRl10BHsRuwCY=;
	h=To:Subject:From:Message-Id:Date; b=VuXaTLKFkpzXTR82HX/kKCNmwULV/HSGAjCZnS7OGKV++fIE+VEXZ4TbglM1Lb87E6e+nNlajJ2/Ao5keocg1rYiLbYOru07HdNeYYhnCPKwl4FtvaCpVv7b4qldzbS+Hw5NFDZadtHxj+pa4Nv2XblN4iJzoZf/2rxYwR59mTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqpLTVHa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqpLTVHa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79F8C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728030953;
	bh=f22pfjJ9ecNt9tZx0Mt4yL2ru+vS10dRl10BHsRuwCY=;
	h=To:Subject:From:Date:From;
	b=UqpLTVHaLzabNWBjGj9WToNha9m0evvPqVHsU9NEDqyh5JQdotL3u3Mbg1cA9a0pT
	 37yD5QMi1vA2/uVwq+HAGId5ZPk/Gab35s/w6RM+6we7SBqSDE/dC1uzyvV7pK6/lz
	 NHqfuXB4PTzVwMjQoFTJGA8cY6g6HBVZ4ng7272xWnsdTBFWHgKEJwJ/9L2aZtMgPY
	 e5Dv4+tEemnP6K9lGINH8P1nD0a5zN/TwCBnXk6yUAqkZn2MZHjEm7qif6yDgqtPz2
	 r9xWth4QDylQ5R6fpxr12SBcVTggEg0sa6NA6mvdhoqMaPkW8Q0PZBg4pdLtdpx5iH
	 gKGPfApznLhHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D8E3CFA74C
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803095363.5992.13864749850398792786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dab378f1b9432868e1a21426fddacaab097bbc000a16ff317cfdef64b0c8f01
Date: Fri, 04 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728030953
