Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A79A18C332
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782296254; cv=none; b=FPYG70Vp01vzcpHKaNSX27PMtGVJNb/2OjZ5onNuZoM+Y9iW7TgWe6wGV50iIVWs2Phi/I3Ar/+7qD2J6TfVHwmcChjneG3bhhdtBSBYZ6+h5lXbM0sRfD28fbhXx1I6a3Ei/2M5LO8tr1DyLEenm50x8ll1X3zLXbs9E95gfPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782296254; c=relaxed/simple;
	bh=RGkT1HVd1fio2/A12KSnmg/DQJOS0KCcIqYYxtfefT8=;
	h=To:Subject:From:Message-Id:Date; b=uWPaUnmh2GCpp4QpgarkZhWp7F0CQyM737gttTcY4No16iiAYvxH+vQZy7OuWwP1tMWtpnE2WrLl0TmYEjidD8gqhr8Pf9EHRfuYdNa5P8Hgg+o9os+2VAR0yey+bctBI4GUdjs619BByyIKIiupCnXn5dYi+FlGPQtmqKkOkMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLlgWIrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLlgWIrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC16C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782296253;
	bh=RGkT1HVd1fio2/A12KSnmg/DQJOS0KCcIqYYxtfefT8=;
	h=To:Subject:From:Date:From;
	b=OLlgWIrGORicIWB7cd5F8SWbtzfe0DJKm1JhxRpaY3/D7wzO17kpKL5yMdsfrI8+o
	 B1BJSdETiq2+8nDVppGv3pB1f4WKAJpcRJC7p1K6QnGwhkQ6fUlzVBtN6qLz2QBLIn
	 N2hT7L4T3TuZuXF1ET/GYjHZKv34LaasB3vZIU5vHlviNnb87a5Ubrde1O1ikfYkRv
	 VkjPKrCkHdALbb4mFyH20WTCrJqXMtky0V0OiD3XGNtt237LdgQyAtRyHg68CgorE7
	 XCET+uGPxiHu3zDhWLBOo8/TKVCQN7CyZTu28mcDxVVCAyDBFyrk2BujJSE2huCmP4
	 5QsxKDEfMqggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B20B1CDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229625372.4051.2120425873389439956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94cf6f127b66c60bed9a659fafd9849c69a9d9f63f2be6f3295d382fe4be6b36
Date: Wed, 24 Jun 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782296253
