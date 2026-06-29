Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AECC37E307
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782703714; cv=none; b=V/bo9irDTqKqY1tq6GVzPx5m+giP+q5fK8rFg+8mc799byMTfkkGzWQdqLfGqLKfLP/dNbDnAMnhVKioOk8zORBflBT2XbFKoSJEcinARGoGCBSdGn1aAOhuCJtCKeATkfihw/Jieqd7MW7WArSS5jEv/dazm6/s5ubjI5y2noA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782703714; c=relaxed/simple;
	bh=2eQfXv1O+sSU0WKXV+vTxLyeGK/6Oo2hG91e0bj+OaY=;
	h=To:Subject:From:Message-Id:Date; b=IDo3PEesLpm43a1Z/IOIHMgymiOaYTqLi+pFuBtCAOjdcwHrs4UBHUskgFyHVH8NhkrYVief51nCpoSUg96tcCFttqzWLK1H+mBwydc6zEshf7TO6/d5hQmllnkL7rSw1avtnbBakSF1GcGhgHeW1b9qgq3V4/nZumC6SKETaTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+ecCfmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+ecCfmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C97B3C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782703713;
	bh=2eQfXv1O+sSU0WKXV+vTxLyeGK/6Oo2hG91e0bj+OaY=;
	h=To:Subject:From:Date:From;
	b=B+ecCfmvSm6Q8wz4qtdR3J5stnqC8k0v42xpCVIkoxXVgQaxJrj6lQkdJKzP3qnD0
	 S77yu7zfgmglLTdNWAAGGaNUeBPC3Hckxj6DsKSOQfkEA/96sFYuIlYW4F4RSiX83d
	 TeEtEBaSkV3kTX3T0ColiGGaBrMMkqOS+AWMiC/QBnNvzijirnm+5B+fcBnj/7LkYY
	 AKki71KGHj7nqZAuHvFIsIzmlsgTf4SCvtOWjCfVT5qPTF+G1wxbrIqmaYx3z7doCI
	 LEBB+BrYd8ouF5N9EW/PDOcnDwblwAWwphl/3GzdD7VfIhohG/oQ3YYB2mOlYhAHdR
	 P+RYiFmgXdStw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2EAC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178270371368.12268.8111270871010297651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d467ebd9ce526bb10c8ba6d3ea971535aaaa3a32269fafa54df2cbb0d42db022
Date: Mon, 29 Jun 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782703713
