Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B268610B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761471594; cv=none; b=RtSk51xXWhpk/u94om8nS25PX+IBlsaOClXH96uJuY3kAxxydkahaFK7QAeDdfkpmCmEViGeGxpDNGWsfdg/nFg/hnglZZBVt+3yo++0/pa5Z8vbhQmUqf8p980hoQ8Lpyz4uFpRU3ux2gph6cpigknmhmkYj/vcbsZMGgAcXsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761471594; c=relaxed/simple;
	bh=JbdlR6mCaYOXzXqem433wopXjmT+TbP1igXc/bY60Zo=;
	h=To:Subject:From:Message-Id:Date; b=Eu88fE+9sefEh+TF747UuKbHG0k+LwRsEclNyvmJc/RrP9GL8kZDRRuWMNAsyB8MTA/uvCb148RUQHVeO3Ubp8G9sTropZIssDw9JiV7mm7tOMzX9o/HfrzkggSRNY092ECtmFJrlBZCmr3jtBcbdNib8Fc+eaBrXrPRfU3Ai7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvlGcG0t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvlGcG0t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E0C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761471593;
	bh=JbdlR6mCaYOXzXqem433wopXjmT+TbP1igXc/bY60Zo=;
	h=To:Subject:From:Date:From;
	b=qvlGcG0tNPLWpgx5DsSm8xUrdhObyDFiX2q9BD3ssEfV51x/yvmR+R94nmA7QJdis
	 rA/sal6YrrKEGmfMOhJDpAeGjS972tF1ghYC8Tn9jSmPbLFuV4WuTm/YgTEnII7yaV
	 zqwWltB2tW6ag09EY3Jk2d2XXFggtoaU9AaVStrLHZ1A60Qn19/wi5R0asTOIQewEo
	 /bWywS1mY0N3OIjasJ6cS+yryMo4FtriVu8R5mlwu8S+rIkjl10tXowLDniOaaC7N0
	 an3SzvMy2jK7FssjSNqpb8IQUQlAvPYbfqiOvylraEJqgsof7z6eIir171RdM3GS+D
	 UYUyhNTYR9Xcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA77CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147159357.25450.7793068922032833168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50c9e964f515562442a53b74b5b902c389fbf2455b0453ee67cbcb56ef25b11f
Date: Sun, 26 Oct 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761471593
