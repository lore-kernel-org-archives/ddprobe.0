Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19779316902
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758563994; cv=none; b=klRfXe2D2M9OQcDa6C9kZhR2qyOeyoRsqu+T1ufTTKgo6fLCDdKFudwJk0mvMsVtMdIe7cvLZdhTMh8xmTl6B64zlYmz0WUBcSxFoN33IdocWqnydaMp9ojCx/pS5vw/K3XJakEaOe3Y5rpJaSv/YsnDI5LVtEmj859TQh03sgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758563994; c=relaxed/simple;
	bh=am/JrM98jv79IH1+7b1JX5Pwgrbj/DJ6/QmqqT5ovok=;
	h=To:Subject:From:Message-Id:Date; b=upiiD6fy0peWfKT0oHkfD0GdThfTtNogaqeZZoPZTE7oI4MsDEj85IVkiyWHbYPoxE4lPLQS8aDJXnd9Fok1WWjuId0Xog6q7Z8dt6H3WNS/08c4/N9LX4w99Ui9Cef8Em4rkG5F80p0+JPa2ktIIPjgwRLaqLTUZZHF/pnUB94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d7dhEy2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d7dhEy2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E1C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758563993;
	bh=am/JrM98jv79IH1+7b1JX5Pwgrbj/DJ6/QmqqT5ovok=;
	h=To:Subject:From:Date:From;
	b=d7dhEy2zBv81UEgIwfUBYo+CeLy5H2qsNOsx5ixGmNMU0eyHIiIT9nozL7LX39A+z
	 mWhijhF+xggVZn2YgOl9Tj8b5Kfqfg2eGSfUWvq0CXaaPj28F+PXt6zRP7AA6G7Qrm
	 yN/PI7USQ0veTvl6Hkt9ZlrtdjtXVu719BACkmI7YcP9A3IyJx6L+OoX7V6TWLjGGm
	 3L+XjPkLX5VoScCke4ti1GsCrINe88phxa3iK41/Do3i4beJFNM+gV29dChBXC9rST
	 qeaq6BlodVOLxTgfxQy31AsbW96fFP2wlHyOfj8P7Eqz6g50qloEhG0hWx8yIQ5QCF
	 m7p8NFDUp7bCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92420CA100F
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856399359.32118.10356718579352577683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b869fe8916206af6f2f544070cccf287c73ee7140516cefb35459c1c0171d403
Date: Mon, 22 Sep 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758563993
