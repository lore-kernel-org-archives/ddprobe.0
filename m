Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBB97DA62
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728575154; cv=none; b=Z7R1nQxzjq4PjmbH2UeQohGa0V8u3+mXNIDSZ1/3UP/FXkAiwUA16XbMUu4kpf6SbcLXGscfsVK5INeMCCJ9tExZ1SmQEqVob8GI0Pdm7FtH+HL94AE4V7qDfTlJCR28BjdfvLi2HscfOg/hAsc9lHOd64IX38nI6pQkCRllKjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728575154; c=relaxed/simple;
	bh=4GKhe4KnupNGkbf/8GldLLrwZMgHsD/lVoeBgSlxp6Y=;
	h=To:Subject:From:Message-Id:Date; b=nIx2g7JPZpyPoiTL3Fk3yL67C6dQEvEMGWi1uJ+0djhBYTcy1eVTBOxoOFpQ3KlmUAdsaz8rFqtmgFeWK2O/xOLYzwPpKAe1y3zPGePiqXrB9/JFEJsYHTDNAfhn5s0m/SNQNpcnexnSLHR31vNZ4Dgc00S+SElcrtTPSeeLbV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfS3mtux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfS3mtux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAC1DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728575153;
	bh=4GKhe4KnupNGkbf/8GldLLrwZMgHsD/lVoeBgSlxp6Y=;
	h=To:Subject:From:Date:From;
	b=OfS3mtux1N76b8FTH/X0MwntZLGUPliH7D01BEoouIIJjzxa7vrIswMB1kVtH0k31
	 CK1EmJEitRpL5wT87h5FtT2BxLH7EAlutuh6MNVYWOUVV7/kE4stzZNMQ6vWqjqvo6
	 xtGNPghjfWDv09HvqwuQYlRtI5XB2Z0Syqy40oF/nEXjtj+85K1SqGA+Kg8dao2jI8
	 /x7ookzLkjQMEPNstLUukyJ5r5zb/wKeTUYq01gr5K3dimUI2achvxZbgergmhVEqP
	 O34A+/7qIbpZJopxVBMCFhny3MpTy23G9YqfN84reMoMyrbiY5EnLdo4Q595K+o+IA
	 58Fx7dlj9nu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3A6ECF11FC
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172857515365.11631.1286410537972633791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f176a88aa191e3999a4008a83dca9bde4a21c00ee494f4d931df101b766e9eef
Date: Thu, 10 Oct 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728575153
