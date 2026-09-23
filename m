Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D54C415F35
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790143834; cv=none; b=cES2BagmFNFMEYbLjFUPyAF9GTr7YheEqg3r+cRvcGB9eJiUqq85Xf9oM5z8L7ywUMez2bsBFHsqL2pdowDCi+4PKcRLfF5nIY3oB1Ul5qXJfyO9dtjxmzbChDPkyJUCZ0iItuQMjR7s9KkvMB23pE4klkijinrjDo6BA6ojQzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790143834; c=relaxed/simple;
	bh=bQ6ERnQaKAvsl8Mle5l6nMSbPgzpbu6qI65XS+c3Kec=;
	h=To:Subject:From:Message-Id:Date; b=AYGiWPTXH1KGpxZ36OCuaRzXcICGFAJ8uaw09T4l/z+E+Kl90KMBJ2dTGnpu4e7eGCVFH8/wZ9Fj1QzHmoX426m+po+sccQW7NW5QxdWQCtP9GqJ9EIxvTbH7paoorJL/WYeE/XRnhfhlx9gQ4OabeQEqOhVBYOp/PnTc/Jt5lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNMZmajt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNMZmajt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBC51C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790143834;
	bh=bQ6ERnQaKAvsl8Mle5l6nMSbPgzpbu6qI65XS+c3Kec=;
	h=To:Subject:From:Date:From;
	b=CNMZmajtxytP5m4iR3+Z7XUKkmM892O/2Ukc0wdnMMPvAWSCORB0eCDXgeih6gAwc
	 yE3GI3geD0bl+juLSj7eoQqNYpS8JWn1buWf31cLfY8WJgFoecqIXeQIPLe60a3BfA
	 bu+HLRFAEzDDgTVH51X+qbyEUuSybEYPqGzTEbfX/1P95TEtd1n7lS0KsUwlIcY/32
	 AFp/WRdLHIWv+cEsbwO69CS8zw92Vpl117bzJ/iWzewa2ir46fJC/DcocjERJyCWdc
	 wi32VAARIj25Ewm3PighGNUwjdBJiTNFZ+VqWVzNHIfdWMD8y5k/M7csZJSDayskZZ
	 xc7Ezw6E4sq5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4B6DC98302
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179014383374.8746.16918236026837718378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062b35c15b6b16526f700030076d4fa059b85bd25f6143d4bd84f5857d4c4448
Date: Wed, 23 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790143833
