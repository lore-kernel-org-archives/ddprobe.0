Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302942AD31
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754262594; cv=none; b=n50hya2BjW8lLP7xU8fxz9EZOhLTnDOQeFacqgdzS/o4nkuhnniEmmW8TaZFz5HwL3q+aYyF52vYJFxJKGMd+g66Y6B3x8i3SB9PFaVZGDl+Z+xmLC8FLSOAGSPzLWEmnLR/2LEc92xwmXAbmRnXBHlHmj2v2euv/5fh3n5XbHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754262594; c=relaxed/simple;
	bh=8AOAC4knIMC4SNQPJidMghMn8Hxe9iRVr9km6M4wiWs=;
	h=To:Subject:From:Message-Id:Date; b=ImiBqA2/rg8/cOcPsDq23p4epWjmb0VRG30zz4uz9xEw5A+I6cyMhpch5NTOdejP05d/8ad+lowRDHC0Y2pVwlAVSNPPuU9neIgjCMUqwzQB8cLlCgcxAI57JP9CkaNJXKa+lTfM8JePMg6qT6Rd8WXTXKVmIpn7KUDhp/CKoso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bnf/HuYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bnf/HuYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E02C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754262593;
	bh=8AOAC4knIMC4SNQPJidMghMn8Hxe9iRVr9km6M4wiWs=;
	h=To:Subject:From:Date:From;
	b=Bnf/HuYUHMgTB5kDkxpb9yM8FgGqdSUAf73q906cLoXJldDmNCIp5HUmGVauy9xc+
	 zLq0Fs79hCEW5SwM4ii7SdzCVc7Fgr2hMX3TqKyowWxVTVCZhNP2QxRPew4JAeRUyD
	 j5n2ciPrBJlwoh62mD1wjVhnnkZ3lNs91WidJu3dDbjrShGITtnS32OsEyQCwkaJmM
	 cQ/6A41t8cwYeFztWnF7wzNa8kJl/I6DtTOHiom3uK0BYeKg1QGULcH6e+WSAMQ/Sr
	 46HXB+zam5eOWbOaPbZaicuE3OaPp7HrMsD6GMPjBp/UBdNm1EqX6+94sbtyPQwXUV
	 95Z+shpI2cbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93091C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426259358.12358.580136377662303896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba42418943769262b03630fa3d9209711a74aafe25057c9b99ff75e647d06c9
Date: Sun, 03 Aug 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754262593
