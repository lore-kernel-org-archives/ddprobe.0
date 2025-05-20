Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE52256C77
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747760994; cv=none; b=op5Zqt2ir1kbLUd1/CU+RVZXVLsHdgGTF20Yb807scJxVj1wzrk0LEd2U1YMtUr6f6UhXGE5B5u1F1pV0HxspiqP/jyPzDV48C1aog/rvaatA8p/bs3HCPYIZERi+2Ux2SfRvpI9e1tT6xB94iBXBKTuqa5D+qHMXuhL+Ig6NEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747760994; c=relaxed/simple;
	bh=XErW9suK7K0s/lc5lFSOSXfisi5a2E7/XPjRSujGDeE=;
	h=To:Subject:From:Message-Id:Date; b=RNVp/2ULlkGtsdIN9twhA+srqttHxo5XO8Rqrbo5NvKDGecFImdQa36ZZa/MIL1rH7YPLJI4BHosnnzpDfMYp6DLxJL1+UQVEtjAY54hyALu+Nrp5GHyWpdIPNVPlWi6C+ZmWnnWGQu9IqLVQ7Ib4pGLQTY5rMJsbzwd2MXginA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h6V3OJ9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h6V3OJ9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B0C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747760993;
	bh=XErW9suK7K0s/lc5lFSOSXfisi5a2E7/XPjRSujGDeE=;
	h=To:Subject:From:Date:From;
	b=h6V3OJ9b9ays/Sxca6JxBAlqFKjZ2/VMI1vfzgX1JBHrru0iFphvrnySkv3lPOLd9
	 kHruH05cchs3yEq0vSFeK1m6PAHyIEPo5c8ezjpX7yDbX/hYIncSNf174n32Cm4NJ4
	 Zngn7f0SN9Eza5ngkmXZAn+S2slRhh1F9yNGnkKlzZ+fEFIMrsM6ITPRZgYqL4wyJA
	 FczGJLGE9csTGeZplYbl4UkRXPPYPd7OWLiedpm3fWM9McCiQ3ZGIBH7lqLne1jqH6
	 UGmEImJkQDTGtlj+oBjaSwnJSBNV/fK2qi5jENek7BK7OSdC+dETiAyI6dyyuJ6yUm
	 xx93cTAwTW44A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC01C54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174776099358.25741.6360559993436958699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d26526cb2d7612c9d1cbdf4325cf7312997ef5c6db2b32ef291a10bf4c6605f0
Date: Tue, 20 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747760993
