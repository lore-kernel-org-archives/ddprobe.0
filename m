Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D1382291
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784313514; cv=none; b=VSHGzk3vO2v21RbjiwWgO5/enLKLlfCqCxKsZfrGxpgoB8VBrVsQul9X7aRSGfZm/Zb8680zcuImsbryfmFDqS3AkcTgmH0D67xFaQLRRXbYDuwuu0VgReUP9KdFXLNEOs8EriECDQBPF6dTu8bPTFyqLX1aY8rFB7jSzGCJ/Vo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784313514; c=relaxed/simple;
	bh=/wXdSKlRdbcavmwBaYMnAhr75BGJiRSeSrelFf1ooEg=;
	h=To:Subject:From:Message-Id:Date; b=CJM2xNA/2oJ/Nk5tYEd59KxPV2kT7nQT+uxZTe4kO7ppifr39d+L73d3W2os911Ac+K5rTeXoK1piuzh8h9Ith2GzobNgxkZCQMFRrU+lB04oy7gjdPa/f7XDJynCPFhksX5kiPjIAjK+0bIUJS6vnLP/ITKji534OUWrEwJoD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5UoIRUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5UoIRUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC888C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784313513;
	bh=/wXdSKlRdbcavmwBaYMnAhr75BGJiRSeSrelFf1ooEg=;
	h=To:Subject:From:Date:From;
	b=u5UoIRUTOtI7bSsSf725lbN0axduKPjU5TiwJ3N1IsGvkTehdhlauBBOZA9lSEuJm
	 Z9j9putW7sidy00zhw2txg4t8qSKqUEY0P1V9uC0Vc4wYoL2JyWrSYX/7DXcb02YH/
	 fsunKJniVapusICosYbdahmVQ9SXjjG6Aa4BwJ58c5vaRr9YO2TvHN1nr2zVrSIi/9
	 sz4l59zLEMAK+nbV+tSvcmuvE6FFTb5SzJlS+Hi/3SizdLaXwYq4CyJJ5PJLJzcS8A
	 VRbcAsXfiewoAAWX6p4Op0J7GdZSJSh2tPHkxgHhu5KpEUCWHoWMOHMNIixh8450v8
	 oGmaa1EUi1YLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9836C4451B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178431351368.20906.5630725194027444486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa37571623fb776fad9c3f0b7ec4c176324470e65c93ac829f6a3c086ce6ceda
Date: Fri, 17 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784313513
