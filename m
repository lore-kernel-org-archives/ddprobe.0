Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0B4EAC0
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717115063; cv=none; b=jneC/tA3EupAVNbNdhycvzoc+Y4wQgY6b1NQjhMDqlO9iCi9kOs/JywMf++Q/qZJ2tNfsnL2uK2+6cQ1SjziqtzlKOR0QYoZAr9AoHnwxLOxOlnpNwmF0EgNyR2N/LdL5xqpMCsXQXF4ta3giBYMLcRj9KAM0mQlApiWJef8oMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717115063; c=relaxed/simple;
	bh=CBENEoz7bQnZ98hhr6tmch5j+WiLbdb+m0THr3Tfhog=;
	h=To:Subject:From:Message-Id:Date; b=flWnxv8qdFFuQPwQ57rHkLOEVdH5Cub1KRx6xrHti2xOk+meGVFaY/Rj2Q9tnHBDtBFILB9WjYqXsTqKf6obu7lnCKE5vobzF60I2LJXajvvOl5xCZe2REZVJzPCy3mrsdY3GJZn344Hl6Zn3OohuXnxNQyHExeBVtjm+AxZzyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Trx/q1dN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Trx/q1dN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A6DBC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717115063;
	bh=CBENEoz7bQnZ98hhr6tmch5j+WiLbdb+m0THr3Tfhog=;
	h=To:Subject:From:Date:From;
	b=Trx/q1dN2AqgqhjAmOIDsTM0S8xU75c+RpjB66hU3+NmgAuFJRQS/3CTVpo6n8awH
	 OPjlLOmWuc/A6IcukkYz8qkCwl/zqGxBcP+uY0PfmPtPubbPO+JL7+TE0K88wzuTf8
	 JT4RIJR9GzxU4I13LmkG0px2Q/LAQyfEawVhBuf8HQIYElxeHUfYZv2Wlmox80GPgY
	 BITB1qXAMNHLKLimmVIFNv9CqepTOJpY28waqJAgFCQIORDf1u6WDpXXLEv2VBtxhP
	 t+SCTOfU2m4NuYIlipvsp8f4LWB53n4dCtpjzz3JRs7b0Mg7DQNNhWRnPSrdGcavKH
	 aX1dOBFyhpHtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DDCE9C25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711506286.18201.3428680413202718631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3aa80fbca1df14f1772375606eb41934664db3c1aada70f98b9c4fe51a77fc1
Date: Fri, 31 May 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717115062
