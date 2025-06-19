Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B46158874
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750299594; cv=none; b=lfIuPO5osaSvQ8XUPWjVcAUoGCEosueBwK9I7W2Ebsu6gxSUzwWnsxZ3XZ3k/AAK5jET6UECYs2eyIk5t7Dbh40TVOl2FnPg9hQJwD/0qdW8vELSu62Pe51F2vAPqGRy2Z8lMswCxm9Z4xRZlEPMj5okG4HKYp3422GeIoRUt6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750299594; c=relaxed/simple;
	bh=giEt3+gJMrDE7ftU8cDZnDo1C+Rj/8/nDVlLtuWvspc=;
	h=To:Subject:From:Message-Id:Date; b=qK7TH+A8wfz7iUeiN6vi/zz0vy4wHhjr+y3EmIeT0vGpritLHYoHxcSd3fUXnEIr6SsjhYh1Ysp8Py6oK0zoP3E6yjyyDcb6RGuSyqY2dqkSRY0D4irAwG/8mveqFph5jnGSDlfn/KuDxmZ28tfbvafqNRkR3sCJ9YEHM6t6L4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tX+o90X2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tX+o90X2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1264C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750299593;
	bh=giEt3+gJMrDE7ftU8cDZnDo1C+Rj/8/nDVlLtuWvspc=;
	h=To:Subject:From:Date:From;
	b=tX+o90X2BnGXZ8KOPVu4XX2oslQ0n+jpnv235kQgPpprbq7C0X9D+v1SF6FWqr1P/
	 /NpSaBXFyPAO5jR/z12XdBee97+fuQZXbXSMVOb7TvNaFANmf4j0Z1T8w6u7DFSOLt
	 ziPuz9lIOC7rjhAh+1mfcxhnIcyzZIdeTRKyg3OLx6Zb1+M2Pwr/u80J4a6Iwq+N/l
	 9MOUsrjXk/CTqZk812+nn576PwZUbxs1o9wz4m5UzrKvy/uaBIXzjHiS+MPYHy8LSw
	 EEYyOICCMr9I4kH79XWvqGdp+d8WNKl/CcXOS6ieXcvknkRcfqGn73ORtLRdnzvCeN
	 mFJNd3ZYd5gCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9062AC7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029959358.23620.10777471794805925137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3919518f15be37779eb498698b0f8f2894e546fc018a3e487fad8cc8a3d092fa
Date: Thu, 19 Jun 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750299593
