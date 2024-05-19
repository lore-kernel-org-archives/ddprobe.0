Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AB238825
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716098543; cv=none; b=KgGOoeL8ec91c8TJJ9IN8x5ndv0cBkS8Z5N/kdrgpSGguqWOLcBO0MVKb7IQmR5yiKsYjEPLiOP4SKbEv29X5aMWs6BnGdHxGoEVfSuq2jxai9SvG1yBnLZCvSzFcEvxrwD7w3Qj4wJ356hcTPeGqlwLVZWOsNZqE6+Q7Pqhjw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716098543; c=relaxed/simple;
	bh=4mfRYhcg5UdVWUQDfV3K+x5AMJ5LMn83q+1aQilrx24=;
	h=To:Subject:From:Message-Id:Date; b=P0sQQDilahERF2JPQvEZiSnHF8GhLzkhZE+Rn2iwk2VkKR+GnoryWPsi7uCpPwJFY+2Ic9EkI5/fhbCauIdlwDfbOdWdjXOz/WcC91MwDxMyje/Tlynbd30R8yEbcl4PMPqnIhcpTvNI1xSRBPvpAax454sSzcawVY8QY8Y6U0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YB01WtpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YB01WtpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A4DEC32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716098543;
	bh=4mfRYhcg5UdVWUQDfV3K+x5AMJ5LMn83q+1aQilrx24=;
	h=To:Subject:From:Date:From;
	b=YB01WtpN7ZDfMhuCd1yID4u0JX3PoRvQyLucGvZxhERQJaDKQ1+LvWlq7PeUg4fg/
	 HcVKEat2oOmrOOVwnG3N8zzc6dlRkjqysCXv8jlhREvz8sM5WTTEQ8c9M8cO2b/YCM
	 11S2RYXrbcgMZJXZ/bF35MACMo3h89BFu1jAHgi/uho7aWUOrZmkcCIqBLygAbl95T
	 ZJoUTkuFC64KtMkzhCx2cOiPM/ZIZn7qUSjb++3lLSKKJh3VGqB2wqYLxpY/Mtd9DN
	 gLaM9V+nqIECNn5ZLLogA0piBDdeyc+y7n7NYhA03XITOUsx/DNoATI6IWwMjMwUi0
	 cYCGK+mzbabCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBA09C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 06:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171609854285.31287.16769616192140022658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78bc1dc072b0f8d5f0046a1bc5c355460759be31542f31067ac45f2cfdabf693
Date: Sun, 19 May 2024 06:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716098542
