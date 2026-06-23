Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5272D5937
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782221794; cv=none; b=eBEc9j2ubT7BpxKFf5Qfd6JKpRK5hhjt8JYekWviKS2zOsBdghthfthjsFT02lsj33Zseg4i+DDfPCGFEPSLNS8yc492f04ewhD9HbTfx54yJRmdoxxMQUV8UCOBQsFKzwe+JfnvXl+9cWievvcojdYiK+MvANSDNBxyu/+PyIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782221794; c=relaxed/simple;
	bh=bH90Wx4SJ1MN23c8WaN6fqfa3AQnjFSvRxv60toqqYw=;
	h=To:Subject:From:Message-Id:Date; b=ch6OUI2vfepnKPNDh9wZQD237nRdM08qONEDbVDTxAJSj0ImloyUuQ5676Oqe2SLdEu4GkrS4qOcvNJAxAbAeKUf6XgUzBEBm3MX1WTkWnu1HmejkLPng+IsK2flHyRgPwYfbZGbg7THIq0dPVCuh1Mjz9TDfSqxhBxjtJlB9ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CDt8VlBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CDt8VlBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D862EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782221793;
	bh=bH90Wx4SJ1MN23c8WaN6fqfa3AQnjFSvRxv60toqqYw=;
	h=To:Subject:From:Date:From;
	b=CDt8VlBVsv3l4c42i5g6DyAFC9kqS4jR09oiXMK1e4N0PkKVQq+n8Gwxuk1+Bsb74
	 IaOWFIlNVWxK4s8w8gb7xgjR6EOgXscFRhUh0H6cPXPdjbYCo/vtTCdlvQ8vh5dpL7
	 47iOUIlWssmN/opTUENu1rNMsG59o0NFvUo37FKd+bNyXtyH31TwtxX4+Pdf6L1AAL
	 VOYuCcOXhvZxOPJ+QDl0Xw2dfeJ69s1b+VIYyHf3QVcTAxrHHn7dn6/f3U0/sc/6bd
	 XO+jjmGSAtDgNSWSwo3FZz1BeHrWRDK454G6NTnZKSEoTqW5tEK8x6iwFKB2An9ODT
	 rjwjtcmb5IGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BC8CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 13:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178222179371.25699.14950309317605017275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1e35a4d626524869ebcb1ba6dcc37de13829c6f1fbd3a91606e534ed7cff55
Date: Tue, 23 Jun 2026 13:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782221793
