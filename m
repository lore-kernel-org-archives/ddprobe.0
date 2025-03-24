Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB8225DB0B
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742815795; cv=none; b=bTin5pfL0FCrqh8xgqgLEouubXXxJD+TZXAJ3iq5oz/Qle6b3E28kPStMp158XdS4EnyMbKEh+bJJ6mCFK2JQJpjO+XfiAqcI9VwDjhLvFJ25v+i6AdC+lRnwwOqJJPdGmHv5Jhp2EmhCSopPOYTtqVfv8UcHII5ZjUrC/ym77s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742815795; c=relaxed/simple;
	bh=Nn/iZMCgNXqo1380o6kZzoWpxcZIjIyB8AlnYJelG9E=;
	h=To:Subject:From:Message-Id:Date; b=VHifSdjf3VUaAY/OpHObP/5kqRnPb99qp3BYHNDQWaHeFWXWvNyVNCgipRUx6qukPxDfqPGcy87SK/VoK2NkkVhm+FYnCzmU5Zfu3RH1Y+qbfsvOj/9jbJXaYV3HU0+j8JwGlgTHTerutvYGCFI0i90PVaVqS+BJ/D++WBBWBzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubFV25BZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubFV25BZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC811C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742815793;
	bh=Nn/iZMCgNXqo1380o6kZzoWpxcZIjIyB8AlnYJelG9E=;
	h=To:Subject:From:Date:From;
	b=ubFV25BZCOW76BHLYFcd7DzZni40jiQu30d5KG+tnnMcJy+UjyzUH8tCtl6JY8q6E
	 OPcuxB9HZ9rORwfLNP/tEDMj4xCLCWW3nC+OVDVscNXVDMIL+II0e+CQ3oAXyptlpB
	 foc2MY9noBXxvuNjKQtFTaaOfIGApnEvEAb8S2cJ/rr4g3w+s1izswt1tE3ag8zG96
	 R329hRMquSUYglEgHj14TCwYFzgJXgryFyEcmnr5CEOtgT/62XPI2YyruF/A0uCbFN
	 dky0AJBozp+aaVjQxxC39VyQYV/A+CkBXHnVtJJcrs0XCx52GZl4vQyxqfwtBo4xU5
	 QG+K9T/sik46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 998B4C36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281579361.25851.166988371585993500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dd08826988fad963ea532d557860c450dd19d8e1d99231cb08ff2237b9a01ac
Date: Mon, 24 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742815793
