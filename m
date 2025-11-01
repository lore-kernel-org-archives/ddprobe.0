Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557E81891A9
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761958794; cv=none; b=EZrkHXQC9iLhAeo46okRvx4Y5ivZ7pFcW2xeh11ok/85kjZU1f7XaPEYAc5W8oRiTGZEruC02YneMYMjhu90LTWZp6/1OheEOmkDWnlig/SbOijUyMBUkGicpnGScFxl79mEIOayePNlQCsW8/KvKphicpW/5E7JGLkf0zMjeO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761958794; c=relaxed/simple;
	bh=FA18FL83xFjLSjYL5cTrdw7dB0euzAc4lNpKqKAiWks=;
	h=To:Subject:From:Message-Id:Date; b=XN5D/IFN9n2fWT86X2/nRXnxHAOdjQv9juE5AQsCtSOkMF8LFWBTojkGrVK2w4Xmy4orm02rPERjEwCI9D5MXAJJG4P2otJrcQAoj/nyH2vufCFPqp7zUzai+BtMLhjZLUKgbxIZOu10loX0tye8DvyJvxCdPdsnedC4k47JASg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fujJSb/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fujJSb/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2A4C4CEFB
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761958793;
	bh=FA18FL83xFjLSjYL5cTrdw7dB0euzAc4lNpKqKAiWks=;
	h=To:Subject:From:Date:From;
	b=fujJSb/83pNH6Y8XUjXZ92yvEewe58QHbK5nykddlSVce+/h/4YuP/mhxbvSl4MT6
	 rsV2k6avFNoYSRZmfEbdqRZ6oBl5JJ8O73svGHtY+X5LzxfC44934CbW5c1NC3Mkf+
	 58acjQymk90xHh6H9y+KKA4ZEWxbe+bdXgOqT+i/3ps9YzYNcuK/KvqNQEEKqBP/tu
	 kR2LqXUbyRdlf8Hhs6Fl7CfjFgjecpTMf5KwCDdFsPUVATwar/NJmL2wC4Omd1kngt
	 X44SJpclVx4J23fu0N0wgdd9kApAMoMF4bMvqqlvHDz1SvoQZvDXUnCZ3bLvkwzIjN
	 1RS5dcayQleAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FD1CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176195879366.5286.6291571336253067454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae9651958a48a544f26d3be94352b55b26b8f1939886a9a556c96474ac6a2280
Date: Sat, 01 Nov 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761958793
