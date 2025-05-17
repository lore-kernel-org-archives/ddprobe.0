Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F04C97
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747442394; cv=none; b=lUC6uC5vvZImJUoa/rn6b5/uGh9d86VhX1+07jF9o1w4GYP269D9tQVRI0q2sWlmRRT4+YeQ83jQC5SwjbcrenzY25ayiygkOpWAqqzrgnGpHljxMArfbeOLIqJcvBKg952YDViUU4e8Lz6sEYaFhp2fJnODkDOigYJtoJ6MFUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747442394; c=relaxed/simple;
	bh=vZT20VoiEyvVDW2atTUGKWtH1Ffx86h7p0A6DF5jI+4=;
	h=To:Subject:From:Message-Id:Date; b=ILXoIrkZeTgQrjUQmaN3vBjwVLZBK55aXVw7y3DaiEifI8SjB3bUBjWnuePgGDBxauuqJJa9967iWOqZNF63atl5OEnQI1/OyzgkdD7gzOLUVlESoDteHH3T4gqbzyWwVZ7Q6QMeHB2dy+PLpg9UnZGlLZSCkmYGo9eKsOdrMSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oN55nqTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oN55nqTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4804C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747442393;
	bh=vZT20VoiEyvVDW2atTUGKWtH1Ffx86h7p0A6DF5jI+4=;
	h=To:Subject:From:Date:From;
	b=oN55nqTkDOPnGG/wCqvNjz2LZo8Qsi8F4Za4KcqdcS5JXoOMByqGRuVdzoAP2c4oI
	 o3ndiYsN7fHJBMBOBheYJUfHqr2CetiOMIy5OAAAFF8xDFznBAg0JyDaRRfwephqNH
	 PvHc6/EkdpueW+M/RCVvS/lv07x9tRTXCTLIe2eVSSVgFok3ViUNCQz1gWvqlj+EyP
	 rxRZ2IaALvNU7asrKmdKrmARJRqZdJ0/SGpkP28TE8J0RCYrMlTekw8wjuzy3NCx/Q
	 KkSDb99CofRg18XSXurqAvdS4Y9dv/edPS974KoaCy3dt5WjZzSU2vF/7svFDYewA0
	 sd8wzhyJ5tDVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91492C3ABD8
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174744239357.29182.18219825890824914889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1646c171c14695b3791e9f10e27013dc08873f8c329d14ffa24ddf0ed93bcb5
Date: Sat, 17 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747442393
