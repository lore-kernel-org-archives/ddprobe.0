Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D729A2DCC1C
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773761093; cv=none; b=NKBwcUDwkG1YrKLk0z0PiwDQzy868dyaRuJBEa0gJ+HX+Tee2UCr6EtLzWNNglOhxThyk/mkVcXlCZ3Ehm7q38JwSkOwLtGRkqbz6lZcfcqAzygBWCjsWXd+bjGaEurxfdKCdNdkE+oVfEeJ2apv+tGPblYLL8LEIaFmoju4m/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773761093; c=relaxed/simple;
	bh=/4gDBrm4jeDs0okqYFRLXQMLFCAeVRq2oD0GVPL2Qoo=;
	h=To:Subject:From:Message-Id:Date; b=MLN2vEDlx9UGbDyNjESA1NgztWj4FwcuogoZLbMKexz1h4+j7M7jlOA+0O2U1GWk19RXS1fa4pJrBF8mlyJVHhW6WqN4dX4WEF3dSeRxt0HHSNffATTORVqqhOa6yziAi1NooF63mUXOZ2mmSQ88gm5R+NUz5QFuw0XKuamskTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YjFoLW8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YjFoLW8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8C4C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773761093;
	bh=/4gDBrm4jeDs0okqYFRLXQMLFCAeVRq2oD0GVPL2Qoo=;
	h=To:Subject:From:Date:From;
	b=YjFoLW8tC0hGcfpV3x+Bsh/9co8ufol5HquVpjrvPSbr9XyD9aegzKG7HjzW5Aq1m
	 nch1eu4S8BgvG95vTiVxevH2xcKxLtZaDWX4lEnddam/1tZA8fZZoYDs+bIyrv77fn
	 dnF52M6aPj3kY+Up4VKXuEWkv3jc1fao/cM2HVsxC3kpW+IBY8BiHS30mcejVhjimF
	 hwiMYf2gcqkP2gySjBcNDpQAwD361T8OGykdcNOF+iCv0i8SeD7SSy8Oh0h5ogpaYp
	 xC6alu5piT4OwwcR2GgbabbbSYZ287/yLc7Q3CxbE935sSOCEO2kr+MRRanVE/97vX
	 uYaF1WC/hS/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB0FED9E3
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177376109358.3840.9569295406464434218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d496bee5a55e6d3bac9cbddc60ce92bb5eb4886a326c1cd736c858c567139895
Date: Tue, 17 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773761093
