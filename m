Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770E82D1F40
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787455234; cv=none; b=mxvV+AU1XLfC0P2tltefdblr8POj6FphYqWu+YfP4ZTAnIo2F0xiPyrGXpurpdW9wCEgsXVaSuJ8VW1ZArRg6t/OPRxhdA7Pz0S0wg2pf0zkt0N2dIlpY5AJoA0wl4XZ5h3oaxHWlq+XHC0+Y2S1UrKs9OgIMVYOsfL/x9Gjwt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787455234; c=relaxed/simple;
	bh=C/NKYtyOQV+JEu3+sWylaOxShYZh4WwNcfhuLDilsLM=;
	h=To:Subject:From:Message-Id:Date; b=pyFXRW6ZGMbnXdB0hf465jVKfYCh1a47lAQnQDi9VwZYImvtqCsOWxGrWoVdgIOVkSWrHFcl1IcdethVs5jRhDy7TStQR9TBCM0fH848V+6rqnmi1aMSTHifYaQAYfzBtDoqoVtknuG/Q/qOuWaogXHVRESEkjAFzm4a8tdSFLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7dV+h7l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7dV+h7l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF9DC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787455233;
	bh=C/NKYtyOQV+JEu3+sWylaOxShYZh4WwNcfhuLDilsLM=;
	h=To:Subject:From:Date:From;
	b=U7dV+h7ld5i3EkUzusc1L8FK2zGey40l581b/4W+NhO1NCo7XjX8TFgVgfBaZM/0q
	 MjMB3Oay1uQ5klfn7e/g+NE4+9UALWSknRsfrKWrR2m/j6hXajcdPEP9gaNRbOZbEl
	 2td8o39JFydTcRAx0MyoOWxplOXlGv6uzMN8gssfud+4aa2EPYgepZCV64ZoVO5fB7
	 1dEAvi+akQFEyViwHXPHraBNg4dOjvTj1skwWJBR29tXgNJ26XdtjXqcnXajjl5u5e
	 AkS6VzdSquGNZvSwygAq/Uo1qX0d+cQbpO5U3UFrOaJ3A2M7OUwMYI08qwKig0hKE+
	 gfha2HMMZy+wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2390C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178745523369.18035.15591537869648057379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92ff21eeb35c2c7b4cbd4810a7d60851f2f4c2b9444cb8c17d4a03bfce44f0f9
Date: Sun, 23 Aug 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787455233
