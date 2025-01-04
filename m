Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C54315ECDF
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736002554; cv=none; b=AnfWqcOpEDzBgXiEiX4tKjqXkLRjaG6QGfrgrbq/k96uvAWCZiEbvEcBBelIctnmTtRBJO5ZWs0Hao3x/Da0kpnsMwECo8x0W3RZ5hZHQLPJ+IOs3J8/Ae/GO3dvccvu9/Xk5+EUT+yyZkolawGdH28s26tAdSnV2zBd1/tiySQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736002554; c=relaxed/simple;
	bh=WUt3gR4nmp1wsxrYNybJZvcM2bft2D42h0rCu7FCUlE=;
	h=To:Subject:From:Message-Id:Date; b=mAYJa2f7IvpiQmsPUs7aUiCNUDL6Q4IhJNq26eyjC+MUzZ+xdHCyJMn4vz1iJXArBJRXvIeI8aGdzaUn5n06IGIqRnK3j+GGpyGdfufiYRVPTgET39G5kvfzQoSTA5bHDn9C/E/mMWcclXbZUAI9/LYmI+zH3O0a60ftxDbUYN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZF9bfrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZF9bfrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D44C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736002553;
	bh=WUt3gR4nmp1wsxrYNybJZvcM2bft2D42h0rCu7FCUlE=;
	h=To:Subject:From:Date:From;
	b=VZF9bfrpIDHB0FjGWs3Wl++RWz0q/awxAmDDmwH/zsQgq4r6aPTY2IWQOlMDQ1kEP
	 kEBAk+iHuR+yxeo7KO6KLtvzp65y6gUSWWNtDXqA+jLQzolAph5jaqdqhjlCBqWSYt
	 s6wfUkFwrYeNUY4A6kQp+pJA+lDzvmoItJh+mwtVKqxd3Rq5Ljf1KNC5rwUjCUys9w
	 HkminO0Fbr7rYtWgX6IsToFAU2P9tj9aHlmAcfvzNcMlHCQkDhhNtqbBIKb32pZio3
	 fLWEY6W+Dceox83MGNoZZ8Joi+NLStlk/LqTOkdiuR4Gg/09qrIc5FBXybdcfOryd/
	 yXM5+XafQ3vHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9312CE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173600255358.30790.13609089801028060990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 758e913c3d0c76a0cb8c1e25a45c69beb0a76a7e6251a0973e3c98764897d9a7
Date: Sat, 04 Jan 2025 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736002553
