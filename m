Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D44421ABC1
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770913494; cv=none; b=jnIhiXD7QPDiqW2TrHKbYcofrzaOLqREVFDyvbmV3ugdArOarRpfUudlQ85wt7ufYYrs9NDY3LA/vhuA+SpJS3oWnkfWbDNjNUr7kp/Zx5tGAGhi9Ytm1FhFkGnc6cXq+KsnjWyffw0+tcMMqDon/8HFq1cT2/umU7TUPZQrSro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770913494; c=relaxed/simple;
	bh=22Of1ezwBqmkzPwA72JXofexAP7sSXys6zD76kn2EkM=;
	h=To:Subject:From:Message-Id:Date; b=l+IoXb+ADNnUViPLC2z55dxcCyd8P+FZHFAy7u+OV5QVkv+nkFzsZr7D8JZzc2otXFPCsPSvoMuB4AzuCvzqWmsIYM5wSi6ojkubBVni9NdvsXFn8SdhKCqpaBftwo9bMI+rJ1S4iP06a6PLNu6E8UUbaB3CghansJ8WOa6H01Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JirTY27k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JirTY27k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AA1C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770913493;
	bh=22Of1ezwBqmkzPwA72JXofexAP7sSXys6zD76kn2EkM=;
	h=To:Subject:From:Date:From;
	b=JirTY27kEfQmWIwecsTzrO0Xmqt2vPLZgc3xE+7ETWTFwl8xVpF0kM+Dy5Olv6AsL
	 XqKBRWs+N1cfgWXrkn0Q2uFWq67NoYLM7dvRIyvN1Yi8zQzp9lpOEyqHgVpBwohPak
	 aUKxIoGI4RivSPgKcQjGi0oGns2gpdOS3RC92379MFMItZRwyMaPF/x5sBMd4LI9nm
	 lw/2b2XBSWrcC+vcbY8mDaMIFCh/Vd7pJzOqtiUoOVQ+4UuC8ryq+A0M3KEycgtsy+
	 hRlhIDPA6kXoioKZrhW3qtC+2Ww2psTGvmKGnRh7nC/pLs0p5umF4sAWqPVWmnxBLE
	 i/QTx34SUxcUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0DEE3695
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091349367.11516.7800634085044834765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2df17dad1fac168e559b986e6bc7295af0da121537f87f3566ca2848e02d066
Date: Thu, 12 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770913493
