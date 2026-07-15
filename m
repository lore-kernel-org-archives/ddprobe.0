Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2C425B30D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784076514; cv=none; b=YOfltMBUl9IRjhRulcCpM2AJ6kM0ezl5xYqWjuk6mbiAxwVQEwPxKCr6vcDli5yUmjKTapkqqJuI/TRcuYsOoXS5/QOqg/toSsmKZkiFalcX09wlOXMinIzmmZj5YeVSAmApc0vUioxWVlNeI1kdYml76H0/77rUkRSt5dXnq4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784076514; c=relaxed/simple;
	bh=4WqSxzcvTZGmCit5mxQdST526RRIzqE1By1OhyDKSRM=;
	h=To:Subject:From:Message-Id:Date; b=CVWP92H6tzfURsF4Cwzh1Mhwq0MsrAw+WHx2TCw2DpjU4XjumYvc3Wbe5QuQI1hzABQe1zY6IYKTpxetzyuNE6brPw67PA7nvDjVoarkbg64E46uFz07cccEtfD5sWul9H8lX905swzMbTHv179NYcDGVXnJ2C7aPTDqnEA4VGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6blMvfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6blMvfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C8CC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784076513;
	bh=4WqSxzcvTZGmCit5mxQdST526RRIzqE1By1OhyDKSRM=;
	h=To:Subject:From:Date:From;
	b=j6blMvfglZVjImUOsFCzO9V4y3YuIdjHdj5AauzT2MFPMc5ShXtQZ65tiZAyY3lhT
	 4Ma7XN3CwXzgO3OjcAQP2GD68FuqM8v5Dr3SkmYAchX6W5qeoePYQMvlFhXWU25Fej
	 iaxtftcoAdvNH/bb7gkiY/OqWxajf+u7s1Y7YeoFv9E0er2WStxz5IdE25mFNZgR6r
	 6jFiDLDQuCO0xj7OIzYQ9DQadYoEoDM24Vb6TOxUGxMjEF9TPLYBcIp+C+48rgn1iA
	 OueUV912mra2Xs2xWdpCsuttVOlmv1tMUngNxur5hYkFRw1qOqx9oJ3wCHfin5qHZH
	 ofAC58APuXbqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC686C44507
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 00:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178407651368.27948.3299342777921592454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b1be5a32a3eb06bcfce359d3adbae988d61d3a7c68371289c6963b13d45e18
Date: Wed, 15 Jul 2026 00:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784076513
