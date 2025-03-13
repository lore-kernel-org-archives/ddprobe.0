Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52E1D1D5CC4
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741897734; cv=none; b=Bz3qp2bqJWupn9i0PHu5j7mJavwfQonEuEU/QK5j3BkuXS4dcCC+zvRo7B55p3NXq+lDSh8UdDGwwGiU08319Hjc+lo2c8Tj4hzxMSabZXXIC8P6WXIgK/spOlNCwuexEPXuBHpG3465xUUlgGXmctacZ+Xy/cSxuumA+DHxtBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741897734; c=relaxed/simple;
	bh=DsBPAWN6QBiBYjENkbPWW52/AphAwvIX86b4+TfSgHc=;
	h=To:Subject:From:Message-Id:Date; b=f1/A8ODaUOWBJKJCNBjnvBa4MzQVGzF86DWr6/Qzmcah36wWyn3No+5InmNPurimOFT3+tGjD54Pvmj1uG8fS6/lzZkr5crXkDjvGGwWCzWVERoALG8gdjomaQjr6nsIFvuOfH34gtNGb5Y9G6HXVDUiwOhjhcw6GoPWQ6vc79g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M1GLut1G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M1GLut1G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB863C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741897733;
	bh=DsBPAWN6QBiBYjENkbPWW52/AphAwvIX86b4+TfSgHc=;
	h=To:Subject:From:Date:From;
	b=M1GLut1G5Mk8ixm4tKxYqdZSHvuWX/FnGN137f49G+9Ipi4nh4au+UZih4WJaXCaw
	 HGepnK+Xhp2NoiF6wL3xaCVOqkiRcEswp6ZSp1/M1nuziZ64ODc+dygD2dYpAVZNcF
	 /aJfJHg5MRUyMyiWL2GDzzj9/GSr/Pyxr9PVJSFu+fzlpqaJEAT9d9ciQ7B4VwLXr+
	 kiQ5ol61eCBko/vHIdW3luhQgJxekww1aeRIDMiQ2x4HFZ4+sVC9AiHH9xaXCEBeIv
	 RY5lwvC2pw22NOVnZTJV6X2qecImBKcjOMacD7FCzCU/kb+5zWQHjKZ+fzUlqIm1r+
	 saOLFcnlUN39A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25F6C282DE
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174189773363.19326.16962071535100920949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea70c191947ea681eae2377ba8f8a1ad5460914d384d136af830432267b7f937
Date: Thu, 13 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741897733
