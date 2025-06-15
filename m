Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6235C96
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749962994; cv=none; b=JB38RiNDiIpgfHmhmhH58oYFvIXkgOk0zrU2mNTmSI5VGalwYF6QffjgvXA9N4Puva02puLNzoZ9aLP1bTCX2pA202yU69ICmNipCUV2Grl7b+mQPxfB7hFjFgMSrXzl9KT7s2mmSfUq/67CYfkmYV1hFG1jBAwk4Opr4t0MBtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749962994; c=relaxed/simple;
	bh=WsC3yQeiIAL1WThT9waeF4nH7NlUPtxXItT9A2tkLTE=;
	h=To:Subject:From:Message-Id:Date; b=YQIFqCOSC5jVs9qldvvoZORQu6M4jt7TeuVFzpjq8avlaIo+eTs/6SoumuIn+y2jrD0oJskUS/hDsEI/uguXLaROMv4hj1/9AZRtM9r6nGqzBNysL5ARZYe6HFsAU055+YJlVxznCyr0nu3Qac++PBXIJWDShNNTx/jTD7LxcXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E21eBoja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E21eBoja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D90C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749962993;
	bh=WsC3yQeiIAL1WThT9waeF4nH7NlUPtxXItT9A2tkLTE=;
	h=To:Subject:From:Date:From;
	b=E21eBojak39tQQaDKnWoALFF/YxWTvww0iGUpVtWrDBPZgNkJN0LRLFsoCB2CufxS
	 Dxj9a8vejdzA4o3SlRyTeezzEJBqg/wRRmYyaWoXgMjFpGDXB6cNkuT3NHxfeCWFl3
	 dKUJbmhA9AUEz0T5+zEz+CDxptCwn2a5hvUUMaYo8mcOmmapFsmlItcRGxNdhHNiNF
	 5+3q4tpFPWdwQwuXc5xvhqK5gOirtgRuIVptxy7+0PbVTuSkcRfxUqoi4U//LWlGzu
	 xe/cgddZ2J48pVcTfnsHt0bwxuq6yWP9UxMjJAFbfx+1yJGJMRxd22y+s4/X2Dk8WZ
	 +fYaLpGGApOzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91678C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174996299358.1142.9706758195997874708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24a4f1a70f324f7f92c6d0a623b0c0c1dd67c83117e56de3b8b3ec7546af88f9
Date: Sun, 15 Jun 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749962993
