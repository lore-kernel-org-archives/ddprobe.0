Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228F3239BBE
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733915754; cv=none; b=VRZeeXszGPlQ6fhaMxkQ287Fa3FNEkKZQ2cyu6AsyxwCl0zLd4ufkZZmAElzeH9bEZGP1LcmUREMughg6D5Js/W3w3/CV7gfdN3tkE7lR+fTUbkdCchwfhN/pg/rHK0P28KHw7NbecaVFg5fcJOKHuFHsPNIFddNH3yMEX+UDCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733915754; c=relaxed/simple;
	bh=yxnWnh4wVvrH929utyMoMFyHIwb2j8Tr8QbGuhZJ/94=;
	h=To:Subject:From:Message-Id:Date; b=Hii3PbkP9ZXQpKrPGdSpvZ+bYPw4KVHywPqFCyc8M+l3sdPTHkxvT2e5sCU/pP36zmTO7vetqLCUJJ488kD1qwcuinHsU+4A0fATYX/JgigSA7B4zwTBxhcNldDe8v2d0S2+wSZI1dD6wt5V+hkhbNrlWfZw4JgUlPm7uNodhSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VeIL+O2I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VeIL+O2I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1404C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733915753;
	bh=yxnWnh4wVvrH929utyMoMFyHIwb2j8Tr8QbGuhZJ/94=;
	h=To:Subject:From:Date:From;
	b=VeIL+O2I8d4btv1vkP5XSfctSCX/gLIkaj8A1rAzMSea/IZMTFMVZqSummYPch1Th
	 XimsECjX50k4usdsqf9b7zdgKTBtt1xy7wsh4sXkBPinrFhjIfPAqWfptx3iLdMXGS
	 U0VvcoLZ4Ir3JG/umXjtquKPjfceGFbuqFu7v9WJL9X54nZRdmxAt/Y2qW12BWhDIp
	 2K+PKgf+My44bZElCKWh5n19qf2MZxhmwehNXd0n2k6vSJ96SuhaBC5ZVhEYmiNNG8
	 WKtOBKjx4Vs+JAEwv1bENBtYLeiLFi5BjO3Az/vdYh+x7UtGWYogqhK8CImCwpZbHn
	 liLE71o2juCIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98175E77182
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173391575361.12449.2297516554239751440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090f18669dd15ce7a9c41a23c1d6f5162271c337553f3a99aeef48e31ee1976b
Date: Wed, 11 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733915753
