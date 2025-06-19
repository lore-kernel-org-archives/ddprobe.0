Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193BC2AF1C
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750291794; cv=none; b=Ts3V83Mhpb81SpNrd7vNaGkLR/7bi5x4cgKtMqbdmWuTXdVEbu8kpyHmLv3R/7r+X/wSL7U4snvVkE6JosvYK4+GJbY59rvOWLdj1EAQHsi9vJKGoZDhcap2bx3q2KTT+4X6eYFCjErQRCxkcnZfEa63A961nL+7q7XFNg0otCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750291794; c=relaxed/simple;
	bh=ILtsgJvEtvkk91mzEBdsoRzKxhDeSmpmoa/D3Dk4G7g=;
	h=To:Subject:From:Message-Id:Date; b=ULTvgAUoRbFDWQABpk5tyPz9nTgixEiLfn1a0jLGcS7Cn7qj4W2hfzOsFzpDgTbEYn1ZY5ALzui6w9fopbqb5QPbZLhwinPZYtNgC51QtCuRyxhixp1E2jv0PXTI9cZOaaMKvEPPCanzZ4ZsqW9hjMXcDQzjjDDZfg3cI3RITbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYk3sTs7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYk3sTs7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70EDC4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750291793;
	bh=ILtsgJvEtvkk91mzEBdsoRzKxhDeSmpmoa/D3Dk4G7g=;
	h=To:Subject:From:Date:From;
	b=fYk3sTs7ZlBs7US2Q0sjf75zQH7M+u5QvtweOZyZnOJsjq3OF+XCPYMFA2qKwlp3R
	 KqJPyVLz+3xnzitMDs29D9OOYbiIEM2bDz9vaDYSbi9hg78UXwCslxVVNMeRJ3ZAbg
	 1TwXoh/7/5K1Dom0HQu5Njxaqfajeekr5uKVg/EVVuKk7Cfjwm0uTT/0aklJNwVjhM
	 kOyvfmFCaiafFmqO/JmYGdZhlu9pxF2W6/4/MX/2e5a71s/WvBaUPO4cUZ7PVWNMjs
	 exuefsvKZOIFgaDpeClKFefn5PfSaU4obAfri+qzjhIln7fILylDA4G1GI7HqKqFKV
	 9ozQoKxr8Tb5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA8C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029179357.3370.17485521599690921310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 691342c94671385e01c89a31f3b8a7aeca7819a84c491655af2f23190d6df4e0
Date: Thu, 19 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750291793
