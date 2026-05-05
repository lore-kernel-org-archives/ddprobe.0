Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118503EAC65
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777969054; cv=none; b=prmmTOXe1/7jtJrvTVMI0EI77SwZELV9fZFw1tslW/MR/AJh8Ri7vQrjZq3Txj9HGaoMEd/sFqL/UPyvxrqPHMCxyCRODtwntm11s25JanZFpxpUgRIfWZEdsCU/DOkYr4QFbdN8XIydskiJ+f/PGXZ5oebF36i+/+q2uYfK8qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777969054; c=relaxed/simple;
	bh=Yie6JY+UmdOcP8qKsvokA8BjynIqfYakNOKQGDVY7kc=;
	h=To:Subject:From:Message-Id:Date; b=MWy3pwEE3iJwz519o+B4aVrgfL3RF0bDcQhBEO4DbYHQQZVd97ZbDSmFdFYd9FOtKnbMop/KjFAwUeWm4YDVgN9SXZcSmNyBvNZXVEcCxEzdU5lsZmoXjFQ3LBXLt8LFI+nS1ruSfletBcuLJRKAcCzoWKeP90H/GPOq8NRWcRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BCoi9r1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BCoi9r1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7DBC2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777969053;
	bh=Yie6JY+UmdOcP8qKsvokA8BjynIqfYakNOKQGDVY7kc=;
	h=To:Subject:From:Date:From;
	b=BCoi9r1DgteYLVTUjzCyYaxwNvzpHSUvQn/pOI/8LTDzJxWKQozA8o4iwo7qHMmcj
	 EYQ3ienazuN+J8WjduciWWbfMkd6iEIP24jcsVFbWIYZOlaUNlugcBqD/+lGO5653v
	 sHTFkUI7hCmqmNam2fjd3hIhteFlfFBQXpgFHX99q00+F7bqfV3PS8lqvS/aJsRAOV
	 lfnxy3CE2iM6DTWt4Rtaz1hFhMnHCfCuesqYPf4lAbiTFvBi3FqzIX0dWrkFYybdVG
	 3POQAZiSBWS1ApeyUNx1o1s5RLoAqs8LermmNhXFg98UbifTl9IuyRdozyFBCfiILd
	 5r2Dxu08PG5AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BDECD3430
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 08:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796905368.14835.12764104501309258505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0909189c42c13faad9cb4e75426e3d72e3a48f6e0db6c425c7fece1234d02a60
Date: Tue, 05 May 2026 08:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777969053
