Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F8326FA67
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757262594; cv=none; b=EBcVFKP7081TKaWoGvlwkWEb61+UTsltNmwmab465coIMQ01JaOIwAjwXixVECsQFB1wWDXM+nDebKW4nIA716qlRPwM8IFUB0U1AnBo+9RWUAScLpXIJlnpDBZcx1T4CLOztUjXYb7pYAsn6qsImlC+1LrTI4UV1s7rpHMLU+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757262594; c=relaxed/simple;
	bh=dHjGW3eskNrWk68YQXkSZ0JMrkFrAoe5VURgkr4cy40=;
	h=To:Subject:From:Message-Id:Date; b=ViniBfUI5qFa+fpIilU1GaSsEcHfPsJlIkjr/FSXo0jcUuLey3t6DaEW0zznJeCHOReqlJF3xhiEPhUWsGgacoF2PDRAWX3D9AtU9psRusuYeLuaamOtDsmEedsB8/o7OPvoo7uuN9gpxL4tDAzYCG73njMeFoxPjOMVY59dZhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ia4/U50V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ia4/U50V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2930C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757262593;
	bh=dHjGW3eskNrWk68YQXkSZ0JMrkFrAoe5VURgkr4cy40=;
	h=To:Subject:From:Date:From;
	b=ia4/U50VRwveQf9IXXkWONS9odScFTC2hBvze9Dy0WHhgexRXP/pKnnfuZPA6K0ly
	 MvbEdldSCHReyUAzOai+eA2di8GGUFHT6aXNTZtJcAG9ZpJbR7uuz9XSH0M/hODSvr
	 6k284M8GneJ0eD+dnB7ISXneFBpSJGXpDFSLqBwLFlRN7SqtVAYMw5K4Fw9TJY4mDo
	 xTnRXoNgc4jmjDFO2/YYZ8J5ZsrXHtnMDXRWKyjLoVCGZ527TpINaamqrlMeERzvFK
	 CWi/DwVLvsaqKLw5FMVnjZgy2otRcOx2x7e7uU3Igvn6y3ebFkYtB1ZC6P5gZMzB0Z
	 IU6VYiC7OdWLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE36CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175726259358.27472.4227248522578911301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38fe3998d6656ddb1a16b39992f7e668fcdbd8081d9d3e1790e906a941539842
Date: Sun, 07 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757262593
