Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365A628E0F
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746678594; cv=none; b=q5rJQtUd63kHb5irkI16TKMJ9omdNlG9WvQEUk2eSPI2H+eM4Thlenay9wPfiQlJnAQVZxmAZQXW7JXQUWcn3K6eSUIq+Lohm5ddWJ7YF7eMxhrR8KhdCWDvd83/F6tP+mM6JoELEysWq1S5KiWyeo8hakp3H4NEgZnflbJlxTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746678594; c=relaxed/simple;
	bh=qxXNzGtybntlVGhJaJNwvybhlmHNxlZvpW9ug9VeH7I=;
	h=To:Subject:From:Message-Id:Date; b=e35p3GjYU3hQRr3qFgpNqYqA9AbE/qG3q4YSRY69vdbIu/SBS5Qwa52gQOFqdSBk7f+6j3WEignOfeZdeTAIYSoKjTWV3YbjgwABN5zCipSV1GXr6UwkhLaSdz5iu7dJNgqc2zVS2ih4DQAMJQDC0cizRLE5DyvTzlG0oIYOH5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki22tpTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki22tpTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3A4C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746678593;
	bh=qxXNzGtybntlVGhJaJNwvybhlmHNxlZvpW9ug9VeH7I=;
	h=To:Subject:From:Date:From;
	b=ki22tpTjP35td9N1V0Qw0vfDmYLiiTBXYN5/wqUwcDd+4izQbs6t+aQWuo1q2acPx
	 WpumBPiWpoKVNN7VwvJOAlSkJWIMsSUqBRAyyQRsvaxawOZd3x6p1zpYQIRmhYkvTT
	 ykPH3fzJb0/Qe1SVnlThXYGWSoAT20oLd6B8oMo/4IqpukGeVgNkEa/RYzYI0Ivt84
	 bH9tvNmYoR9ze9eaqDc2gvmyjeUPArhTnWQMiyYvZ7l3eTJHg9Dz2BiIyHhZ0r+dwN
	 V/oF32BZurPJyNng2rNUMF1DXeIosuQFBwB3Moety0kCbm19cDpU3yL4ig/ogwnY8h
	 hZylL3iRpDm1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F151C3ABCD
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667859357.4318.6463278693812655022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734e2f9271769d3f1d6ff866532ce403c3cff2bfc5a26ea2811dfe2ceec73ab9
Date: Thu, 08 May 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746678593
