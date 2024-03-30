Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B038D33DF
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711792096; cv=none; b=VtYgMMoX+WOponjI+EdoRL/s4v/8EkwJEBFtiwnUMd+770pwDyFZniQLKzpVRg9nztHLDvRC18vVzHH6sRuB62SewvSJSVQR67Q9RcJtbtCp+HiKBm6BP6BijOc7+SwnTS2hidIGFVnEegg0iV3ovLVFrK5nUbZ5k92DSby7hps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711792096; c=relaxed/simple;
	bh=wf/FpXL+CyTcz58UkReogAMHe6eYmiOrZGvPhgoq7EA=;
	h=To:Subject:From:Message-Id:Date; b=ZxDJV7sFCMHDZuR/XPgvW9dtricgyBxSoirF8MEW8YgiZMeBMK3e4KcobIyd2lwrYTeJOLBLTcfPE2X0yhVm23VVJCsh5CArOANitfXGmQt8zRizTGgo3S60KVJh3YUPcM2d0ihXkcpGSI0hWbWwGA7NESPzFGxTEazkTGTNanQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzlEaCV1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzlEaCV1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D29BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711792096;
	bh=wf/FpXL+CyTcz58UkReogAMHe6eYmiOrZGvPhgoq7EA=;
	h=To:Subject:From:Date:From;
	b=rzlEaCV1vhvkfj05DdaQ/U7Cz5oGvEGWtYTEhZDhW8dvogi2SRd6l+3NA6P/xenQI
	 KSp4cG9vyerXgO9KLF6stUp/FNHtjhENHMNNtGSBuZDrfxLC/A5T7G5UAGUxGqT5EC
	 mma6zjFTlL1LSIw+VNg7T6iAKfliGai6lyHpyy2B/OPuwA4zfDJlvY5Wg5XMSLNy4h
	 RdunJ7W6qHmFjj2NBGENIENBhDKFbF32ELg1kvwOZmAVO1ldxbmOzayp9xjrZdvIgJ
	 H7dh9IDFpbXTAVvJFVeZh3hNhUewSmkbbzcdTd2rc3grQftBSnmiFWhp+Gbi/XMFEw
	 +bj/QgVP3Tvgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DC70C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171179209640.30070.12665286324669131885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5163f2d38421056d09c0673d21b9f7883f8c70114a02d73de002cc1e58fbd788
Date: Sat, 30 Mar 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711792096
