Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9DD1A23B9
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764937974; cv=none; b=KYb6w4/bj4dB8iG7g0xjkKmQrq8/6Tuq5n028V39dbOxYdctqN44Rnd+0NvMdqL8J+X4Hm99SfFwcW0lNVscGpKkD5vD1S5kwPam1RDDuoNWaoOZ8OAtOYMWN0sDXT9rJqzl/CXRNwqV9xVAVedvwxEpOYIv+iIV2UWIb9ut+uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764937974; c=relaxed/simple;
	bh=jYM0sWUC38lb7U97TaQbXl4zgPGyiWYRg1pOARjeAkY=;
	h=To:Subject:From:Message-Id:Date; b=Y99vXXLZRzQoAsLi4GuryJUO14Bmidnfkfsj0iKFsLo6cTLqJr7mDLiVYB5meJebCPWcBiYd4NtGvEo7Ja4zpVXysCnpjqjEBThbmkV/yM1FH1ERus8GjeUGynIpZ+RGUhQyx4BKrtbsDV30q9l8+73SGDr78+J0gmt3jV0vK/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNyvxioo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNyvxioo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DB0C113D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764937973;
	bh=jYM0sWUC38lb7U97TaQbXl4zgPGyiWYRg1pOARjeAkY=;
	h=To:Subject:From:Date:From;
	b=iNyvxiooFhPy+N6MLggMxADVl497Ist9oUFGrjYSpuBOp+7304QagZn3GbPp8qxIw
	 e2ETIojjxl9VzXgetHN6Wfwe/dRHq3G71fPAeMALQOwglcEDXLstbRKN2ikjNoWq11
	 FdHKvMXB62eQBU5gYg+HraWpQXy2t+pjfdhPhF4S/Kr/eTh+MGo0BSkNxvNsE5V7hT
	 Q4CAo++2gp0eafyx5uLdTM+b0/YdiCPJ/MgkFzytNQg3fXklC46schsyco9tMbL9IA
	 RcWryaEzQTPYPaNgP64p1uL4xpzsr2hsr8RZ/CFtzq/HsQ+A6N5/QtFG+c6asgC7A7
	 u6kNJHtNV4ybA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91548D2F7E7
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493797358.12480.846912464702713570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67e377435cd31c8f8ef09ac760f65c4899d691056c5629c064968ae5707f6535
Date: Fri, 05 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764937973
