Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B693139D
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727930154; cv=none; b=APbUUVPMRXE2ISeq7+knNovQQLaEakiyWSO0Xp1FQvVmyteXMSOQ6KAVvKKYyYvw9Gt0qYdVlkfSw8H6x1IKpzjIrKv2sbKEh4UOcf0QscoKnAde308imSju75fkiVDlB3sj1hN4ujTLCVj+0HmqnAAzfuirugLQnzqycLy1mW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727930154; c=relaxed/simple;
	bh=GCvpTOmeLZklP9FM1S4vA/V2ujG2P1LnRSLcZ0o+ZAA=;
	h=To:Subject:From:Message-Id:Date; b=TqkKbY2Z65tCiD3RoK6Xd6asqY77Fkb9lpk+4B38U3mAp/qMthtTWfOpmzuT1OkyUc+aZZ146lCDKVa3b5QHxCYvp72j8r0r467SuIG9ZV9R4t/AevWtzWqhfOPpkrxS/9Br534O+nFPAGRCRIMyoPxXzmJcGbNenhujnDaI+EA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+Q2DYlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+Q2DYlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8136C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727930153;
	bh=GCvpTOmeLZklP9FM1S4vA/V2ujG2P1LnRSLcZ0o+ZAA=;
	h=To:Subject:From:Date:From;
	b=r+Q2DYlt6vvcKP5ZKc0trZbKmUnB/hK73BARjHuE+iq/oMMCmrWODyPvJ4+/i8TVG
	 /a4HiOztHqhTZtL4vgSjOFBla0qT0kzOLR3VrPa4xPuCWdKfQEKQzvE8sXcRABz9nQ
	 ew0PfzmiWe5SXaIem+4Y0LEII5MImSg+EIfmUeJ07/7OKv3DroY6sst3KT0dFB90zr
	 955z29XvNySEX5+8+Pwb0G3CBXulq92RV+qAZsqsN4Kng1YQXL0PQHSrWxsTN2Iiew
	 O4YX0WbT26bR/nnm6crbkPiq4z2pxA2Fl2cQ2g8mSX0BSk0J/B+b1vo6EVPS7dsLhx
	 dFdJoSgMegv9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E90ACF318C
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793015360.22494.5039537627359850432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b84bacb4e8998fa211de4e1b2dceeb99e6514d62944c7e14b02b5cb19c92c80
Date: Thu, 03 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727930153
