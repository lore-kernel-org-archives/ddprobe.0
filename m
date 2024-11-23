Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D3741862A
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732386954; cv=none; b=neYYRIvxJ5ePAFyixM2Cv7ghoAuu5wffj+8+k98HMVURHsitjK1jnwWMRP0nJVHtGF+6kSlW8tk3pjXMMSOSRxvfSrjAuEZxtGSnjk7gKNl4EAwVRn9G/jFhVHXLXOQPzpSgEIuWOQ0iE2yvdFkGc7w3zDJ2wxU6RYb0xg8pOTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732386954; c=relaxed/simple;
	bh=RDFBEP7WxTX70YPax8ss1s9UFSOrf0gXl5uVIjOptfs=;
	h=To:Subject:From:Message-Id:Date; b=PDpmzvsXvlKo2OVbgdCyWbXDyYFMQzUarakyfVS84crZyDwYikjBeJ+putCAix6k1KFaO6U1EhIFquNlVnKEGFDbcbUwOewZy7COBX+UJ5zO9GjxgoJScakrtNGec8s6NXJyT0PcrI0Venn7AoIklIiRZ3wueM/BCwF/jxF1YmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRDzETRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRDzETRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F6EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732386953;
	bh=RDFBEP7WxTX70YPax8ss1s9UFSOrf0gXl5uVIjOptfs=;
	h=To:Subject:From:Date:From;
	b=NRDzETRStFI6FDPRj30tSRGVGvR+gD5u+3iSP8FpXg93s/zi9xe+NjpK/nA/ywngm
	 lBVSARoy5Z9ZtHCvidpE2JhvrNEFNKDEk12QonAOBGoNc3lEq8kHyXHP1U7yiIlRfD
	 olf8hI80mJIpjtGZR47SivuABdJ7OtCsFHXNwO9voTZdoTrUDK17spXxzryEO2IZWh
	 HG8YOXzHy8M7bHpuHF7XvbcwVCc9eERcRLTbBAS8MhMgWMyK23OM01An3wjT6Aslbg
	 tDH8xjYP+hYSZRXijd9/SM9gSNp6cZx4G6WiUxIJIraDflb3kJWe6M5P5WI5g1i1rr
	 vxTZCBy5YVFdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96674D75E5C
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173238695360.31546.9242808727197925249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfff5eda9910a8793535ab7d46491bda93e880d7b963862b5ec7522b3f6b940c
Date: Sat, 23 Nov 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732386953
