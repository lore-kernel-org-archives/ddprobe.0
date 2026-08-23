Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6459E23909F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787520634; cv=none; b=kbW11UHmnX0bd0P23zlkfUPl6VoL57URKHaZVn1a5P6I+QNLpwpfOB+2IP6wOFMwjOmomCVFGjXU4s6JeI9O14nyLiIcGQME1pmdKEf4MlBIIq4wxkMKo5/0e80B7fLfjTjyBHXFwWINp4Go2U+BRxDXLdzIQlLUpVt52YtU+zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787520634; c=relaxed/simple;
	bh=K9ikXbzi+5fdyFaGhzPigcyBXixBAAIdPKkc1qj4cs8=;
	h=To:Subject:From:Message-Id:Date; b=S0b1kJkBtwzjji3mpUxVIZA8JUPYUm/ukBDKwFEBGu6mz60BnfIkNHs5k239Kd0VJtrYw2bEzEmStDvxMS5C/RN3kOxHK6/r7S8CKKLVdVpCfB3KwXCbWDjkSExkJ3rnFjngZZo7X4xAsChGm29jF9D/urXzWDV6fWZLcMD8f1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siykxMNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siykxMNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EF1C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787520633;
	bh=K9ikXbzi+5fdyFaGhzPigcyBXixBAAIdPKkc1qj4cs8=;
	h=To:Subject:From:Date:From;
	b=siykxMNwjpRh1Uwe4zbAprUJjAir93Y9PmFlnlUlTOSlE0tK8yYTUX2JjGtL2tue5
	 SXILEosQAnVXT7KA3vmO9m/HnoZRkKOBfj5LSb0rd3N0AIU3ddmYlBQGG+xiHLkiCE
	 UCLUIt/KZkO1NY6Q6YEVOqUH6eHBJE8MIGmjSWsGOUsY9ZpjzCaGWZkR3q7Uza97fD
	 5r7Bcgc+Yu7kToYv8JgnRbb5oEKa33K/6ZZxUFGw425jwfsMbp0IKXb4JtiexeZKd3
	 zOKhCTxYutpQicZZoO4JQtOhYIrkxiNWDplSK7mwaqAE8ghyrzkZ6CXud2XWout1ka
	 6v4HYXUffY8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD76FC5DF8C
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178752063368.31163.16592367046357668602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ba37cf0e8b3de1732b2551c84ef15667741a7ad49df3a7cfa3e46f47896ba3
Date: Sun, 23 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787520633
