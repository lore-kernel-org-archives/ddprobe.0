Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FF117C98
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746322195; cv=none; b=SU5d67NIqRKJtORh4uGwAzgifRB1luYT1dG3smRQXYiotpioen1udpiDzA1cFB4+CnMjoxLKouIFhq+dmvpZELlBHSc10+aj7kPuSq/BihnyM2qJ5tct9obnhAfUSmMvnmdAEjZ67IU0V6pp72Q4yK5p0D8POkaUOpUzXHiXsA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746322195; c=relaxed/simple;
	bh=/3bE6O9AIvpgnwiiyBXatm8pRIok9chIzQFEnAXfo0Y=;
	h=To:Subject:From:Message-Id:Date; b=pIrCS5ugsgPU0NG1UDCrpQQJ4ofngobeo+y/bldFFkBP56T8nV68MCdBbkha72Jbwf+4JZv7K2MkGSdfd7HMdrvij2Pws4EYAxlHrj+kaLT2Kgt+pwObk+zD7VN24poD9U6WiRcpUHcXwLR4X13mj0Git1qA0r9oEbHYmrZNcmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBa8Hbxe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBa8Hbxe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEC9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746322193;
	bh=/3bE6O9AIvpgnwiiyBXatm8pRIok9chIzQFEnAXfo0Y=;
	h=To:Subject:From:Date:From;
	b=WBa8Hbxep/bvHk4Ie+hThwsLlYPXiSL8htSJxp547QpSrYl1JU7yRVJ5jmdewM4fG
	 E0K9w+j4sIEE3YcUcwEOMVMBge0oYBlBx5D3qEbiPDYBD13Eut01k8BbdnEq3pdzY1
	 BiNB6n0ALsbEDJJOBsdneAFQ58QTwtKNg+QvT0WLlRfrWNxUJ801fKybRfy9ghCpsN
	 49rR6FIVFfhPzBIPTDLiLZcM7Dfmj4dn3Mi0vCbKAndWuIXdEKNu6CvKp0cJi39vUy
	 ihHWpTnQGEdX+1YjtSV/oA8DbLhaa9JoRejntapIpMwdANFSx3uCGW6rSpASShDxAQ
	 HLBy9PtIQr6Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1B0C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632219357.14299.1215151241932710172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22a158832ba5a7016b70236860cd257e7bd8760ba621d5300b8d2131d0a90633
Date: Sun, 04 May 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746322193
