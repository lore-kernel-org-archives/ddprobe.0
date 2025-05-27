Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFC81D6DC5
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748377194; cv=none; b=AOwCUs7rXrymPl7FVz2+IYpxGdoztQrgWHkqUDhivVnCvR5mVCGjG6bvOmZRBLkL0NjkNe2a7yrRKLAvZZpUmBdLt8r3yTUUgKJoJw5X/71nDz0/bjxAokAIDJRFf83JsRWcRCUWQg76iIqvkhh2xMKLk3gzbo5qE55MvVN/FnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748377194; c=relaxed/simple;
	bh=67zuiqnLOoeC1fXe/0vxWfLgGdIjpxf+c7EqGrbeRuk=;
	h=To:Subject:From:Message-Id:Date; b=nbABK2vT3h8GbBjTw4gZXPXWSm2zpNtz2W/JVmARr/zrRzI5dAzpcBLTzCZm0MoVmkW0iJczqkJxfeLBdxJqGildmuw57DR2MYnr6tSez3TTXzJaBgYDa8EZjTQ1ZprUQZYM3MqFftLwWJPF0y8++9ULgpN69ErhwUbq443Bqv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZfLHuFh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZfLHuFh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FABC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748377193;
	bh=67zuiqnLOoeC1fXe/0vxWfLgGdIjpxf+c7EqGrbeRuk=;
	h=To:Subject:From:Date:From;
	b=EZfLHuFh+ttz41hdXbCux2Sd4pbIWdqj6zeLxBydfFyQpb6v0iArlPnw5TxsxXCtk
	 zJk/F4Q5RSTNXrrKGZEW/YNA617OkXcNyPW3z98XsBkE37qQClFnf9nQ4NUK0u6rcF
	 vu2E8Cyin+0ksyNq+pDpzVnscBNMPZ/FwivqX0+wdaDOvBjsfEzE9SnWwipVz7YHgf
	 WEDoODVUlwKRGP9cJ2Jth28O1i44WkOGaP5MEbLgoxXLGUjZxbaEXyDj5A9bvki2I5
	 VSpiodLcBf90t8TU78mZQGh4eC0WYjcm6S90Kj21GgCPOsqFLS+ZPsb4D/o6bZDAq9
	 /vAVz14zsz9Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC1DC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174837719358.14345.2409812951330325244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b104bd85d96a3a4d56061325fcd43de9c6209519ed110b62307185c6987abb
Date: Tue, 27 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748377193
