Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378C5125DF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749250194; cv=none; b=YzZg7ZBypE0TlB1zBIKvhdHRqM5Kf9RKWGdseciVXTbzvkMPengptFl46vvL1EISXtWZ/tDn9aTrcS+Sw43Liu7qin+sihO1LqD2xbFrMgb3efFbCZ+rpdOf7/brXTbGvDndtzxSpPYZFvli0iRMaUPKHvg5BPqNfQIZ1dm6O4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749250194; c=relaxed/simple;
	bh=GCNKQbkiVeaAsNF8FhQnD1NLxy99FhFDTbFQfYHmkS0=;
	h=To:Subject:From:Message-Id:Date; b=lKdYJZ580n32deDaywxutpWVyYURx0OTTRDFbjnJ/YgCiFZ3gV7ppVBPNiKDdFUZkMebr54P2bly3MFRx9B+Syom0sEbQnGgaxML5Z7P0+L94op17NR0GS+wJR9Z4eYc1wo8X2Iz1Umvren6e4qy1eRjX9JUdkOOZlCJROW9Foo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYhxAZH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYhxAZH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8012C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749250193;
	bh=GCNKQbkiVeaAsNF8FhQnD1NLxy99FhFDTbFQfYHmkS0=;
	h=To:Subject:From:Date:From;
	b=pYhxAZH/2e2YReZURjOHdnJWwk6JU6u1R1vnS3SIxZO8YYjXX8Cj5kuL5yo60CC+o
	 ffQyfrZNcT5e2BBQ3juKCjbgtChd1UJ1ZuB4X3VOsdD+4Nrtc0k6kYjLrF+NLp39MC
	 GOFp1n5yMUWFvYKn3VVErvUxC9MxDnKCzxOS2vFUpuLF039fWalrtauiWkVEUROWkQ
	 Dl+MZVc+f+v1aqeU6DfHIUvI3mz+7zPDM6FTtZaQFL4LeHwUezkkh8XC0lwZUSgCIL
	 vaND0Sp+uvzw34DM6F9t17tWZQXbe5g5vABedtg+MKCD0zqsu51epmqJrTTRuFUhU6
	 uDnwp9pRfGjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A62DAC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174925019363.7614.6136288198897954489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bb3acde03679ea53d7800873eff79e68eb1afbea1e90a6ce158079f1f4ce9bb
Date: Fri, 06 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749250193
