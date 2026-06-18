Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268183328E6
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781799394; cv=none; b=RiG3AH+2x6MrcJyZjBzuPxT2ws7t1WHINA9gk1AU3uNk+zLxq2v1k7V/peV25/emQgCEj/rClalF0klCY5CjYqKqPlD3BDOGbu0xT2urCtvg4aax5rDypFwJmzP92wus0gor6vJLflI3Sd64vPRCEWfDU4RFf4S+9Mrhr+7QnQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781799394; c=relaxed/simple;
	bh=cusFryTzxFskDkicw0pajJIUBxnkTI1KyITmf0eJxR8=;
	h=To:Subject:From:Message-Id:Date; b=paqFwNwErQT7pBxpG+/wHjTDIfSVHos7b6LEU+NRNoMTi+OH9uk7YGPmEQ4IEx1xPm0d2CT9GwWSFuvFljlOi1VscVo1LOnuzlbcCkMaKkkrq8qlNophqdBEl1FY5JSE6sW1pgZkz5XvX84bbdERWHGy1jDdwfABR8XZx9rJu8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erMHCjJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erMHCjJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6336C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781799393;
	bh=cusFryTzxFskDkicw0pajJIUBxnkTI1KyITmf0eJxR8=;
	h=To:Subject:From:Date:From;
	b=erMHCjJj7ULBApwzze1rXMvv4XOCyDMexY6d0prLH6xAeOVRmCS2QEIYVpYkku0Sa
	 T2h0esuTZzikDqnC+Q3jkU1xhSiAgcs3mH7/BAgskRAwOizBCsLbjJVtA2DsEmNnWw
	 StY8+xPDkaLwlo4EVBveu/TonJlgQkFOKGymtmDKlDRbwaoDYl4jCxzPo3yUSztIqP
	 u5aDYNcWsa2r3Dk5p8HKxhnQfBCjzMzOjdrXFnSzg2+RzobC2O4qGppjaA/wPBXVhO
	 ERyx/joAlzOqBtmv7YQC7wqkSvKX8S94VDbMWltltHlTeV/+59v6aoAQv8Ra3FvSUy
	 EbDlxJ7cnDPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13D5CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179939370.9009.9567221649128854374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea55597a31641086d049fe8253f9ff87ff0aec327372850ba8a98cca935f2e3
Date: Thu, 18 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781799393
