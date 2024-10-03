Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379D018893D
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727959554; cv=none; b=JapAHr8XUnZ1QJX4HFgjviVEDd3Unum8meDJGVlXza0ou7NF8Qudzaahhc+FKz5mfhgzUkCw/tv7ir0Bap7XTHp1acyrwnEXkac5IbN+riTj+eecDQLRrfUkBTLtW/lfBkTDEhS2psOnQyxgKbUm738vP1FYfZEWjqE6vbpwqn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727959554; c=relaxed/simple;
	bh=z5LAjuq+9tMOXb5VoC1V4huVzFa4iAw7t6vw+acIBrk=;
	h=To:Subject:From:Message-Id:Date; b=iRcHilMY2nDUlvob6nAQtqRStXFEG49genX/rp8sCv4yNu0jw68G9XTrEj2Bep5UqEczcXoh0kq1X9iNb0G7VX+/rNj3I93tg6fHXMqJu8BX5LHXVWhFu16VUB5fOybMwwn04gIQLkGN78qUF7NK4bs7GEWHU3+18PHmGdMO5p4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gQzJMNa5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gQzJMNa5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C063BC4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727959553;
	bh=z5LAjuq+9tMOXb5VoC1V4huVzFa4iAw7t6vw+acIBrk=;
	h=To:Subject:From:Date:From;
	b=gQzJMNa54AnQLcbdTuMuWg2F4cDAO65uRhAwXouqUDW74XkVSfMPQzSuqUgs6dIHV
	 aodhmfilb/JRwSaBKVEm/BMXoQSLmRE/L7J9I5+Nloxc26NYcvK/OfJD6r5h1Rq/FL
	 nt6h6XShxB9yfsla2rLYQv0yhSiAk4ZnH0XWf/VRua34f9KCFdSzvybtLddRnqmqeG
	 +UahMJw1BTc4SiSkd5xccHLXzPF2HvgB53Zocir+yD8jJw3sTNkse+mZUIOdIViw2e
	 sdzLAeM/+vyKIa3bNIAUutLMtwpJ288wE2ljiy+2nhJmesv7jvknsZoReU7nPhKWei
	 SUuNEfQLWU4IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDECF34A9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172795955369.18064.1272392869904868736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a50488c544d9c4bcc53de71649081e11205a507658aa3a724f4bca1c117069f
Date: Thu, 03 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727959553
