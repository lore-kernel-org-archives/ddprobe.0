Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DC744C4F74
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790028034; cv=none; b=YYCKjvyHfNuym2BWaZn5sQI+YHQh2SBb2yUJWVhjxNgwkt/d1GXieRebhDZzE5UmEdqLDZub7iHZcSTFnrfOgtLvke55nqfawbAq28vyoSJSoRmSLNXRqfLb4lfWA4mAqIsIcKoOdmgt4nqE5lctrPXVTZLofTO5Fr/MHTQp+Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790028034; c=relaxed/simple;
	bh=KPsB1/+Mu4IJSD2TW/bXk0+HX5OpGjqS/qS9qQeSuoQ=;
	h=To:Subject:From:Message-Id:Date; b=t1qLy/r8OoSB2rQSi9YVA3eQTdT387zSrfLaIIdXW6zg8daxwRS16sZgRWafLgy5OaQEdNNOMc+PWdiBrapp2GorgkBYEwinzdLTYWtM4M+9RtFqAU2nk8O5o1a/N6KBc+Buyf2pPIzo1TSzDN0L5eTX22AEMBlmEtVtpkHXWQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JKOGcOQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JKOGcOQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1491C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790028033;
	bh=KPsB1/+Mu4IJSD2TW/bXk0+HX5OpGjqS/qS9qQeSuoQ=;
	h=To:Subject:From:Date:From;
	b=JKOGcOQBt7L4Rc/7UvVSxgT52Cwnty3el3eSb2mKJda35M7thwniyORdSPQ0240Jq
	 TheHQVYPmOc+1WlGSuthV+PaORnjc9vU01wTdpuhypS1tBGJgb/unUrUCA4hIDvM3w
	 PKkWgpjrVdDSgXi7CISQ2PxyGRfAEoK9Kubxg5bjm5mUybgjcy/gyNWwHRCiNe6yzk
	 S2CVXgsGmzacIApdxXGMntDyKktPHxaElxF23jIkThqIUs6uXlInBGxIToam7h2sKW
	 Y1QjzmUlR9/z/odmef1WPwhlMZkTZXjUKGuggmTHIvQdhH3rkg/GxmDJIYfHWhUVxT
	 DuGmzw6ibpA/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8CFCC982ED
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179002803374.1408.576016811726476913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a12db16fba1757e80923e504893ed662852feeacfb692d0807f3f02f0a3b769
Date: Mon, 21 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790028033
