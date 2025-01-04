Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA2435959
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736033754; cv=none; b=YJglKoFgXOT8YA4wAsZL5hk5mnMHuAvyTBAHidxmE69D6ZjyjfrOuOxcFu4bfQNLeS5qZHLzdb+wvP0xMPgw4gW3j655lnfzrQTl7VuTrraPyICETF6T2qu0zyqtI0fxC1Dv0jWxmvWgGVDvui8ZNKnr4TgEjuqSsLunqTy1RFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736033754; c=relaxed/simple;
	bh=dMRqwnwLsnVh4wcu2aXJqAAnJLxyw+ucgHOMLjYgYU4=;
	h=To:Subject:From:Message-Id:Date; b=jSto87nV4xO4XDf9hqV/ZvGTN/stVMtIcBQdCAjjSn0NLGKs8s2IR+/XBpmKbXpFI+0KIODMo4Slw1ThwtrGS9KKTNej7FnpOyIQaDT+5Pb1ce7E84CinJIP1n3a7atPkd1j7KViHhEQko6S2xeH1W83A2ed03lU7yfk6xgFAkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b16VfGzL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b16VfGzL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63BCC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736033753;
	bh=dMRqwnwLsnVh4wcu2aXJqAAnJLxyw+ucgHOMLjYgYU4=;
	h=To:Subject:From:Date:From;
	b=b16VfGzLK5fPwaI17soOSP3XLodVJ9Y2EkjeEceWBidu6QIrKJptAzK0BSTwCuuIc
	 czZjdRhyg6R4i+y0K+QhBN0y3sS6Xyo+LvrckdviLaVqEvTYWvTCVVDq73Aiy0MFES
	 +fi1wVQetOeOt2r1rbceApUa0heFVaVMgiV0V4BIDM5gL74FwLWzhqiAZ4xKrapAin
	 i86TPLmthhRhjT8elGKAwKCQF8RfaJgvnGITLFucZyPEk6dTqkxL/OJ257uNkS+0+g
	 pmK62cj3i25RkP6ROH7JFB/CN6YC74g0qx6l4DYXe+DutemIpssfLQAar7r6z0mP3M
	 XbD6IDEiMJjjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9429BE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173603375359.29920.3457298441497881550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e8978c7f003e0e8384af1ed683d483c06a244c91862a480b9b18f1f7a36056
Date: Sat, 04 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736033753
