Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C199382361
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774911894; cv=none; b=TC8LahBRnE+u76G1nNIsYjHcVq7ZH9G6Pd2Kv7fVwEXVJkOS14Tvip/uG4Xo6Osb/cNF6inrjp/KgFLNmWPMIQNIqbNOUCW57o1Ii0MuSAt34HXwfy18GDZrWZqyxAzOTYDTNgRTMwjMdT8OUsmsHRPCylRr2qQNCuQLEwD9k2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774911894; c=relaxed/simple;
	bh=Qk+XaXrInyoemh1IXKz6H7PenzPyERytviQxDFt1A9o=;
	h=To:Subject:From:Message-Id:Date; b=SYliPsDyHJx+TsWc0MA/+9LHhOqt/u52zW4JSjjDo3zBMftFLAfS5JIbLvG1NGTLtkPEQ4q6+QS4av7bZQxX4566/2QJRRCdWAhUhkzrK5bRgaS1wSlmNQ6M4USACNVZ8FTa+IKsSg56MBSByxlMOpPYCa+zcu63OV1Jv6eKQlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itO25tdk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itO25tdk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9E8C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774911893;
	bh=Qk+XaXrInyoemh1IXKz6H7PenzPyERytviQxDFt1A9o=;
	h=To:Subject:From:Date:From;
	b=itO25tdkLtYGVDRhmwaY9bqHh6GX/pBVyOcatdwaxmlyTyE+eRoROL3Akl/3tTIN0
	 8VRlD5oopzZtkIPDWnZFR02UbD0VEqaXpjN1d8wBBrHSfe9rpncO3anJ8O+x36mobF
	 zIDdeDXutYWefXcQne9irVzlY3zg8JQBNCueHbpncF52Z6YGzudRdqbnhIXcjQid1+
	 MLf6E3cmOAK5JKZ6/8052b35/g/sE0+DW/GnBxUwXwBfA3Pwmf+x6rb3H7e08tK6tU
	 LHI3WwTx5uFwUMj46mbR+XUW1ztpxaDObdsYfSxjZ/kpiQjdg/dvkHy4id2qYtuTOE
	 +44ULZ4RykVbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D091061B22
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 23:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177491189358.10882.13140040149097177367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2662a5fb41356b7415ea36987e3e6cb1d00a04a6020e097ed667203ef640ccbf
Date: Mon, 30 Mar 2026 23:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774911893
