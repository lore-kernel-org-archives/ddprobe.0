Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55465207A01
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738659354; cv=none; b=qBJJlIilAm8cUrfw0lYmw93cJcu8gya6xdJWZStJqQ/Dmr0JGBqlIvqSUCEWSemn/4EH9bci505xVwyHZ0miUoGjVTlk2T7N0CbNJ7U9eWatYikHSVKkuMgcXDdzIUP/KcyfTm6BzGFQXz5K/rSuoDHBpQ9x6yMPKvkfLwIADKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738659354; c=relaxed/simple;
	bh=RL5+dRy7Ux9BBFZs6Tt4KTlFqAXMlcLh9dY+QHe5Y6s=;
	h=To:Subject:From:Message-Id:Date; b=n2ceJDmp9gRFqO7ztvr7tWgkKneri/JP3r+nkwfE1051yPuQyw5tl8weCOWjqOYmHzof5Z+dSo9b+GY0d5SPF2VXa+xbtdCqwEO5hDsjisN6OGRDgNw7+Ai0UEANQzraHiK4Z+bS621wFRNveSwxdtoJ+BnK3hmboT0fQ9TQSXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kv4/d8+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kv4/d8+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3588C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738659353;
	bh=RL5+dRy7Ux9BBFZs6Tt4KTlFqAXMlcLh9dY+QHe5Y6s=;
	h=To:Subject:From:Date:From;
	b=Kv4/d8+UVKIY7V/e3XZPm30O+K0GvysHYyd58CBMpHyiFlVg1jHMRqTVtExffnhOe
	 3YnRsFRcngBEONioPm+gGjnZK/mSjLeiTDtM66wdBNJo6ztVwcnS5NRpRGjynCYiCi
	 NHJpBOQhx0ulIdd4HcyWlZPftAtd+QFCBDE4kxgke6T70aa9uTcKLfAjkVKHTHZMvy
	 YmQ1CA68zy0lzWMT1Ari/q7yq+kKckxWIkIoHdzM2fdJO3xkEsBHblxHLVj2esGigd
	 hg37bm3XpTdsWYyFmP9BVpT2LpX9L7a+7XUTD3s50pcBiVDCuyR49sZYq+Poml/wx+
	 ZhJ4L7l6lGtjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEADC0218F
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173865935361.8128.2876487199541829048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b405eb30b2109def1841a91729a3c00d0baa853de40ffe3bdd49f2c1bac57a89
Date: Tue, 04 Feb 2025 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738659353
