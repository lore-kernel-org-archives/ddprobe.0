Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2281A39A07B
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777547854; cv=none; b=TOtPNmovW+Ukhy2hrBIOfmp0yy5Llpvpd2CRfA94KjyaW49m24qM/Blwkggcio+Qii83M67xBQSwO/B5a1jeXpyrA+P5zlBpe7qClSOEI2XyR6qtuAG8EVo89a0A4gv68mGtvnzOoYhAexAU6QSBaWQWjllCv3d6wO2m9SuG2jc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777547854; c=relaxed/simple;
	bh=rtcdkvGVH0/qjCk0S4bb/3Xm07pZDn5AQN1oH5pm0v0=;
	h=To:Subject:From:Message-Id:Date; b=C/L2TWiiKk0I04faP//Cuo4Xd1oWVEowJ49m/BslUFqNgFAbv36xsDCv76nw612BZQb7xAN4K+VssNhcAzbxc6PUjZIN834QDDKEjxmgFFAjGpWFDtuFJM5xy8x6xfCkyg8SWYhu+Do6RUfwf/wap4ef2zBDR8X+fb8dWcf/Cak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZ8KGmP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZ8KGmP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9D3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777547853;
	bh=rtcdkvGVH0/qjCk0S4bb/3Xm07pZDn5AQN1oH5pm0v0=;
	h=To:Subject:From:Date:From;
	b=BZ8KGmP+HpxXdizZroyXgOki8FWYy1JYI90yP3OUUeuC9ptKfwmQm/ReLP7B6uqYr
	 niqoijgv4C0+4wcWZ2c5GWcAJxcRXFYm5xU3yHHjP9s1INSDRS/R+1SZnGW5OoCKCz
	 758ax41MZfKmI5QQ5ODfynFgfY0aYL0os3CwbeR5tDfUWbU5Tk0uZ/aBitenvQYEOd
	 cdnm+YpN4AjSpFHllNNLYhzKoDD3BjxZR7INLe5SNGffOvIPAxCoVYNq2aYnsZCwKq
	 rwnCKlvhzyDYHgWgO2WpO8tRJSUn/PjZfOJxmuRhIqt1s2fhef0tAmPxsCEf2ZSGAy
	 gG6SSN3Msd9oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9EB2FF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177754785368.24274.9880833474487391960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e61e0d94e8c0acab0151495db1402757c80bcf8734ba880c9c16599008c1bca
Date: Thu, 30 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777547853
