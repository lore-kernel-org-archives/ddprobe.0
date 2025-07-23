Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1171C2882A8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753263594; cv=none; b=YTMeJYQ+butZnJPMsJhY2D6D1+aDg+rsWocj1Vl28BJEzTHkTdFVzbpSfxXCfwud57H2/8rAHAtiR6V5e+rm/67Nis93ezjbPuoPkpJrzAN1CvVOyd66xriUhUI1I1HgQQ5toW+gawWgGeVwRMawcxp9CfTNVMFxDn1Oi+s4iS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753263594; c=relaxed/simple;
	bh=YCd9xfV+YWQbQBgtvkr+9shHZOgRNVMwLlOMkAtIWQA=;
	h=To:Subject:From:Message-Id:Date; b=U9zCZsN1l2B7yhcceX2Jvu2cdmYZzYl618SiR8lFVxKTD7q3qVZ+h3N1AHHi6MWTs70E5OZA/qWwHTnXaYFjOzCY8I77eGVtCHo8NCMn4jiRxsTBPMiWXgOZqQKWUJnsrZz9YWDHI6G/5RvoZt4RFdgFP5YTwdmYXsb0H4wcx1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPkzjw4F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPkzjw4F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0805C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753263593;
	bh=YCd9xfV+YWQbQBgtvkr+9shHZOgRNVMwLlOMkAtIWQA=;
	h=To:Subject:From:Date:From;
	b=MPkzjw4FfysTsQRDhr3bbX7ygqquV3eq3nT9B9TDIlvelx/Goz7GejobG4TQQ9uur
	 J4VWakiFw4J377i3i/1E/81mR2FtqXX1hu4cJUfi1cgWffokw84Zzh5Q0yu8levMyf
	 zbEyPPTiEr4q5xNgn5DpPiWW90VRuOfDhLo2JqII4d7F5KU18nacmJu36nGTZbYn98
	 MGKVwZsN+E2Q40fVhSCDRiOkNnUgxosyci5sV6uMVOiK1l2Lujls5v6Z6mLSEy+VVv
	 L9QMH+rYKncYp0D3tFFVvPX64VU7MQ6yaVmu9pbqnZc5fG6r+FiBeJ/HOtFtmzEpk6
	 PbYsxbGhGLatQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC2C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175326359359.20554.16627430326415086031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea423b6a9116c0a36b48792985b84c0845da8ec318c1a5f1e662263dc425749c
Date: Wed, 23 Jul 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753263593
