Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3909F217F33
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729907754; cv=none; b=l9IQYC20sHFSb2lbM47UBVuMdcjejsEBooKQKkiuEme87l3lIX4qW6CT2F/V8TS5TwFeGUZM0iI9MDVVW4pu98VSvN1qxsT68yS1xAgoYq9FB7tsw+u0sBCNLXygrvSjSQ9I+jnWqyOj+XTVlu4NYC3kpbSB1fr/dDNp5zlBk48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729907754; c=relaxed/simple;
	bh=J614E1su+c9ngxnffpUZArUnJ4DNXKJRgitTW7MshOs=;
	h=To:Subject:From:Message-Id:Date; b=FtSjMRw5/4jDeQO7CU45L6QOIgI/qiT2lfI/znwjW2iN+I+hXr/jeU0BoX1+lh06k8XzTGFlssNiKZbsULfNGXwvXHphGGa5w++IWQIfEz8FOA79+BZ7dC1/gPSRciIjcI5FmFkyiz15Nak0z8/MKg4nNKE01ZhtNIx6PAJvSz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjlFiCD/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjlFiCD/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2162C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729907753;
	bh=J614E1su+c9ngxnffpUZArUnJ4DNXKJRgitTW7MshOs=;
	h=To:Subject:From:Date:From;
	b=LjlFiCD/B1EcQFOSYrdSMiXuqeO+uYms1NzAuV1ytLVz6uKvcGpLG6D6AgbkInrhH
	 jrQx7w6sBtxedVKsi0RaPjXCBnOAgDXMkVB3ODtSVcK9AjuQi3o48fKrk4SOC26HWg
	 MS+GZ/WHYziLnf8/Z3wHqqwqx24SCAFy1XJTSQ5t0V7xPGO9xKh3pyj51/Plv0fm5b
	 9Dfawi9Ye1Z6GCELc8BiG+VqKZlHd3IUX05aQVozpM2IYmCrihYjJC+s2QRrHG4H4U
	 7yHfp0LNsMYO+PPtqq5AJ/5euRGefTAwR8emqJ68mkWp6RIheeGxRuXou3qGW5+AOL
	 btAno40WOq1zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF37D149FC
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172990775361.3451.346788159846458922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06e247c8f0d76316a65589d4511447c98f62d067009662a7dec23519e14ed03d
Date: Sat, 26 Oct 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729907753
