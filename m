Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F8E3128CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766055834; cv=none; b=jRGn1sZMQugOuEIIJ0rFiLe+9sViiS9REZEV8hL0yvPhmPAGzWI/5AGvnGA18U5B2pCIesJbNKgVz2f2f9T0CJMymLtPtEV/QPH65R6/Fz7N90y/hBjK5gNQU6n9qkcMxE7+lJ71dmapZlJQTN4SoNc1NPmzEHRkTT1wI3ruisk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766055834; c=relaxed/simple;
	bh=BNOopHnV3o8/5tmJ+8LR9tgxq0ok/Q+QmOKcLuhweA8=;
	h=To:Subject:From:Message-Id:Date; b=aL62U+jo5c/0lcpwor5lrOm0CdbIDWyZrj8X78uhmCuMciFqA7a5ajrStA8fSbNWMU6Yy6Tt199Hzi9Jxhdk6kcSQ6h2aiGHU8NKMm63t2SFXVlAMsUS6dgpbOCSuBxoj5Ks+vgqs0VGWY66vj7krGYkeXUwSw9PEN0ieRYSfz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=spyffZ1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="spyffZ1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A291EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766055833;
	bh=BNOopHnV3o8/5tmJ+8LR9tgxq0ok/Q+QmOKcLuhweA8=;
	h=To:Subject:From:Date:From;
	b=spyffZ1tNgQwVF5tFRy4ZEC45qi8aHflvqhuNQArFPxdTE4sHEJarJXgJ3FtEnRwC
	 0KCNmyuNaUJdaL0PffDDyStgZxFMnvtpT8xV6ZezG6E44wAqh+etOzJ7vJNJBSlIhC
	 uov/ygbzHfmEe3oozt3cRZuFGq83QGSuH3obMoPhWe5PM3/GtemM4Lu+ASzk0j1QJj
	 3uI2Q7UKeoFmhnEO1aA/eJUTXA3+dM69duRUTYeN/UtcRlF/yO0h/nlHZ9jAJ5/OF7
	 VKMETBwm7iWYnT+WPYQpGbSSI1Frxg9AF+GESUtyO802HQkSRiCEFdDIDTYIVO4uTx
	 NffZKrBfmmbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D4D6ACE2
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605583358.24917.11545842939519035410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94285404873002f52fa409f760f6b4e7525a37183571e792abfd738b7049a1fd
Date: Thu, 18 Dec 2025 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766055833
