Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3F4311C15
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761304194; cv=none; b=c4W0lngl9rsaakV+r8mR+6Ocd74Gm8eNsWo3K7Bdgk3B1lyZR7d+uSlrBijaAQsOpoMxmTbF80MXjju7K0wGRjWezkx0ejRzy2yF/ZCKslZgUSleo3FfBv38BpQVE18XTzjKMwkuQgVyjsJkWdwtdKTaKUo5wousfXnzhr6BpIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761304194; c=relaxed/simple;
	bh=edq1NjzQmeC5rpgyx1wIF1U9wN0dtnbpT0zpzc0jcik=;
	h=To:Subject:From:Message-Id:Date; b=LIcMdoU/Vf3s7FeY1vl5wxFeMkETT9PH67jRoY39l/dNkoXnx5EdHOwAlwYVURsRgvj5G4BarV6kHR92mV4GL3UGEt/7jVSEJsjL6j/z3T1ZKEln0hbclHcKXwmm0ugo/b/7X5cKF2nYhpnClYzjGb4xUdWj/P5RQjNwQnY3ZdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuGs6OZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuGs6OZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1390C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761304193;
	bh=edq1NjzQmeC5rpgyx1wIF1U9wN0dtnbpT0zpzc0jcik=;
	h=To:Subject:From:Date:From;
	b=fuGs6OZNw/hON0V66SyfY4X6gXpRIeUQ/RURePHht8gE0tKArc+YiAMqE0FuMe0WI
	 JtSqAIdSA3LospMOq4gA8RkaMMeRpbtW3UFhr0sVe+zaBmUUCs+8KSxqp29/TFRO6A
	 ID0l3ONQem/y8KoVr+MI4QYM33MW+h0IpUEP/XPNeV1aL5BkHRk20Z8qwL327q88VL
	 b/UdLtC0fZ7ZisozT8OAiSOByejEFtViR9sYE1GRgzogJiOhlW8PP280VXO+UvfT/3
	 19tIVsxzG+WTsSxKkXdYGY4g/BAFfx4SKvKLNqzC1uV2jAs1W0BhlcTuph1Xhhsve4
	 egimCabi7ICGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D6CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130419357.10391.927818988179095219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f3f6e20975ab83dece5c62c69a642b967b7bb26eb22027aeca692754775fe1
Date: Fri, 24 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761304193
