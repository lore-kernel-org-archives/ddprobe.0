Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BE8813C80E
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723539354; cv=none; b=lmdBdLCjh2Fg0T8WQwiy0bZtYfSUeTwNzp4NRrRJs0cYzdNLTHt24HA9IqHUapyZwVbXsuPS63m8K8k6hXyF55JfVwrJtGzR1b519g4DE/tQQqmB5r4B2UXlxk7oRWjGfYS9T0EZGjjaZ3Tr9nHmjEmtFeeE83t8soC+B/gEnC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723539354; c=relaxed/simple;
	bh=qf19THMX903UTRVm5++6H6o9MoEfLQAVGna4JIMCfkY=;
	h=To:Subject:From:Message-Id:Date; b=izHUcHHDcqpJuaOS+TewweGmqaLX+biyY04ezykI5wINan2rtVm3B+U0xt6WbSqBL2m9DTEDPpTeNdme1uEmjEyxiDl25zPYmVyOzVc6Gwttixac6CVCsMEufe0pnRl/MMPZY3QUadvlnY3u04ldV/jMQTTUVQEacNcIAmcef5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SvQ7S4xy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SvQ7S4xy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B24C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723539353;
	bh=qf19THMX903UTRVm5++6H6o9MoEfLQAVGna4JIMCfkY=;
	h=To:Subject:From:Date:From;
	b=SvQ7S4xyfR7oed4rjYdDbQXzziakF3q0FG274I6Y6gbyaGTERnhBGVMhT6Po2BFEb
	 ik4sEcMbHEjzRHgSVql2sWeoWHJ1yy/+V/Baf1INjm68iU4CLDTce6MCY0iDXGXX27
	 fJUHMXq2Z5P6KXr2fjPcXsGmiZKWPIv9jmZ6bzswJjxxNINU3tFa5/622gtqRGZrFF
	 GqMWWVi/pb7mmVAuArD1ddXOPE/7u3gJmZ6DJC8sy4DNHUlXZiVlC8Dg39xu/FSIUy
	 rTYgDbVzDzjuCKQ/1E0LsKkY65mKwnHLjXqtJIOmISWGxKlCYmyFgdhSgnREsejYv0
	 x/CB4lqK55Tcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91616C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172353935358.15429.10635166038199284465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e548141de977a8b4e2b44ccba0f5cc71192a413ef252db860cb95cb3c30bcf98
Date: Tue, 13 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723539353
