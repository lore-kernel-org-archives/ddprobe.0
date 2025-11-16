Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EEDC221710
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763291454; cv=none; b=DouiOdSRY1DUgg3kbmQve08t2Dym+yySpVJwuCZ7eDdsEj8Wn4JkUOnhkNQYz8nBRoFVs6+Jsc2W4y2j5QyPFq5MaG7luU26O/GH6Od8wG9913xV+L998Y310AfNsZSEjFeGsOLZ1BXA/3Lzql0OHMuMu/dGm8oq5jgB4irQzho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763291454; c=relaxed/simple;
	bh=rq6wd6hFCT8UL3axmN+/ep2apHzyODpSpDXjOgL8C08=;
	h=To:Subject:From:Message-Id:Date; b=XFE1Fq6ZMFRJIsLUhlVgHZFZ5Rup866i926jHE1Ir0Y6YP631NGNc2lxewEKdNYU4jggINqFUabJdCq4oCS1zP7SBd2vR3KgMTI3Dr2bpTC7wo5ph/wKpLm1h8W2wCiYz9LOV3WhQiehybgXPIBu36tfu35e8zzCDhKPnaQDGag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cRUb532V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cRUb532V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A634AC116B1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763291453;
	bh=rq6wd6hFCT8UL3axmN+/ep2apHzyODpSpDXjOgL8C08=;
	h=To:Subject:From:Date:From;
	b=cRUb532VmyQqry2gEQezK8VWOOVYCaKXTX2wBApouSeJPlKjnMawKAC1+pyCBK2a+
	 yONtrlCHYaP9HHGog0Vvaudsm4NY4y4aQAeX4JceYE2uxfx4c5PTtb3B1xmLFI99Cl
	 O5V8viWaxgeIf+aCP2Ct5WHrboM9AS/23eWKQtpeXgO8zP4kWyA7/GwEOx3EKZ/A5e
	 lD41bhi4IxIuuyhVAbCESEUy11ZEQ1fdaupXnfH8lYoc3d2ggeReBVWT8xdFqqyuNz
	 yq8qZVxt7YOHW+2Br7o80gPWKMSGPTWOOmevFwiHeLrcrVPd1CU0fkYE7USGr9bM2B
	 +OvTz02pGtdgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D10CD4F3E
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329145359.9346.9519074537544677640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19576bdbde9f8edc6b8af33ec5eb0b57094997182361aeea512855baccfe80a2
Date: Sun, 16 Nov 2025 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763291453
