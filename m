Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112812E6D29
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751545794; cv=none; b=F9AiyAugfHlNB/y8HXYaqHq3roH6SoL4PjJ4J+xOsHBXS1AJXrdUz7RCRI/CReD1ptd7yE34QKueOSnMKe3OhoaE9ZGoMIonGC6ekgOSuY0rRuqWv2rhyd0uP+Imol4/oclMWmJlkfU4lLbUCp7Qb3Puu4bLfKBfIBoT10/a8Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751545794; c=relaxed/simple;
	bh=9b/pl+KbNxxArwSzndcqF4NnCK69Na9HVoFjo9cPhKA=;
	h=To:Subject:From:Message-Id:Date; b=hXZaBvPDk8US0FSzzqeiBv1nPBLmEDd9TSFBnnV9WDgfXRdtdpkqbS36xRgP4P/ILroJcjom7XPE5fVAN2lzmWpsKUIz8TofFK27NtdlzuKFrEnmiXOfZOM1Ui2jfSeLyzj/SAFBkiALMMml+iirZXVht5unsbqm9Tn8Tbcpp08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mUg7Kr0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mUg7Kr0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFD4C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751545793;
	bh=9b/pl+KbNxxArwSzndcqF4NnCK69Na9HVoFjo9cPhKA=;
	h=To:Subject:From:Date:From;
	b=mUg7Kr0wZGYtpQcEZFiucv3bH9ZG/R+FA7ZCsOYzAS6loIMqYdYaeo9nPfi894g6E
	 C8Lw6EXMvhfBo30WAEAaIPfXVKRZt9KLtXKma0CLVLyhu4LBTpA82YkztoWhDt6dlM
	 AUDyNxOc4nGouyt9HkLwtPPRwCS8fnxG0sh425ulC77HMTNcubFb5uM/+gh61jDeyi
	 wdbPOBCxFLcNeD21xWtqTvIBXr6ZG7ck+7LMSWxt1l9DaT6I+g/AGw6s+0IsIVAuXk
	 TR+omEw+MAc4fa+p5akMIHg85AzIDGxbRaSLwSdTJ4wfwU71o9ZmwIUL5dXVeSr9Wz
	 tMLDt3z5gnTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFFC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175154579357.11339.8312854699567513341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10a234551591705c768abed83868e8184066b39e7878e8d3ead0601ff8ba4f1f
Date: Thu, 03 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751545793
