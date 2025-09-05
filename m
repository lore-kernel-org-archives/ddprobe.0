Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1973A315D22
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757099394; cv=none; b=iKWynF8MpWl8KBd0zL1SFGUWqJebBIOaWetwLg9Np2uAF5KQXUci9wi7XqdS7jcgm8bTg6YXBVlXRrDLZKL5yn+wjXw7i96/1SIQTpFrg9qj7LWrEAPUzH0sDnkK2IMrFlrCtVi8UWzbZok0xs+AyTSd3qLz3Dze0j7DgUrq6mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757099394; c=relaxed/simple;
	bh=7MCXPqGGOTtMznCUDfiB+lU9iDBsKSMAAfiw73049fE=;
	h=To:Subject:From:Message-Id:Date; b=pW0N9sdwIze1rtlxJS3OWm5LJPOC5xYPX+gtB3aMrT6nk13hOpOKaHh7qxQqcd/kZBIccrO1KWwRZBomRbTy7jVOPxsZTEDYxiC0PAXTm42RDbeNs5C6liDdogPd+HF+5LteEj9PD9bLfCmN9Qi2VgnhI77u73eHqF24A9bJpz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gg4GgA56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gg4GgA56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DCDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757099393;
	bh=7MCXPqGGOTtMznCUDfiB+lU9iDBsKSMAAfiw73049fE=;
	h=To:Subject:From:Date:From;
	b=gg4GgA56u2Ifs0cRpA18q1qvpZebKuCJ+EbUNeUM9diXeaRwwZQNJb7mifyslODMU
	 4+VQvW/nun0OSiU9j3xqr/3oSSdEikw369e0BxVh/JlG2JG8pjjajiw2A9LOBiKUJ7
	 /+P80swPrWHVGxHUNveiEQ0m8n26ZhAcujzS+5WX3k2LidstW7fI8ASeuAXM75X4yW
	 S44xjuol4/gkQ4CyWRxVzyXU+plGynGkzeWHQ9STBHd2I5Y2LZFmrgEFjS6K3pwUA3
	 JrkQqoOwlxjnZQ/UaisDazqzRNYOKT8aspQJJeg+fS26fpQ0MbmLQKkUuL09PWGNPO
	 55oj5baC022Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DDDCA0FED
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175709939358.22751.10090261592748365699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c78038d79c3e28f780c7ccc188549c629b3617f05d4a2b0e2edf1e1000ce913
Date: Fri, 05 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757099393
