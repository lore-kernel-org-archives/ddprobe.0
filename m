Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446543655CD
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779922954; cv=none; b=UzIRHNzi3xpzTcu85HX+ZUKOvaWDUGhG1rkbXwUfNTKUkOnVNJZxilgvrsInYzPAJMe12KVAA5p6DCIZ80EhmcYqnvM35vSwJYN7dUoFrSHbTlggjOSCliQXcDbwoGsyLX+b2HE1ybXMP8+j4RG4GCOS4NpvkC9x7hc113yBfyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779922954; c=relaxed/simple;
	bh=+tlWkgClUBzzvlochQco2qmQ1LF5JX1mmBpZ2tWQqQM=;
	h=To:Subject:From:Message-Id:Date; b=nVzmbkhvOJ+FskX/7LiL+hnHkZewkwvqltFmaGkeuEpSYBSHG45eAkIHEM83XjMvgt1HEWv1gsH9i42triHw81xXdZhDBWzRnMNGabVSQvmLqwshs0AlxiunDlGMtv6FtWwQ0iaZJtT5LFeEk0W/eBnjiGEz4bSunS4eKhiBU30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcPWr++E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcPWr++E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C189AC19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779922953;
	bh=+tlWkgClUBzzvlochQco2qmQ1LF5JX1mmBpZ2tWQqQM=;
	h=To:Subject:From:Date:From;
	b=mcPWr++EXt8agUcoQLbH2lhmjV46nyuJNFhRMf5vKHphU+KpPhELPh/jVu4Y+1ksf
	 +ZiNT6gOYcaKKRH+XADn/q+pOKVCkxt0B97S6LhXHxilBMepWKq2+ruQsI2zlPWpB9
	 xRZeEupg3XMaRbLZSDCnzm1foFdR4Cy2DObVzJC3pPcRqEt0hTJrbfFDVJ763i8gp5
	 hY1NLi7yI6X78aOfHTjeJqyVKmhcFo0idfFkh/1OVVI55n2XmqkybFuDZjn4HY8WN7
	 ZqkpCy8YrdbAckC+kCLrdRjFNsoyNgtKi1elNG3RYjJtb1WtLnlWMvsJhRNkC0YHng
	 GiKyeok/4I6bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E3CCD5BD0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177992295368.6171.7547372686353309454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b6a9d58e6ceeaf8e6f63e8e95fedc148cebd9f1578747202fd963603f7330e2
Date: Wed, 27 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779922953
