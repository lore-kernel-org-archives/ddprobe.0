Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D6C2DEA74
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780235074; cv=none; b=NLADZ37UIeczgshrvh6t8Ks5jhGaeJ24dJmZE564Skt57UG21LJJh30Mou6R9eePIsiR5oJA378aTOqiQoH33w3rmXpOTioGhmNmBrjUMZBwHHWGk14y3ET/tfWF0iK01+X3H849AiMLvQdRpw/srn6vvcy6x2T3ntxxz8s9wxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780235074; c=relaxed/simple;
	bh=cINn8ojAREt3B+1thqV2YjJ6YnrYuEGvvS2TVYwbEs8=;
	h=To:Subject:From:Message-Id:Date; b=p+UfyqLb4U4szmrMc/+K/naYpy49Mt2jZNfYJsEp8zO239cyh7YfxdV295+bpMw35lqbz1hAHdHiHT2cPnZ4HImRo2X/yh5PvcgmxoOOiNb2XDLw/OisDW+r2TnE/Mjh0UA9LYkZ8rT0ut7sTQJd4mxzAhLKg4cwtOFs3UiCm7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0Y1CdoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0Y1CdoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C137EC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780235073;
	bh=cINn8ojAREt3B+1thqV2YjJ6YnrYuEGvvS2TVYwbEs8=;
	h=To:Subject:From:Date:From;
	b=U0Y1CdoXP1d3mm+hVL3efZM14zDYAJAXpsiwWWqfdqHkBNMhaqtreXdXRHMoUyVY5
	 ItmGBXdf8uZv6YJmTOFac0uonWx44aicWV+YC7n7kIOs1EhBQE/hQdVV/CVkBAIgJs
	 lQHhTDaartv+k7sKvNBCSJn+e+IL0WRBmGHd1n9H4tI4jq8Ak7Ecb90xxAXbNMpiRP
	 ap+gcwky/XqNBq21rU339I7lrEL1sFQTAh7zrL3f3RV1KYnchwudTkYc2gw3DC91rD
	 nWT9wB3sqa2pQiOBxOSrjzhFDvUBmI6m5NtOXgyZYvCFy0yhaSL4QvQNuUbCi59cba
	 4Cr5P0asyTu8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BFECD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 13:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178023507368.826.3975471014847586567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2cf53a64d05edbfa3cad8c5bfea8b5696132c01a14ee1e347ddddbf759ec8cc
Date: Sun, 31 May 2026 13:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780235073
