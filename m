Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626854DA9C8
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791474634; cv=none; b=bWbsde41CAK42kX+I9dVowwhOoZoscol10nplh3fxCJASmum5dMKDWL09N0/I0uzOimVGS6AAFZYxCL2t7AGrrP8yLNgHSy8b8WyRagf3LT2Mgk3TtjawI/oN3KQUfuiEucQ/NlFSnh6wx3UQL2hJokgP9VM4HXGDhpHGqJQ9a4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791474634; c=relaxed/simple;
	bh=KWZX4iRbmJyl3Yzq9+NcJOxtKxU7kAhdXHbzEMdwZ+w=;
	h=To:Subject:From:Message-Id:Date; b=Pqas9UQ4325hzETAo1jzNnguF3rZfSYKVHws/u00BINjRndS/MHTffcG5e8Ehb5vHZwj5QOHZPtI1p06w7f9P14PE3WeYu1hv5xUXLjWMYutUaKnT2r+/MwQb1Cm4HNBkdGZphnNso3K9+uiVGp+tgtpik8tXeoLa7yTOPoY+vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eREJPUKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eREJPUKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B81C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791474633;
	bh=KWZX4iRbmJyl3Yzq9+NcJOxtKxU7kAhdXHbzEMdwZ+w=;
	h=To:Subject:From:Date:From;
	b=eREJPUKLI6GGdMOPe+XS89bzinMJBUmgzoFTBHtf04BpHkytSQIqIAg6XYd+UW8TY
	 DNxIKpRmv3eSXgckzduGvar8XiDtW2nDB83ajM2enRLD4Mf//0EqBbP6HwKma77dor
	 XjSc3BqoxkiJpIyn/ZRfeyqm7HmuooEKrU34jjSyK3S1bPnB22/cWxhKfj9nZKCwYd
	 0T87s3iDgdKEX+MWleE+CxJxItpAEKSRl+NLXwjGVJjE/zrc6BIWPo5aCsJ6F4AqTq
	 AroK7eLV/o02Qvg8lnkP4NJyiGurBqmEnEHfoHHk7WPB0h/bCU2lK0Aaq5EdpN5tTu
	 KMx0HMIRR+EnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC2FCA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147463368.24621.13858011631803785482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65af5abe8fcf1b531613ee6e25c1ee5c2005198fe1be355de7755a6b175b6fb
Date: Thu, 08 Oct 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791474633
