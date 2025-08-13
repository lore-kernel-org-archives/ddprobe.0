Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44AA22ECD3A
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755095994; cv=none; b=YMgyoVu0CmrYHzETWhoKGI0OOCknS6MGVqVROWXZvs/gWa0jcoMacB+UZHqTXfTaPuIf/Chb+3BXq4bCS688MA07+LncHrLTmWBvC7UR26Bvp1hE2ESisG046BLrbDxzfq5ZTSio+kk+ZGmNJPqCE0u1UzwnwiScflVBTaZ+Kn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755095994; c=relaxed/simple;
	bh=SES7e0qJ5gN0jGW5vNuIFVI6b8fekiraSwFHdGravug=;
	h=To:Subject:From:Message-Id:Date; b=Zsuyy8DQrj2PR+zMEgED57s3Ui33YO7SKeFFCXm8dJCC/V/DYmGmhmlF/TisvOPny4jdEWxtfb9olWkUJBjr2/4u14b0voKlpdb66eifDbWJH2G2h7Inp+eTQcYnTIDAKg2hzrMnBsohQOkzPrXutlu+HEaVb0LiwsIR0RU7fyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DQThprbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DQThprbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A861DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755095993;
	bh=SES7e0qJ5gN0jGW5vNuIFVI6b8fekiraSwFHdGravug=;
	h=To:Subject:From:Date:From;
	b=DQThprbHPfZED1+w8lhA7KiFjsjjbuucUsy6OTF5GK52fFvjiqDt2wr81Jwq8Z7S7
	 8kItBKhYXIy63wO+3i746j9SJi4MSHVGYuAULWDn6s+MFFSYJzdvzR/R+FfrIzH+em
	 ZW1NMOK1yloaVgfXP3Y/+vYO7Sx/qyVM3dBryBkuQQY+v4cK8HXuhTKlT1Jg5pfm+1
	 NJK+piR3lAvuMnUW6bvp+SqyPAJL0XiWhEaoO/LgKN2Amzj0isuCSKqpLkAjDC3xBR
	 tzdyAQtXYx30jfv7uGXjJZmIgiuDedC54dYfDaeml9G2YLcB65/PXvv9gCNgRlsLvN
	 VSqFUDSu3DLoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A633CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509599360.15615.13066649948430348971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc6607b7804aae280d3a21d5ef79debe3654c4352be95448966f786f55da2cd6
Date: Wed, 13 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755095993
