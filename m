Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDC72D12EE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782914314; cv=none; b=hav+mENGQdCLQGRJUd9jfz3geYKKuOfL9P1IkUQsQESkoADICntFACDv9ARKPS7C94+bN4G6UAlolVlBksIELc0q7gOXgYHS+qZ9xmNBGvcdam6NHo79OIADxGIF/2V9f3LInL0KFCnQdTmdFHjPT8qnl5pejR5NXHQQxAxhk4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782914314; c=relaxed/simple;
	bh=/MP3Y7RWZpR7RCuddFFflwS8v/kqafgCPiAtyg/P/24=;
	h=To:Subject:From:Message-Id:Date; b=al9TMbqZ8KjNU1h2w7xN6L6pg3YEHYg8Zp9WF7ASB5AUQe6K28xLxuV84s0rGmpZo1UeVFMnxVK5aoxeaYq72DsinIqlbTjxWlevng0rJOmZnDA2LKn4mden2wr1P3KmQsnWxNQpR6FO7ZygmR/8eenHnELIRm2jrVFUtt7J9T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vcx23baW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vcx23baW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F24C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782914313;
	bh=/MP3Y7RWZpR7RCuddFFflwS8v/kqafgCPiAtyg/P/24=;
	h=To:Subject:From:Date:From;
	b=Vcx23baWpjavCS4AUAlpT3gXmurbCm/EXVX9QNObCeTY4uTWn2qgkSiZ4WnAV3ZGu
	 z8htqJ6SRbNExCuE7pmMw/zrqbVMTuVjcPoZhHHD/h1S0Ub0KWIwDeMWOwLVvteSkg
	 9uKlkSsnRj8VoBDp6v3ux/W7RIDSLa3zIhQQyU+yvUqSEZCrTjPQDPbryx9ojJN9sj
	 DA+iD8dLewGqyGdGORGXwmoc3D1/oA6tQMruvZvjG09SQPYhupeK6O94pkKM5L/7Nf
	 GXQNX7nLRCwJ+H8FlDM5/7FUK3zKtpmg74/e6SqcwUNjfLEH9PpE8R7DwBeagnTa0f
	 ZSuIxSmtJ0NnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA88AC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291431368.22605.908897693494316901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc125d298777c7ccdaa901201ef000b3be34d1bcd18c96216e6b6b12c91599e
Date: Wed, 01 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782914313
