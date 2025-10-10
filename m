Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3055426FA77
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760090994; cv=none; b=gkUed+5Ge48/2PVqaAAM7x3NCWLNBAVG8kmxy29HON3y/VpJoGWvL8f9vlXmRA6FLBIG7brRSUFf9RnibD3/E3DaVyWP/ozBTnv6tGnJAKjWYcZB9esOU2mghP+aoelbGoUyc/b+7ms7GFmBSAH80a8LeQPkl5lr90byd5GRHfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760090994; c=relaxed/simple;
	bh=mxMvOtaazOYLG02j/NWA2uXUj8wLN0oTpTM11tZnNCI=;
	h=To:Subject:From:Message-Id:Date; b=plcQbtPuzlmOuo+P5IdkuIX/suoXW5lgohBR2XPRQNr3Er5XSON/6HA08sKSlFhjy/yd3mpzb0N9u6gu6YVnt2ElElaEACjQE0hCbx3+tvS8mQqhBf9pC4d8OdrEbppXf+ezzig7Fkj5oUT3JBqDwH7GWKgYCISIv680yE6cPNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eq4IhdzQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eq4IhdzQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E4DC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760090993;
	bh=mxMvOtaazOYLG02j/NWA2uXUj8wLN0oTpTM11tZnNCI=;
	h=To:Subject:From:Date:From;
	b=Eq4IhdzQs90o+jqozL04lET2ILmSpyNlKPyHMxS0P8UXue9YN18UlVIcI0BSjgZVc
	 wYNQAvz25lcLtzQwfkkIDh+Bdy7dFEr78qDZg3Bz0W1pRCv8myjfhrlEh0e9yrW/La
	 rZasyR9m7IvldIkLdkIuTlVmyRM6PgIZK5O6+RHuos4/qxGdJkFiO08Yt2XYjLZcHG
	 VB+XplJF85ntLWeg54Kig8pb4tqDqkWOMHXrBbt+h5dMzsWVzqx+x/38k5LXIfylP5
	 VkPct9NhoF3/TDtCIBWatWxQxlDo2W9pA0ndreCQeUmEyiLzaSBTlJnPQEBjhuXgtL
	 6zYvUPRZ+Sgsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93248CCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176009099358.6954.1911124047895741115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bad0458f51a71ff6a09054fb91ae5f945013305797dc0586e6e55a1505845b4
Date: Fri, 10 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760090993
