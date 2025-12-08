Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8251F12E0
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765212774; cv=none; b=Nb6JfIvUVB5I/UwLbzMML4HUzdPPooN2vjEgDn0HB+PY148PB4LK+EMEPDDGcDsQMgd4lplvlJR0etYj3FkDjg4b7MpM4EHi6cbpH4zd2ZK946+NJ+9NEDsVyVrKfQqTWhVu3QIeg9KfCTPzZoy7bFXY3ad4tqSlTmECtiGaoSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765212774; c=relaxed/simple;
	bh=bQ3bxHQN13wO/cB4EXuXBGxZCRUZJGOk3DsH++z2o7E=;
	h=To:Subject:From:Message-Id:Date; b=AvvxYghQeJ95dYhPVoVl2yxz/OFWkfe9q5NKABvhxIKqlGJLal9UaaTIlIkNJo/RcxI3KOrUDTv96xZ06m8jSacPNFhj2i/Z9TPTlskTxPHXT62SyGYdeK/o2HZuGcnNFVGJzxDC3tULD0TwK3ZvYDD/j1DKiXbkEBGQk2Vp95E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXhA9hYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXhA9hYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50C6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765212773;
	bh=bQ3bxHQN13wO/cB4EXuXBGxZCRUZJGOk3DsH++z2o7E=;
	h=To:Subject:From:Date:From;
	b=sXhA9hYwPu+I+beD4eOqiKVmBxIq4mXQdSXuNwaYzIZxm4nSCsOPvsQYmo0bUC/th
	 y48c8wu+VfbXdl/wmQjhwaFaWRnfERmZKaHf+h0+hNO7BzVqi3FcjZMu3SNKFzMh0Y
	 G3rtYh9cMhxfsIdPTgK3aItK0jhKlKT8jq9vLeyqLeJa2dTtVFgDW5uGMjyWVDCh4a
	 GPNzbGflFAdDYwvGQMjTEplZnPz4AEeog2ZcDL35zGrQ3XE+Q7ko6iiMM4yXe97AaI
	 ewDoYjB3k2Fv2hjNG6UMtIT41obgMMXvDcvnkUWQtEehgxhOuDZIv5Malu4IsBE5PY
	 YDad7bwyegZGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98700D3B7EA
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176521277361.2621.4586955512511109872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066518a397cff43402350df87811076098eb5ec2d12f01d35267fc840f86c70f
Date: Mon, 08 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765212773
