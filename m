Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2D84431
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743323394; cv=none; b=fXvAe/xZPAhIa2LKXOawt2+qPX8W3K6yQQzDjV7h+jSoC0gN6Jdma6elBHhrR9JVQ1rD+gC+Lg0JMiclWQ2/XC3xXOqIM6Y3tjKZi9cI1FJM41ONNOLQibKnYjskTDFWHLSy8MQdNnvooU3zDwR8zu5fzJVmOGiyHtH1b3JhyR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743323394; c=relaxed/simple;
	bh=PvOYQaIvv/BzLRoHhVfXliW6UZLyl7uae/ytCC1kSY8=;
	h=To:Subject:From:Message-Id:Date; b=nrzCBTieNENIJMD8V/YNuUhmtBgyvtHdroaf1CnuX8mCzbaeARC1ibv7hqjQ+EBmup9WWDJN4p/WeL14myA6pbbr1m04FCTMj3ATK1loJqKunCw/Mjbe/zIOU1OLNkWWC6nTUTTO//AptRZIDKf3sexvYZb6RUqE4wjyZcNU+lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EbWVODGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EbWVODGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A842AC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743323393;
	bh=PvOYQaIvv/BzLRoHhVfXliW6UZLyl7uae/ytCC1kSY8=;
	h=To:Subject:From:Date:From;
	b=EbWVODGhBJxOC/dti8sNdevTbVyAxChN808vMAAlDw+qHxGdjeG/rPIWziWR2H3Ym
	 oeI5aW5Wbt8pOf5JGqoJHfGCAmO8pkCMKqqmdN2KfyJm66fvFxXgptJiwiJrPGm1vt
	 7q7dX9qqsaGPBRjOQtgXg1DngEcJAJcadRArTief02pMmzNkI5Yn0r9QDsPmFsDpS7
	 ZabQdZVH/QUYGtAt/xxcsSOvXGCFGwm7dHpA+Q9JtD36eVFHUVTSk+T5Uxw8+oh+7/
	 q3A7CwJ2E6wEcEDe6c+5RmkbUfFuirTqCZ5U/1LIebkVn2Z0mDawvPIOZxrERz62Om
	 avspKNomMR83w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91948C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332339358.16806.14374675744922333989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e61dd3c68e1398342278c3cbef4a48a26920bfe0dd73e5d1dc9ff6d2595ce7f8
Date: Sun, 30 Mar 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743323393
