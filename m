Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E652135CE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756480194; cv=none; b=VC2CmxC8Vdlniz2U5C8ZvoE4nd+2MO4F6JebGB22lHDD36kcDYj63p84fVvTT4pfJ5I61rzXvu0mBNHTbR8Lf+mAf35WnfKB+bjVKiLVFp1fnJ2Gxj4NJms1TQB2PcYCuX0yuMHqGFXEoGn6sF0n7yYy79CrTNaE1CBGHsDP+Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756480194; c=relaxed/simple;
	bh=UFM1ukyQyfZakj+ecEC6QLCYnx4Y00PA1Obxz9j/jqs=;
	h=To:Subject:From:Message-Id:Date; b=IctmGrfVG9Cz58qLV9vtkWAl6l/wbZ6h+9o3RpBCuzCiIEKSyftj8hdZswoaemBrl/mYz0RIpXMdinoeN4AQ+36mHgUBaDsXSG2crBc3MJbEHkLxVpfwpG5PZ8mwe5Hh0Kulr1AuWoRdjJtPVOY/kL+M4ggkNcFlPkcEi5MstyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8btXapG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8btXapG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EFDC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756480193;
	bh=UFM1ukyQyfZakj+ecEC6QLCYnx4Y00PA1Obxz9j/jqs=;
	h=To:Subject:From:Date:From;
	b=o8btXapGEU356a+0URYiQSBx2q/e7/7HLjwfl/H28MgwE+lHU0G1XA4iyuIM34lvG
	 OiZ7axiwd45TP3oWZSEHyE6eUPnhkKZErORI4RG6J4Tnvhi1rSrFvvcmy7Qjl7AkqM
	 wmgbPo+DE0JH57K05HtywSdxhDHy+embnxpW08ugnFf1Q0uu/9RvAGtxQDTYKnS3D0
	 IRGvpka0AGcf6EfbsNWiBa3aDSVUaRQ8LXnzhOZbmVdsy54d2KyUm64p7AQS/gi8En
	 g7VphhuDa3utx/ZtdYi/7SODP//IJwERDYVWgwwMBcHSSjmrhbns0l54bE0ULhvHmI
	 4RAxREAGP7qDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FF8CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648019357.22667.13493162103443125951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acabe8ea58f1795238665dba1d914a4e3008612d5ca425991403a782ede94fcd
Date: Fri, 29 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756480193
