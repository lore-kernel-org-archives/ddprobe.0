Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104AE2D877E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769174634; cv=none; b=HySD6V0uW4F5m8P0v6A4T68mOz1chiCOudSliQcvGBw2ZvzZsG3SWCWHKPnY9w0RMFV9pSXIJZwTs9BT0YFDR4RiCQIW1C2gQKPUtP9r8MUkArbQ4tf6ryxtyHa0iZYweTcqwaTFp7AVo569e6oRoZ3OBYldyPC/CvR2KjVkEuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769174634; c=relaxed/simple;
	bh=8pWtIspuvdKflynjGcfXhDVrVsirfTe+HtIbJWIBGGA=;
	h=To:Subject:From:Message-Id:Date; b=uesMGruYkbzoXz37pYEdbyFv4oqcW4YzxTnc9Z0wAPLn/4yz6iTaCwn8EZm8WFb76D0vZgW1mddogPIpinmiEVGvOa1SQ2G0WnT71nnCIQLZsurY3Omgh7OSy7B22hDuJa6ZXDNHNB0poeMoT9P5edr9WmI9saQ7AnMGBuNKToo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QSA7U4oW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QSA7U4oW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BFEC19422
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769174633;
	bh=8pWtIspuvdKflynjGcfXhDVrVsirfTe+HtIbJWIBGGA=;
	h=To:Subject:From:Date:From;
	b=QSA7U4oWTWIpZqnLjTPsN7EDhh7Nq5sB3p9qfZNZ3Utt2D7tM1tD0dF2wuwyAn3y/
	 9BhjYSMn8nDZ8g3/wCNNJp9q7DApm2IP7R1cNV2/g2ldqZimqxSuusjhCIfJXONXvl
	 5MnHG3GWTjfCsHeqfZCn++U1XZQMPYKFTGsFXfG64WAP5TYJh9Mp7xY56uTuuCyc7/
	 iGE4o5TZNkBTsYw4eJAP4IBAcN4aBnQFgtQJtVXMAn9DFIx0sJo6GCAKJPqYgpBqn1
	 mWBAaYdQSQIWQ1ezhCXizhJDYurYb93RLxUJAQ8r3mr58gXzmryVPT9SZwTyuoR0uv
	 H3y/mhT/bKxzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A381D74EC5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176917463361.21996.3433398798889992878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3571ebd9531b856d7253bc143a554adc74113043974b731887f6f8af0228b0a
Date: Fri, 23 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769174633
