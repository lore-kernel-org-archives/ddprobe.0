Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7819A1EB1A4
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763220594; cv=none; b=Z0bd3IqjX6gUxa0vky0EsD+dDJ8KH8OLHU70uw5hl+u8QAq4YSu8es7xEvB8xaYMypAndNErJX+o4Ldgii6JtKzTMigXMJitj5UTX8OM6lZEUjVsYPCKsMXu3Psp1r2PfFY7UAAdXIPdAs8L53qoseZn+HdPke0MJUQ5B07tBAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763220594; c=relaxed/simple;
	bh=1kRvtTe+jQBmK2wXr1jHb91bf+iFFL3/eMnpydoBJRY=;
	h=To:Subject:From:Message-Id:Date; b=uC6eXWXhpFp/y9yNH2L/xuPsWFgEPilWqkxlaQgwgp9VQsStWBDskWpqJZ4/T3Y7hSRbRcseZke7l5DnEV4WxBSSFpH4NV635ghLpZ7VcdCXjLNp86EzXHdvt24/U+47OEvG3wDuhuRMQIZOnx7DdoEiNnFS+CM4JKoQMj56cKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOQfZaWw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOQfZaWw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9454C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763220593;
	bh=1kRvtTe+jQBmK2wXr1jHb91bf+iFFL3/eMnpydoBJRY=;
	h=To:Subject:From:Date:From;
	b=SOQfZaWwMPF/ktqB0uC5lZWrLQuRxcR5ilAaoAwyqE1SMaOf9c0J6ZfVzkvC0wn5R
	 jlYstDvPVSTmgWyIA7Y5liimiNna/GP6Fml50qDyYaA/5L0Ogw7jwQsoSG0YG+9Yww
	 9a6epiiu8KBUgZruZBddvQy3yt5nB1DtUxM2hzV3x9/Puoay2Qw2AfN+NJznJLfsqm
	 WL7nXqC9j6UwRfdWsq3s8K0VfgmsG5ih6h7DRUJU3XlKcWGEiA/Btr8glJzfo3wZdZ
	 s+eo3xxbAiKAob/PtfLzl5ntIkF2B6g4o4BHDd1mu8SiIe/TokX9cMGSQeT4uOjP34
	 JjgCJx7ERnM1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE061CEB2DD
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176322059371.6136.2554177379724034028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551fcbf9e804419a55f38339d56011b720547cf8f653691f16ddd9d2de6606b6
Date: Sat, 15 Nov 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763220593
