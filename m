Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C23F3093CE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760567394; cv=none; b=R/bD2FknUL52xBa3H9yu+v5if3tvBFIhqZIaTCu0rxXd9hKEog4PRlUhqzSpbgeAYeTtw3IA54oQYxlXBQiS0GS/hXzkktzfHOh7NlBC8C/mt2jWGHhHzECCF9AqS+f1k9gBRWWfmBvQokWJUByPxvooUUbaSdaKpMUdtE8OF3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760567394; c=relaxed/simple;
	bh=Q5mQ3UHlDorUQxLTZ02j7Vo7JaGT/vRtuff6W94bfIg=;
	h=To:Subject:From:Message-Id:Date; b=BOqe7gyrVOUt7XZnLyOXCH8cbBhJiRQUPFzQJYtrwAQYOOGj9mZWJ+r6WW+qqPztM7fJjJf3uApDBIKMUuwAOHFkjTLtrJkuDq78syZquhfXzWDWVvuV8f/av3TZ9bxc4JSor25PrO/W17s0inGi04L6M9Bd8y0D7qXvBkm/OmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEeuOj8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEeuOj8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8397C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760567393;
	bh=Q5mQ3UHlDorUQxLTZ02j7Vo7JaGT/vRtuff6W94bfIg=;
	h=To:Subject:From:Date:From;
	b=nEeuOj8ltjpKtzFYZ9PmpiNgfOSNLSIiz4FuKPMNv1ahxabaxpW4DoIVpY034EN4a
	 7l46aAI5l9g0JI3IiRO20cwJzdKZgO5yVZ8famKdeZcSfSiH3PH60Z+ZUa79QgQziQ
	 txi51u0gmPTSaYt5CWOFP4Vz8808uyLXTo5IMvxQys2xc7vPk92kihvZntmrp0RPHF
	 3n58/kyD1CEH/NQoiEODef1mxOs0W1pq2gsq7K4al2NXktQTaCxLhvJvg0JAIgyZpM
	 ngkdIVP9cuH2QJ/lGl+CDFr5vLRN0uTObtBVO3ihYXiHsXe8+sROK4eV+E4iMwKjQK
	 S65+RZ3u5S/0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957A8CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056739357.19559.9387846674573532090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cce7dd116c16f5678061efd6871d6b6216928d49f7dd3ed01379c022844d2aa9
Date: Wed, 15 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760567393
