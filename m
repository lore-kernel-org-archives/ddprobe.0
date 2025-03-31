Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B8F1953A1
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743416994; cv=none; b=P4034Lj9OIBZbXGD2XNh+vFp2oKCqcJhA+kMMGcM024fmWD9k30jatTfhA502VToTr8OSMNlHAHri9t8zOFKpn8MkBwv7ffSGmq197bt+B5fxTry4AMsGw6LkaesHfmTdVqqoV9kgONjwE3F5fBJp0ZmJgttQPf0OgO3jnQGRMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743416994; c=relaxed/simple;
	bh=O1zda+ckM5bjCth3KzuBA5h5jt1jkdWJkde5+50aiXQ=;
	h=To:Subject:From:Message-Id:Date; b=qw2rEQwLoRVdEDwqTgS93h0R7oi50eN7IvfUri5qfgWJNxI4gf2GZ9/MhRVGjDCJk5ZYntj9TZCl8qldczjYSdV3urXnd0hDEBCvLl+CMzOzjbTAG8IJ7m/XOGrA2KuJkRZl86vwbPesROnQ7dV3Wa2+SRTGMB7R8KUOzHlmEZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW+yD7Ad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aW+yD7Ad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9819C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743416993;
	bh=O1zda+ckM5bjCth3KzuBA5h5jt1jkdWJkde5+50aiXQ=;
	h=To:Subject:From:Date:From;
	b=aW+yD7AdrkZe7yPzZwh2gt8J3GHyDgu/Snd3DwszpQiOeFpkM/0Jx2336bgMVLflM
	 cJYzobhzR/++6sVaaTNPjViLH1JkmqWVDUMUAFp16GQljXUbSIlw95xuAuXTonc/ol
	 rgfqivJEEZvy55iZhW61nRyn5b+p7p+dhBaXOWJIvaTFewFI3gbptHHet007CkzwO7
	 3cJuN9aD59QRPZTatwgeOiE0GdTG3eiHiFiq/BII9jkNrx5j4omTQRluIBYEgnHO68
	 WZ+8i+L4LQWJHtESCpUrdOSec7+jdz84l5TTJYOfG0QkjklZHCGQ4dHeFRwIibKRj9
	 9v0Uk+fOhviGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9711FC3600B
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341699359.3193.17798110228386892398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd7699adacab91b61cb118b9041ea84770f5762e4e6aabada6d475d21242dd37
Date: Mon, 31 Mar 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743416993
