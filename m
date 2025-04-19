Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5348513AC1
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745023194; cv=none; b=cnA10Nb8S+6uGXm/9QFENZIsKYinlW3spZDuLK+/AiKV8caFVElW53hZnZFv3cH+h08fGNYyw7RDfWIcnDxGC2Q7ZA6sqfQMKp+QpINE9IdPzHSSw2glo84U4526B7FoJINK9m9gYKaahbTckCh8uVFtsa+EquyiLyFWiw/sVGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745023194; c=relaxed/simple;
	bh=YWLRRPb6tweh2+BAyS1yMloHhXTNOP2b0NTRLHgO9IQ=;
	h=To:Subject:From:Message-Id:Date; b=mBEYOszEXiqC61jlhMsdhuJXiynYXncBW5BMLtNH36wl+QdK4/YzBua2HtVQnkFIkM8kywBuImrXHeZS2hVgkTUHy45lFNDUFHH09GgmMTPNsKXEojynbpDq553L3EALnXWjGZMf9TE5RiRWkW18Y1IBdgopG8sDQrnDLbafLGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kA6in0f4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kA6in0f4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF24CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745023193;
	bh=YWLRRPb6tweh2+BAyS1yMloHhXTNOP2b0NTRLHgO9IQ=;
	h=To:Subject:From:Date:From;
	b=kA6in0f4t6MdeN8MqEPQKtsyxQvaZ884qT3Zhxd9Z13PlEN0JY8ahZoGeMfeYA5GV
	 tvwx9KOgjuvNdUmeJUmRgfQLTemHbl4UNXsQxk4W8DiicTxH/mTZciVZUGRNGNvYT0
	 m6RYqUg2J7j28tDV8VDBUS/6VJn0VLuv3qmHGHAXjyrR5ue03EAD1uHIyFb+kitr5B
	 zkrZKJ8BZOZKJoXu0YqtDgFETH4BRwpL62QzHNMeE5OEpu/7hSq5WPAiYXvsHU+1dR
	 Oo9Y188AEQHjkb4BBCAzladFcgsdNRAZv0qTqH5CsOS7nKx/LMbFwahdI9UzoQIShA
	 8xtr4+u+3w2jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F23DC369AB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174502319361.31488.18114730978788291299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa3ce19172a1224d804282f49d727f528fba51fcd061e636cf7a2978e1b6d8f
Date: Sat, 19 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745023193
