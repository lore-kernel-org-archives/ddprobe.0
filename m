Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696FE3A3E73
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789974034; cv=none; b=V/0090y6nQcQyM/7UP1vXw+rAIQb3BtA7tv/VooSq5EJCGNcdD5MVa0cJfNA+SG/ISREVmyUVDuF/xMNXs0sL3fQatZ0qn1NDhNMbeDNMEbgftlVy9W/VBKsrvjML60vrER3O0UdgmzysMq2WvWScYIKL0zmLbztUCYkshcRYCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789974034; c=relaxed/simple;
	bh=XNHQlYZsIMqMOtMb6Y1of3ZUQocr8UrjlV38w2rC7qM=;
	h=To:Subject:From:Message-Id:Date; b=TUxV4T+Qb8hneQd6l+2/phNemaj5jvrVaKIx6lWkQCzGBugVy938yIvSbR9el0aVD0EhUyC8yY7R9IRnarimRNq5GDzgc+VjqYeS4CAVydSSNBQL1YG3lT551oOmnWeaI/r/1YKh6dx/IZCHZQggcn0DJkAdZso2EUMzwtJ84Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeW/lEeH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeW/lEeH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E94C1C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789974033;
	bh=XNHQlYZsIMqMOtMb6Y1of3ZUQocr8UrjlV38w2rC7qM=;
	h=To:Subject:From:Date:From;
	b=jeW/lEeHEFblPSeK7zzQYALQXaFl9aoiFt+11o+6nVHoIzlhKgHNyVJ7uFp4TQQJj
	 8MhM7gR9ReLlcsxVh2JCHL5jzZhVE1id4VPBdhsCEppK/h1T6OFA4f7Z+xpT4r3aAq
	 u8B2jAtRpHUinbml5KO2MQlan26mxkqIvQYEY+3vhfx3KSDcPtEiiQqmitN6oVrlWu
	 lui3xZQpGKmtmr9j0X4ee+uZjAGL+yXH2DMrcOggM6MJlZV7fGLn6CdN41eir+HWza
	 eX0RAlpBLBNIeO6THrbNc7GzmWF6J1lofNdjyYV5D/l55I+bhRPGQVtgbfWlEbvO+6
	 DpUAhwlZcutMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6E09C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997403373.7094.18128941201346105636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac50532143c32cc7c9730b539d40e3b3637bbb7b82ca1c5bf4b8623e88180968
Date: Mon, 21 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789974033
