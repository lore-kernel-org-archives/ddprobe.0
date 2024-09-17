Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09B48137745
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726551354; cv=none; b=heEgtcDHLHpO9xKSuaUQ8D46JEVma9Uj/+xfueDKttThWPvaOK6LXhVj6o7A5Rg4tTmvh+xNJU9os5qUsF6w0MAQulfSAU8108LsVezKy7nkFsAsuIzLo1yuDEE25oGJdK9yklz8uGy80V1QNGi0tcIL81/WnivzaxEwX/bDrRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726551354; c=relaxed/simple;
	bh=0NmfAIaPzsewqiNDieXaJnWl3oxxRuknRybK1VB+iT8=;
	h=To:Subject:From:Message-Id:Date; b=puNe0s8s7b0A+145fN/oHIGHkSKcDrwqPVzwQsovbBTrQg8lhC3sAEjWsYOQUrQI3VfVN/21+U2RSgnMfXO/P4sPeGWVvZpWVmViuYTTzHNU7abyS2NqfkNDlIOvJmg0hH3BR+VriHg25fxCPwE4oDqYzM7fo/xASBASu/uzjes=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=On3CND3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="On3CND3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B31C4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726551353;
	bh=0NmfAIaPzsewqiNDieXaJnWl3oxxRuknRybK1VB+iT8=;
	h=To:Subject:From:Date:From;
	b=On3CND3tGO/D+jvZBbMSUl/dxsUnlTr2bGNx01+RRJRXcfVTIxzNImEB+KgAC3tvv
	 63P0PbrN79E65p/CJVaiPlzDqDmj5GJu6hzdivjPrNoTStvQmDV8ITOrvFjONeO2v8
	 V83VO5UpnTPjKCTM16E6uw3K+7vO3Ez6GWuhXdR263GjTLO7JAFpznT4bPDasbP9WH
	 iQ6Ll5uLzmeeZ+cvI9baNSqwL93cnNgLwtAs3p0Ao1f6+sT83gpNSx14eM6NAkii0m
	 w25mr+jKOVT2DW2wgh4yaSDuvzBY224NXvV/WUDYU+8p2ntAquKT0f0MdCAjeueGod
	 EIsLatJ/a/KFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92531C3ABD7
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172655135359.19276.10740454513471399898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceb23898253e3450b89f0aed99582fa16654397093a6dfd139d54a66e310aec3
Date: Tue, 17 Sep 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726551353
