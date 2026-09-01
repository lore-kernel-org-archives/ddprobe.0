Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C71664314AC
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788271834; cv=none; b=sdUqwrwybIfxMRRw/4aW6YBoajpfrNmfCHUOiZCuqGBj2Az2vx8guPFzj/M+yaweCtPx2bF/20Ba8uNz5iMNibJoluZvK1fovKkrXfAlA+QsR1yfPpxyXYwNsI4Y/dJ0OZTPaCcWnQ3GCMo+jXyMPihUwJOPBXp0WJpYV04YZ6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788271834; c=relaxed/simple;
	bh=SF0GkW1ce/9nroANsx1AJykCFEioQk9fIBNG13aai9I=;
	h=To:Subject:From:Message-Id:Date; b=oOSdPpN2/IuSK41wM4XHj0ACPknPW6wyI4AYxQSmEwfORmt1/CzmplyG77eZ2+TSyxyL6/UiHGVB7DfcDCQClAUMAFOSzyOHudZl0oT3/kJ0xprIqFwHAp1jWKhbdhV23Y0OAUE0UunL1+3zW3JJaiJfhtJFL9D/3LJau65AhPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FekDBbxQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FekDBbxQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DE9C2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788271833;
	bh=SF0GkW1ce/9nroANsx1AJykCFEioQk9fIBNG13aai9I=;
	h=To:Subject:From:Date:From;
	b=FekDBbxQS6pM30tqYvj1ZNVNlPTktYFtElDOIX9QhPSTfIpnoZ5R0invAnQ94o+P6
	 fxV+wgk1NBcvjPMVoVIrFyvRbInxhz5gIZYDX5sG53MMomufqh+YtoZF7W6mpI8/rA
	 EQBxSxf3hc+2MI0lrtIB8LmzTIzEXHObP4lS89tjDQ3EkpEzaBrcdEkK6A2ENnoOkW
	 gZvyHs3zt//86cs5uspFHuED/60EYyAyOYBKpTuaA4fT7f0cj6aJKP3+eZaxiQ9M8F
	 YUs5n7EbhTsqbaWygqf4dk1j3aakvNSH25vMw+JndR0h9yNmLILODhWdaJM4i3mTAb
	 j6Y/qGyJD6JGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA26BC624D4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178827183368.24732.122800826182565523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67cbe5b025ccdd6a0fb0aff0dba0837507b30fd91f7bc6cbed4204bf5afb530b
Date: Tue, 01 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788271833
