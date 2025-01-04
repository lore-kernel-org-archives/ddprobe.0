Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEE0145B25
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735974954; cv=none; b=faEr9t26uopHIECii+squhx9wV6HVNy5+iba/Zy6pDWdhk5tySX+KUGv+Fg0TzqL4MdxXqUW8nb3bjyB/cHpM3Jfecr/nlo76e+t9Yi0tgKCewtP7blSxJw2JZfCB4LJgq53mPnv1Hfpp9I1ydy5HlGEsSrQb4ArhVqx3Dqf+eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735974954; c=relaxed/simple;
	bh=l/fW/xVDgQyWakvDiNGcx0q9oDDgvDodePrIv4RH5CY=;
	h=To:Subject:From:Message-Id:Date; b=GmCMA7G6r+vb9RQhCwTMoGiyT1P0PrgEeZezbyMVIS07ttIz/APJRtbyRMXEupK8SRzi6/B5cz0gVXLVPk3V6KPT0w96LSn4GerwtyV9chQznGtuZSt4IhoWDdT1eJyjb5ntzTz9MJHlbR4hGBC53PQIdpzIUxVtytvtii0Y+ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Te0Kg23I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Te0Kg23I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD352C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735974953;
	bh=l/fW/xVDgQyWakvDiNGcx0q9oDDgvDodePrIv4RH5CY=;
	h=To:Subject:From:Date:From;
	b=Te0Kg23Inq6zsD9lpPgEsC9e/ZAgbfmldbdHXtbA3D3ecE9yjoLczGa2mC23bgg5I
	 o5S7kZoRgsUVeP1K0JqHxqgPZia2U3ATo8BdN0PdL/2ewdDwciAib/nGiS4LoDtKrd
	 pxeXsAyMZVcbnhzROGJHm9n30VrGyhRprv3fFR/LNl/Tc+KRBFJch7OgmYI9ng3AAB
	 gcxffjlEhDNZsX3W8s18gj4nsgZ8MBsatFu/pmJH4QARuY96VXYrFFnPCfPO+qU9ti
	 YuARHggSU3k8G0MtIOunCRD2k2z/8ZOi0yPHUMRJ57pneaxCWy2pvV+w7+F9y8i6ci
	 XnvcOhYTYy6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B3BE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173597495358.27674.228156984609045235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a225c546282cc1248cbb42579067ca23da9edeeab0828f6d4adb8951d3390dc8
Date: Sat, 04 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735974953
