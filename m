Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2FE22154B
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766253234; cv=none; b=UoxbF+ZOcgGXyN+O3y5FlVfhHt+E+pQHXpUJoGmaMpy3yLILAn5OIbCyvLnrSkeQpsYCprpA5L12f1nE+pyh4qprdeRNErDD+6kUkxe9B/9FS7Cx/JSThsEv7mWIHfM9S7KVpppKj5amzx9g2WfjM48R/4SA45jb9Es9ZxRARGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766253234; c=relaxed/simple;
	bh=HlfOI2cFW7tVpjYkzzWBpDia0XwShl1yIVi0t3EnwQ8=;
	h=To:Subject:From:Message-Id:Date; b=aiiCz0ZFmGey+vOkgOTY2nb7ULShwLNEGMUXUNJkkwekfhNkXW1Z64GIdM7epe6ZCbGas1kdDoH3Rp9HuXPEovbRL79XRYzmT8nrup4sEJR5vTnxSFKYvcYp/3QA6cpkVhGRezV7D9Xg01FEeJ7nzL0V9i4LBBjKpSj2BM1wAXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AItzQ9B3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AItzQ9B3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E3FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766253233;
	bh=HlfOI2cFW7tVpjYkzzWBpDia0XwShl1yIVi0t3EnwQ8=;
	h=To:Subject:From:Date:From;
	b=AItzQ9B3mhrQUCi7Ep+fqZcTvv8wOPGH5+lKvYN0REskw/mFYBXVKAQ1S2UF8Wkdt
	 6VkV2eLErfJLQrAJ2U7MX3NrzE5SSAJjwXaokexLgs7Y4KbG54TKA/CHWAMVz3J+Cu
	 2x24T/0vgsa393QjxSf9VTb7a+N7rouhBMC6zuqmCcJ9VmOQMSMTOwm1KbWSzSOed8
	 vHVO88XKNQeB9C4AkstDdTCmiBDysd7mQxoQzNuw1ID7Cyc8A0/2FoOxfOu4dZJGeX
	 ypocbr22E62KWceycV6cteaYKw2rgQFzIREK7waSRMSRQpL1YsMQ8uJ6ENVU/Kpzll
	 wF6vPVsxtyOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9383DE668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625323358.483.3841722859957643942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdaccf1b895ee74097b4d2a6e2cd600686a7d38e742e686a755301effea43f31
Date: Sat, 20 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766253233
