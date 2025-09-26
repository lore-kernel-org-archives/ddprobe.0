Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDD71EDA02
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758929394; cv=none; b=pfqL36ufzvCNdA3HTunWCX6HCIUkzgrepFQu/KqpMBuJ3uYFOnpSxcOnexgBXWq7yjgmDPWioq1ZVU9UwbJpsxqM/+hcoHAVOP48IHBW44HxkpK1F1aAlc33z96VD59gjCww8lo5OU37AKoIwVYEIkB/r39o4gDETxPo1m1NqGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758929394; c=relaxed/simple;
	bh=VQMhn0alo0ysLtA08AzjfdSswa486R6vVvplIzKxn30=;
	h=To:Subject:From:Message-Id:Date; b=eYNLlu7g8n94XPf/s66lq+J6iwX9AjNwrs2EJu/sHLtkleYaSD3fbtU+QAvnSBanCxsjIruz8H6Cgd+jlPJioiVARz3Rp9XPFP7aOXj1kJb+KjaPelWmZGG9uLUMw1zRPDX7B4my198nGyu/9X83XNjwHtNT6w0eptMrky6OXcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gdbVTbPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gdbVTbPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19D2C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758929393;
	bh=VQMhn0alo0ysLtA08AzjfdSswa486R6vVvplIzKxn30=;
	h=To:Subject:From:Date:From;
	b=gdbVTbPWkziqGv5/twwP8pR03TTMJpXPHMHJIymPBvC+V+6gwgW5yqo4Rjr9WLG+F
	 tTiqijP4EdZq1kmUdzxqP8tKRZ8ZJvkP7ms4OwQal0zcmaEAutSIQHbFBNz/sWWon9
	 5WZ0AGQqafpCVn1xNNMvxO9yEjxz3p+ux9yxgFDOz6/+lufGiP0wUHFbYw2OcFqbdB
	 swWbtai0fGR5XttyklebL1J1RhOohv0teEcoONhLe0bkFjsZxkA0uQOASUFxjVeehC
	 s/CVh+DoCXtj0MoFcbHNhFFeusaa1klFrQEKGua0C6KHXUMWoQ4HcqIFo6StpcmEyB
	 lZRjbMyq4pVJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9089ECAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175892939358.12097.12324166848525455786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52bba0cbf06318ce569241a6b82eec91a410202930b2207e3a17b2b5453324f
Date: Fri, 26 Sep 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758929393
