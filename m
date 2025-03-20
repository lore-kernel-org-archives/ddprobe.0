Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377912253F6
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742491795; cv=none; b=aIG/3PJ5laub/UuOnwqd899rUnzkPlnP1xLKhFqF+oABxxOx6r9bQtKS+Pdh6+nSgQIWnHvrjXq2vLGG72dQPDdv9PtdjLUE7ylAxRXgw5GbZiQuYXuqsGChZ76jRAW25XVj+9Twdd4V9uBKkYcvJwdktPtUFnGdf6auZBZ3h4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742491795; c=relaxed/simple;
	bh=hs4bWySWyxNbVZ9fz6DyhNwWTXYWd1DZQixjmiBitUw=;
	h=To:Subject:From:Message-Id:Date; b=MyghJWCHqqq/xPTX8Uu/45UTi2qXyOyhf76KXdxUM6GeCJA0EbxvacIROqKz9Nj+WglBWAjmvn2K0vdzMpxc4pQccHKs0J9Qpfhrpt4phvC6kBZy1mVKMyGlAgpGfG80VbeETmjjWuFZpnGQYkxdEfWVUnM6MBjMjDAS9MteOx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urFtDYx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urFtDYx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0207C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742491793;
	bh=hs4bWySWyxNbVZ9fz6DyhNwWTXYWd1DZQixjmiBitUw=;
	h=To:Subject:From:Date:From;
	b=urFtDYx3VbC6oVVtmKty6HcjEF75KVY3zrpWJvaukH+0fAKrrjBYZ9sMX/MpXJ7rK
	 DvlLROsODfx1rSvXIwYTPVorV6GPjZL8P5XjFPPgT5IbYIrtJqstpXJLO21E7K9F12
	 bZu2yNguCH7FB6pf/p01/6IW7s0mz292AzKZDY1vUhEHIlZQfWS6ITaPlIkX+7uJB5
	 LTZybHwkZ3dfJY0+S1dY5syk3U0YXXKPOTBdMJJiEk07F+gki8dg0zB1G1LWJP7dUh
	 WWr5E64VGhtXrXSRxqqPylFsTchpk8sQ6Y7VOYROo25euaUpNjRamGAQtb9mfUVvgE
	 FzfMlq6aeR4Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99F7AC35FFF
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174249179362.25487.3860584688174341847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7acfe65384d512393808a2a414e6606de2c6bf70661f18b73a0b8c040c3e939d
Date: Thu, 20 Mar 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742491793
