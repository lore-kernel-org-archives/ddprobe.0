Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8130BC12C
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717029863; cv=none; b=n4+i55jhtyLX7keXltvIKlSn4q+4avHEsX9pcaekDe13Vu/jQr7sB7JITPp6YniG//KzkhirrjmCpYFqWIQpYbTcOslGjFf3U+BwaTrHVEW4uScDcfySf5UUsmnSqGHbufzkr2vRGeXNMMJ/axCOh1/BQnaPyCl4mkcaHhehaik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717029863; c=relaxed/simple;
	bh=GKuA1hZeqS2BrKIMorUlSK9ekcWPEqRMT7q2rxTD1oQ=;
	h=To:Subject:From:Message-Id:Date; b=YagRBW3tVlwVajSZZ3oR4jdK+0+bsHmDMkUNMqqqu7ugz+e7jDA4VRvynamdG9xSTu9+kakz/9IZ7/8cw1QfsQaCtZguuVnJ5gz9doA5jEYWMBKmCfZv6JPITiI1f54m7KYjNI+ONsqYmszG+WYW5B5hVwELjHWpAwUAdS6qH0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReCo5LyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReCo5LyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5460C113CC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717029862;
	bh=GKuA1hZeqS2BrKIMorUlSK9ekcWPEqRMT7q2rxTD1oQ=;
	h=To:Subject:From:Date:From;
	b=ReCo5LyIeOrStl4L5Wh+eJj2AwC9bH6+VvFY4I7/8zQECZobNJq3HMfz9unhlEcHg
	 G1zGv9hkrDl1VYnUXe1BEA+NfTN2DCUGWRWCunYICTYuAYPUYuOrp7ZWdqJAWY28Vf
	 GNbmQnxoJOt+sConiYp86oyPZVHyex4NxPjMaJKpe6PTOGEqsk/shrPPJGfgz/slQn
	 2i3zHH6chR9+eSEVTz+gW5hkV9zkw8qe248pNfrf9QqB+GScBj7eLGCmi2VRMnW1J8
	 CD1yhUe8zsBOQHMdOKGxbZ1HHKYIPdl+FzESlZQ93Db+MBOOt753M7DBVuBNPGPiMG
	 rww+4rhA/ac+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEACBC25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171702986276.14404.5160049102719937903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaa2e1f14998754386b80925a63982d219ed2cd3d65725229dfa65830ccce85e
Date: Thu, 30 May 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717029862
