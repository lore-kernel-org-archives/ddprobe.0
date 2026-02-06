Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255783EBF19
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770356034; cv=none; b=lxU0FNrpOKH1I9RwvSOBUsXhXpT6fzGgYT5z4N+7+dTzz0W08aPKDlJkJImL8NrVRtKCeze954CtMo+Rsjwjt7s7GLYRaR6huYG+UfqsJ3c9Tdutr0DR3iyMoZ4j/jAJMtsbjcnuu9XitlojKnQXLN9xgzsBMJwE6hzilqjxpWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770356034; c=relaxed/simple;
	bh=/4Gktje4OMTbOLkb1dUQHy1rVlbqXp9l77essj1Ct8Q=;
	h=To:Subject:From:Message-Id:Date; b=dvjwWBZxbzv6lLG72BdukfWtUIcedrblczK3jftxs1HJGGZBszJ1d6fd+mN87Y6sbJqkBZCuEe/XboQ98DEg5GrfDmwVavU4i6Xq1ICo+Gqgdn8olGIGgEfwfX3gPn1nASrLdcdk/hicvii2IOvQBED/QvOeeA4E4DZJkFo2Kgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2GTjkfW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2GTjkfW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11BDC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770356033;
	bh=/4Gktje4OMTbOLkb1dUQHy1rVlbqXp9l77essj1Ct8Q=;
	h=To:Subject:From:Date:From;
	b=L2GTjkfWNAOjoecejDVg4Anp8A6pZMKXK1wHrJRm/73qIcjgMs3RZTg233kavEmag
	 5u8qNEaMsuOyW9AaPD3SAkoT8feAoMoGx8wepX7Y1mUIJLIFY2727ZtqIfVohR31lB
	 S9Drhu65/uOn0IQcZy0/zXQVuZkF/qg1CCUieRb85wP86Dxxv2KgDEQALz1zRnL88T
	 HrBUbub8YvP5IHjwz0+C4RWH8ZTMQZWjJL/blPLmHEjP7k0022Brh1U/vnaMM2Tefb
	 npv7moRGombwMFbf51/PAcma3NZUGgOOMzhgFtLYn8S0hpPwMXf8LTL0+Qt/KYQEYP
	 lOJpEnJl4XXVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E418EB28C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035603360.30907.15022752843479611998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af077e4381dd01ef2b15f4517e3a4952b56357f1c2362773e13264e05dfeb7e3
Date: Fri, 06 Feb 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770356033
