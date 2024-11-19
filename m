Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9FC2AD20
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731978954; cv=none; b=bdRImmtsO/fKdb19VKZxDreenvvweM4Pb4F59nzcN7awpjqsrUMSuMe3gaKt4c6gwGcnfOCurhJBEhsiitEEIedwb+VbCRotHvkEshVEgsJeEgUOKgxZmIfgUWhs7EaqTZ1oQ0xbtnCyhx73huSSXVt2szutCcBgEMuVZhn5UdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731978954; c=relaxed/simple;
	bh=Dndq4zuaj3z/ZXNnMcClCst108noWqfw2vw0Ic25nBw=;
	h=To:Subject:From:Message-Id:Date; b=SQYTP5V+xlX3//7ykco1FnKzVWmuWfdwq1NIxJ3MEPsZEBPCEP5zbQo28UUmpoaW0Q0Zr4HRACvVdiGPr9mkNAxaFtdktckYFI5mBsZO0eXjhFis8/DQoiLctPKUoWDM6EaT83si6oCcXaZ9nRoErNytso0wFOLsSqvcs7Lsmcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1rlREUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1rlREUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6634C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731978953;
	bh=Dndq4zuaj3z/ZXNnMcClCst108noWqfw2vw0Ic25nBw=;
	h=To:Subject:From:Date:From;
	b=N1rlREUmQQ3Zgf9p4ykNHWOMFVReG0ssGvnHouRIPCJuQhp/jPgsOrsgFECxOy7C6
	 VZ+zxIWUOLuU1bYXl/kvSYux3SS3jz2x0o2tQSCKNHJ+VJuXhtk5eQW6HIqWzbTXCE
	 ke2koMg8e7ssuTutaQvDb5N+26Ef2+5Xl5iXGXGDMNLhUbjP1ue+XWoOvZn4EoYIiJ
	 B4O77Pii+dvYPpu6G4ZgvqrVkKeO0/49MBNkt8Ghbt98cVS4/zQnyYkWxtffkqQVxj
	 41O5b9QkRJA/H5lS6PkfA6+kuS3ddZG0AsivvEiK0GmQRI640wOFAzb2Fn3q0DJ+AK
	 uSWY2JwIGP8pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93317D60D05
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173197895359.32135.16527300042926110088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f88491df2b93889fc980fe25926e19b918390cafa95042235d6da74b02156d9
Date: Tue, 19 Nov 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731978953
