Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E21F1F0E52
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737455754; cv=none; b=Mo7sZagMy/qRVlJiowHiBmhxHTcvmIQEXD4wB8DEP55BTvgvoOgSVjRp0BakQIlqN12f0pU/M2t4a29ebHIJvxGRU3zFbtdg37TVYvZmbH4+JlZa63FWmb0SLAO9ckDULhwbzQJhhPrig0Bpwj66QTXPdzjFCc2jpteX5399ZRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737455754; c=relaxed/simple;
	bh=eB3IjfRTAw4I55oFDsCcOv45JDL4crJYEVJh1kWTnmg=;
	h=To:Subject:From:Message-Id:Date; b=FuMR1W5fULSmsmwL+y7Qgniy/SRaVLQo+50O6h1cXIRpcHIARhkOvjFNZSBodTP6xiVF4H77Hm7Ly9cStFew7Vf+zSeyUMe8oOGFBN7rwSh6tpLMFa5eqe7jYBJAFFJZFz7YXVUJjRc+hyzKvEp6aK68mh6P4lnAa/HLjttbo4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HYcFsWEs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HYcFsWEs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3F8C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737455753;
	bh=eB3IjfRTAw4I55oFDsCcOv45JDL4crJYEVJh1kWTnmg=;
	h=To:Subject:From:Date:From;
	b=HYcFsWEswA9eMKeWLhsq0ynIUEFqzeyrzkLoSiZjZUMlqLcw5tzH6hh0K+nR9nTG4
	 jm3Gec49LpmVUagra63rvyYhDFnrPOZIFocZRncjx6pf5l8azothDLcOpcPhk5ayaf
	 g+3IVH6OfFAc15cSTKf6IlV2iBA+AIbg4zTZea4/T/HEadjplICyDHkL8VAaefJn9R
	 0BWVR8pr5tIT9s8njgPI83JywIiRYNqhuII+QJnxQ2wPCsoLx2tKiSxpMsEYERDqp2
	 l6trUwkVXHo1uv9eciK3hxfCmmmImQFUZhPIueVr9B0EVrWjSYwI3EbJ0J4B7nndM2
	 OFwmIqeWXJ7sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5ABC02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173745575357.32272.18034939210269026368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 785c670c8051db0015845c118a55b40216cfad0032b2388dadafa522cb42b10e
Date: Tue, 21 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737455753
