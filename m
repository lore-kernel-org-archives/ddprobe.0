Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AAA360EF0
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791108634; cv=none; b=nkCKW6piNUxaMUNkaEUsfgVJylmw/RF9k2jnJP/Vl5qxNbiFlHDcCuwMkB+Rp+m/bIktQf9OcEXKxsbNIvjQwDKJbdSOPVvqCY3r2U6gPiXakY4ArBTFgW7xpw+U2hvTb7lEad0VzW4Mbr1AGjLIpwwpeMbfPOLB/cCvHeTzBhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791108634; c=relaxed/simple;
	bh=4S9jcByi6UHr50Z9BLaLBrn+WAg2ctzWsTjR/TcwhmE=;
	h=To:Subject:From:Message-Id:Date; b=XgJHobC2eDwN9Ub+fh0lUyQzvc6Tf4fUEhO3/1cEO/a5P4sFyIgTa/hlXkSoieAN12iZW3xdfR0pLGE49cybdKXFYxOtsrPHZiHREMw4Lc0YPnFdOpVF2+yv7cSxudMEJ2B7YcXY1gNMPBMpL9k/mduE0Y8LU8CWCId5x/vGPFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HdMlMkQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HdMlMkQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE72C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791108633;
	bh=4S9jcByi6UHr50Z9BLaLBrn+WAg2ctzWsTjR/TcwhmE=;
	h=To:Subject:From:Date:From;
	b=HdMlMkQ2sB6C0KjwDf9qfM9vChVBJDNy1OOaBMs+qsehN3wNQO0nq7Zm5qmejpBfV
	 sbInBC55tkQmBG+7YuCETKCtJ8foLDMAY/HBcm9V5jmhVsPC/zS2uFPn1i4Ciei+Bw
	 DHTyta73czRjdtyYwS4uZJ9pFySbyUDqigvOBdvI7htHO/UYIdMNyIwBHdMNp0a2XR
	 2Tq4Tkg/VDFOVDGbna4ilf+LmqB8C143MzW9aMq2wuT59NXXA1WF+Kyn9TAe6wx3es
	 55GrNM5cqNrqh7/2PbXdNcm2e7UGy5y9Zmd8aMKqrlqOKQ/myZARF58Mvm/4xFxBt7
	 6dWfuY6W4k2xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98B0CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110863368.29556.244934926245422783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86a032e654c1cecac215792aa02e34575bd449f97c144780c228b3e8cbdfde75
Date: Sun, 04 Oct 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791108633
