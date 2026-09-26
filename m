Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF66356762
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790464234; cv=none; b=bV7kZlb+NO3NCP25Lg8Xn4Rw7fP+XWO0gL7MYgm2weW/u+llK+XENhzrDeXeiswMppZ5fdYNL7C5KIcFNzjZ2gRbOs9KSQu3muVxZWSguidS400vM7LJpgHWXzfC7coPBxy1B3I8E+pnFEkcazCxY1R078cQ9AH2NeyJIy0Scfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790464234; c=relaxed/simple;
	bh=GuvJeA4UyngKdypG9M2tklXDl4i6aTH3jCdpLiopLDw=;
	h=To:Subject:From:Message-Id:Date; b=G42Yo8n0iQR9W4JeZmhKpqWPhDzMI6WYi7g17faba29oMn/+CF2SKVlQBJT2HTd2XXe1rDV194pNW5FpW4jMjWIDIAn3pkcnbNbBj8rqF2JeJDCkjwsnGE3q0APWZOLacUlxbetPYZn8rEYNNxVVGYAnM9kUx88NFKbh8iMyi8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVEbF316; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVEbF316"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3DFC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790464233;
	bh=GuvJeA4UyngKdypG9M2tklXDl4i6aTH3jCdpLiopLDw=;
	h=To:Subject:From:Date:From;
	b=FVEbF316wXJZLwJA2Fx3MPVRjOrpt+Ylnn+VruOC4ONYvDT4T/BECqWImHmI6tYRp
	 ft2L+St0oOSrm4i/Jvhj6B68p8EUHG1+hoxfonalI79dg97+yC1py3/i+Uo9tKbo9m
	 KCdhLZfinE04nlsExmG2srrx1VnZibim0mC41zfIPGl1RVc2JyE7Fg9DxHs2k7ZBQ/
	 aB+3+nn2NLVQb8naJ+VXRw+b7yfWQB6ra0x2dSLeGtXOX33ZbMPwiHzbUyVZnhwd3z
	 RVhgzw7kieNIcUiGd+CA+8pZRro+epXkjo+JUtVT4FHhYhbeMQ0oq6OTUlBYNjE8CT
	 JksRh1b5DYkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B34F0C98328
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179046423369.7650.14617312106353639459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de919d9203662463171db08125e04a6538efb9eece061c4192110049ed4cb880
Date: Sat, 26 Sep 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790464233
