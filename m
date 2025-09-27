Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112952DFF04
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758971994; cv=none; b=TCFxTEJmM2LQBOlG21qtiSsHuQ3WbuebMP4Vm+NmxUncfKIhkOaWz3QXn8vWnX3XsZramyHapbiZS1FX636jledkASUS6SBjFaNkNiB0ggKc6fVieQEfsQMUCG4Kxlas7RQ1UtDbq+TyZOeCqocUgJWgez5xVWayNurds3k/cz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758971994; c=relaxed/simple;
	bh=EQCpnKil6W8WSzk15Jgi7lytj7UM/qrdvszPM7k46nQ=;
	h=To:Subject:From:Message-Id:Date; b=TPMz5lpprfzPFrNqGiQUzJGvqu2lkNyjXRPMXPSusBvxKMuQgnuzizUx6AgZcdy2AdRzBDRiVmqyZHslWyj3OvhkwgaRgIlER8lPvujmG41CndxDQIpn4Gi3VHIJK3FqmqVkUp2RrHQm6UXVW8Vrbi2lSsZI8lh1UcGfA2uL8NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTKuwc4A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTKuwc4A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99C40C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758971993;
	bh=EQCpnKil6W8WSzk15Jgi7lytj7UM/qrdvszPM7k46nQ=;
	h=To:Subject:From:Date:From;
	b=hTKuwc4AeRELGcdbaaJeGbGxjvu5CMvkgb+czyiPyQv3gBjT5V4Ged58CwKykzCFZ
	 /52pdRxyGawOtZ4zhXDdtIqeqiRBaGEUMI9vkGFleQmQzilf8erbir8t68aJ/DqaBS
	 4norisDZdt5kGSoEZjeJYpqH8KOQvt1d0hPt0Iv4bTrlJ4mhrVUP51Yq6gFe0SwE9c
	 LDHEQOErn2NV6NLDQ6ktWSx2pHpDZaTVBfTPuLHj3HCFTLLy/qMDtPWLn+fJmVpEqm
	 KfMuk00gYNEz91jaq/nTdxopCg3PjgPNeJe5tC6lVF0HVxSNAIJjI4biOYB3YaomOQ
	 w/gqwuHL+lMvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901D3CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175897199358.17237.16435889850763593467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdd43e075441cb20f0a66ae4fcf00ae53749da65045e7a1d3848504f19eded8
Date: Sat, 27 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758971993
