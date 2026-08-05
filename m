Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AD73ED10F
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785970234; cv=none; b=ER+YZX6JoJQlKbfQbTbTCGCCGUXhzVh5Ox5FCwfiGixJJHH8AUphIPoyvq2ZAKa7Ri2ywaTui66S+D+cf0PRP/Q7D/qaZOURY7MdzsKLT96KnbT4/VTH0g3Ivdlu6SwA9RblS3E7xl2BCT2UBxIZEQDi2cfPuVAFTg0W4HbpCbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785970234; c=relaxed/simple;
	bh=lSXrIDUzyIDfYRpJcmAo7AgNt6ci/oB2NHtxT1PEaSY=;
	h=To:Subject:From:Message-Id:Date; b=F9tjwxZlFdrSX7lyQ0E12HH1UpFEDFyYefPJZv1Qk4lOeSn8klqDQ2GdXZJMBlsD0TdlzcqK17wm9LDtNy4PajZBqjC2T5sMPz3UQXNtSH5tVbWDJBFgpcxrutVdw3fUp/yJlmfgiggR1Zgxy5pA6oJsbtACppaK28Xa/zqg/4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP5vX0IO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP5vX0IO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAC5C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785970233;
	bh=lSXrIDUzyIDfYRpJcmAo7AgNt6ci/oB2NHtxT1PEaSY=;
	h=To:Subject:From:Date:From;
	b=XP5vX0IOCbDzSX2ScgGL53MBAvvcH5mea1vf0qTZ6RUKoBO0R9kScZUGYj9luNlAf
	 DNWeA1Dg5UAJQc0bDXrQ1JLPJUDvwFS6PO9dWA3OqotYhFtZQwfSypI2VlDkF9YbSt
	 /zbQ6E9FPjPUioUCln1hYi/dbalDO+sn91uBz5++FShJ19YhQ2MGvQBBObSiStpulS
	 jJinaYSj79mQWQPVt6JNWWUkOu+l5zcoVsGdqeBprjOL/Ff79Uh9LuXASUrb8tJxFK
	 cRTPZRBhyzxRJJFTiGt3NL3RWcg874lDvx4eThWbKVqVpP56q4+6sZ8g1/BVZ53c6u
	 e/CLlYRIAzM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6D8C55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178597023368.14777.16102539954430870729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313de6c0ec2fb333526b357c7276289cf935a4f81ee2296293d60c557c54e3ae
Date: Wed, 05 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785970233
