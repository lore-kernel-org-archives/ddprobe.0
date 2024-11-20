Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4E8200CB
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732086954; cv=none; b=o6cG8x95tatN06fUduoG/etm7GQWEankVmCXnf/lpdR2qPkPNWui5LXkxAdAhrGe6B+Z+P9nvKBXvWyWfW6wnl7SnSXXdzL386ecu9zC87PBSz5afgDHy2HIxll8/lWiAR3r9rZttQlQD7OQUryXzShJIVAI0HAQj5zf/sz+j4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732086954; c=relaxed/simple;
	bh=0nCVIu94dYU1Xs+xSyO/9Zjp1ujZA+IpwqVGf4ctTHw=;
	h=To:Subject:From:Message-Id:Date; b=sos3yrhx3HVMrK8GG3SlhKnYj4SyKyQQMC90wD7AVI7KOURRpMLAxQBJLbq12XRiRKqy64GOvlpVpsF+fbDMaxunF+csCQudWt4BdMX053zjxuVQb1kLHFBECi///4ewtOPDAMCUiqTgUfwP6hTkdhmLf9aiHdxoNjjfGRDYh7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qhoz0Njo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qhoz0Njo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B84C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732086953;
	bh=0nCVIu94dYU1Xs+xSyO/9Zjp1ujZA+IpwqVGf4ctTHw=;
	h=To:Subject:From:Date:From;
	b=Qhoz0NjoDMSD4aHakXuOL5n5T1MJUaMwfpzroolwOAvt/Jb2DxzFxoNmLykVgWQbo
	 32FnrvUsA68B5GbUx/aNdifqGI02P3/RVIjjDvqg+eAuj4ZtJnfckpsr1AyrZKRqz0
	 SQ6CsXH8cw72kmW12uMAD5OSKZSZQJZeojHwWTtVdIpjfCd3VH9q0G89jbNPaZnio5
	 +CxcSv9oTNhBsVL1f1b+ru61SuL122uIyk2f7lzx4CVWJNviIhmqYG4WeQyX3xojGb
	 da0mVQuCD6QIuAAuuyk3XMxpg3WqQqN++gApnWUsLDMcNzy+c3oRuulY3hazr3X1WS
	 BRHPdTNqPGrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95492D6E2CD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173208695360.571.9253408742551294017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fa67a6ad2a5687d122ff7cac81a1ea57aee2d767bd830048c2da137f4f722a
Date: Wed, 20 Nov 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732086953
