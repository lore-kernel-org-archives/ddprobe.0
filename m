Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368C913049E
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729837554; cv=none; b=FGrTejCSGQ/9G5VHfMOy545Kuwg4uotCnXhMCzU6t7O+/A57C+sYt6TQpjEkGDotyw/ut9WII5CIpJgLe7hVPMXa6H1g7rADF0aNKZq9A/XYpJXH10cV9afz5+Fzgn0NVICMJsaYQed3SqJh/lEFyaJ0A4ivPJ5Wwz3xgQGCIjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729837554; c=relaxed/simple;
	bh=t2t6D2couLixlWA0aZ8+k+IYHg9fY55PP1V479/K5MA=;
	h=To:Subject:From:Message-Id:Date; b=UD+QGvUEpbq/D238GbIP83Xm6jni0LkFrE2rGY4MG28CMYEka86FHyvcVdVx27zstPuX/mJlbWapG2AynP7mktvlCERHzvzYCsdvybH25gf5adYIBHX8/vh5vJT8oURhzzwrK3Qrarx+gRpKKcPIiWe7p9quIuRBjdNvKt/KJQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVboE4Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVboE4Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8201C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729837553;
	bh=t2t6D2couLixlWA0aZ8+k+IYHg9fY55PP1V479/K5MA=;
	h=To:Subject:From:Date:From;
	b=gVboE4Sda/HA6n25E910z2HdFmMEH1yKk9a0u1T625Cq8X+D7IbxJyGTjN9LCEm/u
	 NmUsO5PQL2Qv9LAaN/qiKkiSQnkdpUBTd4FfnARmUyf98lhMcVl1xiQnwmn+X/t0Vs
	 6yvFVlcHWS07rlUrGaAIN8zP8UOiRCWQ/KmWzw2doNxW/biR1BX2r6OsBMHCEYxPvk
	 sT2jgd/79EzHmE0fS6m2IsqXEmscn3j3jaU10EASQq0viNkUkQ0wrNYZ8icWdhB6d+
	 jtdCFW7YX2MV+YoPqF8vRDuK0EK/oAZTYVFgkHMbsdXfgRxFwEXThYMNL/Rn52rjP+
	 Cfxqth+2HbbVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961ACD11701
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172983755360.23662.17900218325949026442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52b6e8d4cc31405ac74f0dc10e8618358292253b508150858bf4838c1e20523
Date: Fri, 25 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729837553
