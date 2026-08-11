Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402C2317163
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786492234; cv=none; b=qqyacRJd5jYW3FbGaELZcLg9Oz56caNRlk9dNF/dMFaNByq2plx4VJBAkS2Gb/Z+wJDERTJXtPnGFWfS/aFW44sIhMHxmXaN2NMIaXUT65R9H3EHuZjA52mGTXBxogRnSw/MuIairQGB7bvl2i7iDirt5BgX/yKnZFjwDxc5p00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786492234; c=relaxed/simple;
	bh=tJcpJpMp1pmIhjqktf/LZf/DuNsvni3VwRcSUpLENc0=;
	h=To:Subject:From:Message-Id:Date; b=PwAtWcAL3Ve7iCW4mSBdFxmC1u/d75YeQBgQwam8r/uS68KIHIfDYlnYk9dbeoHvuz49TkOv0wke3ZyVIMKD2qvtTHiiTpb+MQyL2mNWvZVvfrJO21qvLGkVO5DKKbl79zSxP51L6FKz7jWUMEeSMIEMCUYOaQbQEWwm8iqSO9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sm25tKPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sm25tKPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA2A4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786492233;
	bh=tJcpJpMp1pmIhjqktf/LZf/DuNsvni3VwRcSUpLENc0=;
	h=To:Subject:From:Date:From;
	b=Sm25tKPR1J3fMYNDoSOk5aAb3lbkG4e9rnKdzeuvgUD9L+W6Ac1VY1cmsGb/nSbgv
	 r1buBxmQaSGdljHygs5JiBEMjdv9jE9RjEwpQXF10uyWJi3nLPUAdNIbGIcZIZeJFD
	 h2TQQ05p/dS6NO09GFBtUaw9jEK6x7Jq3iXAEj5mKCnCLHi0hnlb9roNEhPqB9BR+J
	 UdO8eO3zdXsBdmghhbadRMhxNA7c4E9NxknLlQmcXdnBEFNDubyNw1gk3iK5nQurvA
	 HxbWVMX3OI1x3MGt8GTMiwc5EYcmVTdjl4tZ3KSqF3aiGMPstxLknQxGWGBNN6wNa0
	 7+4AO0i4Z3V9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9230C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649223368.3806.5080703972913366957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac1d95da808304d2acf624c298c759b8781f94e11da1d9175b5419f2961d00e9
Date: Tue, 11 Aug 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786492233
