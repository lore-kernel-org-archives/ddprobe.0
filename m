Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B50192D0C72
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789588234; cv=none; b=O6S2HLSkb4nOKWk3gTuQxPiB7NN82WiKx8+q6SEZ6sFApDt9eWQHMUXL+k8ks4x/VNVRJUt5CaSd6KcDP45hqSFkB1GTVyWLDSdqwoInsNCKu8wOUZKsaZqhoAlh4kaVGipjHrwIhYHfQgq7WrsFgdOgtLvdhMSbvtgkyGlB4aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789588234; c=relaxed/simple;
	bh=6KBLeCAgBbSbzKq2eptGz4TdWy/eLs00Q8AE3yx87II=;
	h=To:Subject:From:Message-Id:Date; b=MKDJJE/l/MdAzrK6pMvFsfDgiUsndJigiADqQTj24L6TkJIegqKjZUxtU/+DuiB8zMYdgVScTYJwMEeQYogODMAiNZ4Lg6wPjCc89I4LWnV5HLHypBbVFkFofa3A2EfQ10hx+8LuABr9WU6j9ArGYoQAzFeq4c+Rmr4XjAzbQI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exT4rdZI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exT4rdZI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AD1C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789588233;
	bh=6KBLeCAgBbSbzKq2eptGz4TdWy/eLs00Q8AE3yx87II=;
	h=To:Subject:From:Date:From;
	b=exT4rdZIAFxhHShKYTs2mHqavoeyfL9b2x3jK/Uf3YNhqZnqN8yvF8uy+5292AEoK
	 kQ1ymnw9/EyajRTeDtdnotbNYd07tUPVYHq4lUhG2QeUeXG45sgNAuoLAl7SpZ1frH
	 SvNLwngBL25dfqC6AHhtWI4PQi/AdRdXafO/hMhHLeAM3QdtGgo+Rya0DNigvTd6o2
	 uSpuCgaZOnsvy/W7rLT71hiQ5Zar5hTd9pPiuIziOxwXekQMAzz44z6fD3ddOtxBPB
	 kXZp/b2iDTNVTmUqZ/cKovVSS+Ypbp7QtmR7hYn57GVU/F1mHjWyx4wjoBJ7vq0IAa
	 sDnpotzv6STVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD5BC982C9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958823369.8337.3419769611550583168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85ef835282b2496d6743d2460ca8f8abb91a9ce46b411012224f3463118fb306
Date: Wed, 16 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789588233
