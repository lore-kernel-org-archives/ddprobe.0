Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57039298CD0
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744365595; cv=none; b=L6eDlt5gVxJXj0aqp/NZvMuor9aZxFeEyh4M9WXsSIAnQzkkREfOGAiGJiYBte1R4ACOltiW5r9w8z9gr9lcETFgMOdxPZrHQRhMWCSTVH1bBceoU2u1rGY4ROf/cPolJ07M0LWpkhWkyUdzDS0mYwpYMKOY0kgv0N9Bfk7pPAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744365595; c=relaxed/simple;
	bh=gK5pJj2Z//XUEMdxIMQtjg/UiD/JFw/IaoMxiyyFcj0=;
	h=To:Subject:From:Message-Id:Date; b=RNVZ3Dhuqp6kszGgDeZdkBr9W4SQes3nJGooZbbQ9dYsV8QXZC+69IiiBxZFU5v+d9D99CH1s7hwVr/YUhvEbDHQAwq3waT+EAc4vRkzDSPtaBooFaCSvrkr7oDznB6idBNknApdNxtGtTEJxvBPU09F8ne2Br3RX/koBvw3w3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFtOoARr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFtOoARr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C27A5C4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744365593;
	bh=gK5pJj2Z//XUEMdxIMQtjg/UiD/JFw/IaoMxiyyFcj0=;
	h=To:Subject:From:Date:From;
	b=cFtOoARr6RyMn5/ZRrqaq24SE39FdAjgHPxdjDDt4cBmznp8ZfWVImr4bSc5ZTicY
	 w99wCJuMveGHVjcREH93PtOpN/Udn74VTZkaDYQzEtFy5OtgyUY3aeMbaDFz1mfDDc
	 LfaW1v+wsK6MF8LqIhMKNzsWAp/L6h99S90S5Hj/C7fS1Jj69kWaxEldoDVKMXxn3y
	 2Xe6fRlyNA10/CXZsscO9Z63tCGyLJhtsViYQHzOnVfd5+yTqkMVEEPHvVNWBOBq02
	 fU9x/2HUJmV6xoTtJffEaiTcb7IBq/x+HEcydV2TuHUFtJ2gXgpy+1OAotmiTnnSnD
	 ZslFMoKQZP+5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A63E0C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436559366.9513.8459974929115850937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2109cac61d6b7eb44f4dda29179aab0a20d34d2216d85a3104598701f5720308
Date: Fri, 11 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744365593
