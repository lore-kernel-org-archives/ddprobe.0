Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103971ACEAC
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736683554; cv=none; b=opEKWQX/wwvh6rh7ei88n1g9v1uFl836V9LGajgT2EYeFkcigfNhMV2fVZwGqAYFxyR6XxZIPPd46LIs0y81KGXaJ4jRu0AbioULeb4kB8AdnbWcPT92sD6j01iqivqYg2eMk2kWmvnesB3bJ8wbvoty3mJ0LIv0f4s0qDl9+VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736683554; c=relaxed/simple;
	bh=Kz+TcHmO5Xe+8+PnWZKV5F2dWD8ynBq53Asomo9rL2o=;
	h=To:Subject:From:Message-Id:Date; b=ek0HmmLTh/6Pv7ht44FZkgWYgwi3cg9xIgqAXg+ikxJMXcRFAB0NHJcMzcK2UO9ICFWv3bf4dMouVUe1sEKwFxtHpcjFiqbWn+mZsVLA70D1rXtqpAj5uw/yZSl0IQ6CLY5u2XaXSuK+u9z+tPBkFNVJbZt15AMpfoOz6BNwpbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KfzatCai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KfzatCai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E32FC4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736683553;
	bh=Kz+TcHmO5Xe+8+PnWZKV5F2dWD8ynBq53Asomo9rL2o=;
	h=To:Subject:From:Date:From;
	b=KfzatCaiGJmPw/S0YCj1HXXewVS3kqb8PduLnisfBL2EomT+Ppz2lHfQ4XlU9p4+R
	 CRI8P2E9vYNUu1lnPOe+41m7AUXhpwdK4XpcJG9GB47YcyKlA4FFNr2p2cCE4s+1fd
	 FrbO4oET8WndWqeIXvaTxMDYXvUqt9vjXpXtFuyPktiMRReyAzmfeGh//8wnAInKcB
	 YTlCJNkyHG1H3qVjJUEwzTu+gRjVhXW0bKfU52o6KNGq8aCPrZtX3fG86lvMDk4u0M
	 D+RinNAXjdk8/pyJEfdTqgrkbTsTU23/3eZSKNSfZz1Tks4D4mgk4ge9gzDCfBbSfI
	 nbUVlHdTpQpYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905E9E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173668355358.8069.11352874310636171134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c87cc9128e6aa4e44e47b90b25e86d78206ebed8994d48f525fbb077d1d6ef
Date: Sun, 12 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736683553
