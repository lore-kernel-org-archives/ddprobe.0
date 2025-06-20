Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44307C8FE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750378794; cv=none; b=oAMIOrBNtlqZgUdb7uN+hRi/GUJpO0dolKONAldmwyqmOuu9JjaqicX+Y+atAVKtlkHfUb8RGk5FJ1xku5HQMF5Ar1t3tbCUUvINEoZVqM5a3nFGMg6dBs7PB6VchuISvgQPBgrSgAP+J0uwfUkwf7ALVVkU9KsLMqcOJpLXNgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750378794; c=relaxed/simple;
	bh=AZRp1csVPsbbCmMIzJiRC7Qisc7+VvxyWadVNTSc7n4=;
	h=To:Subject:From:Message-Id:Date; b=m+RsILXFI6fyk7frZWJ6anzqk8jHojWXyG0jyRvi5Bunde9KsXX0wYxc/V2kvWanz+1xUQjEeXmdEia/ub4wXRhhgrGPHh84fjKz8YULhxsgcjJiZHO5mc06ydZXyLQZMq8oq3W5peg5LwCIGtva4A6UuLGgeKJvo1HRzwX9Wp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIsya+c1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIsya+c1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C1C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750378793;
	bh=AZRp1csVPsbbCmMIzJiRC7Qisc7+VvxyWadVNTSc7n4=;
	h=To:Subject:From:Date:From;
	b=YIsya+c1RhkbxQiIHRlQD4wKIiFX/Z390iakjtfKVamcKeMsrVLTw3ejfIzUju7qi
	 e1vRvbQNab9c/WYiIkvda+sStwfIYjgSl7O/ck0qa29p8TCMLoFS++UXNuvadKNwp+
	 6w9SFPQb6YOHBL5rzJnbCUfPcpIC40KGxYuQ7KDXyx+wQ5jUjMvJQrUCVUz2x03rt4
	 VaonYkz8tO/3EVs8yRcKLMO13UWwX0Ca73gYqFZ+EyYEUNAfYqKeRcR8YNtkcr9fc0
	 Ng/yXYUDhnzmrceVvbLrsKq2TI1pBVXdumM8QRY/dB9quzGNEEQBkvJSiUiU6M2q7V
	 8PfJU6yQ5VXYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F9BC7115A
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037879358.11753.17347976824879813291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e81c55550371a175093e0ec3ec2ca793375b3f3ca1f943063a8d79f859381df5
Date: Fri, 20 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750378793
