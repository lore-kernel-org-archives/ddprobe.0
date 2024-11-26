Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8E0189B94
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732664154; cv=none; b=i5esAy7NinPqqoxqk8gLCVxChDw6SzokNYinJwrEEv/2pJ2gdnE8j0ojDapTst9a1cKqR7VqYRahmM8vBAkjKKs2J8WzBZ/P7jjZEKZs5koW2BHA2rhUnQRd/C+VLUwjmGI7ISO0PInG7H+OYCYENGza3/eGYEPcqusxQW5sAvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732664154; c=relaxed/simple;
	bh=htZExdHdlepcQKPAXJ59Gmf4yAnWqnsf1lzRhETcC2Y=;
	h=To:Subject:From:Message-Id:Date; b=p2PwOydsvdvaYcTT0WMvOre4LDicqMVE0FGRPl7x4EZn8amGjpBjWDu6Od5hC05i9kTXsRyspli4g53/KdmLzCmXP6/T7O0kpLlC+QqmTNDcR9ceQU38YWvcaVBtvMZPr7Zk8IC2/zyQkckSs3JYVmdDxmfy3MdYvzpS/A1KPK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NKWjRRcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKWjRRcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B84C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732664153;
	bh=htZExdHdlepcQKPAXJ59Gmf4yAnWqnsf1lzRhETcC2Y=;
	h=To:Subject:From:Date:From;
	b=NKWjRRcCbZB3nvxjAxcmPH7d39XY98Y1paxpdVMfwWfMEgXttU3jJheNG4XEldsCe
	 bnLq3IP8mQrWM6F0R3EOQhTmk4ezX1rrP+b9HwyPXfqqRsd55IKv4oK2NlD7/mWlnv
	 rJa8vqFNJqEhdi3aqWGQ7L2lIjpKX+9yYVfzszsITLsCai95kgi2C22kI7/jZvNgWp
	 k//5R9Q7x5ZdIE1DthAWp2cGdg71XogSKYgsVkhYehJrQH1ScEWRoVCIUsUDNfAnxW
	 VJIvc2pvhhzxTskzK2Zy9ylNw/ZW1O5Tz251zIdg4FQTCiXVJfmqG1S7zYjbN77mXU
	 t0NCaXW/D14iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DEDD66B8E
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173266415359.27987.15699229072016825870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f03d8c2f640470601809bf359461e8d97158411483c96e0c9550844ecdb4df71
Date: Tue, 26 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732664153
