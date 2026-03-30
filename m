Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADF62DF68
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774835694; cv=none; b=J09npJ5xvZc2/WmEMzZev/PVjQZzdNIowy9zGHs+Vo7KGWbVWHRnYWCszU2s8GUpwawa9N9rrwSRC+jQNDeTGSF9P9aNiR2T1azphZ95941sWWvpe7p7h3PZ+Jqr67Bc3XfLLZkZniieYSpK+0xnT9H4bEKqKB1DGGJMnObYOfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774835694; c=relaxed/simple;
	bh=SIMwFCrYrmftcjRcXilq5sVNoAmx/0FXuAoYqjIDHz0=;
	h=To:Subject:From:Message-Id:Date; b=mjwdbPId/0nqJhtyCZgFs6etVCBJZJkGmHOXxxLFMJ+eMKVO57TgzHHbtUTjvg6YZrcdAqorYh97AOzq3KO5LODF+PVkeBOnWgMHtwgqO+95XHXksWsYtn0kjBu66XL2Q+An1K46rqylZXkGP2Buplp7V0tBdhECC8d2OHpzYjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYsCktvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYsCktvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B72C116C6
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774835693;
	bh=SIMwFCrYrmftcjRcXilq5sVNoAmx/0FXuAoYqjIDHz0=;
	h=To:Subject:From:Date:From;
	b=aYsCktvMYoJtKgKLm02I98wSTM7D3+rMm7fK6RyrOvs1VF/tPIv2o3dmwxsN5zKjY
	 LrstUKhLthMegjgT8wPEGUdj5meWBzfmkJN5ScIazeTQ7C1QJ9nHCcQdG3LFbdTSrZ
	 0NYSYmhWUnEi7SCJF/396zBDIbbEqIVTmnemOsQr1ZAWwWfm3RbfQjbNoc1W5AvMSs
	 2IDDZ/Uwg0WlgssAddLvz/WfQVf6O9IUNMbXfuevf9nM3c6hcsP2qBUiuGZjCnF0vu
	 NM+C0AZSID1f5vSQJresEQppQlu8rGroVMhQ1M87bHJAYNBDxsL7Ve37zUZZSHzqRA
	 0N21s/L4cPFag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F40FF492D
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177483569358.21457.5924507007402700902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 619be0a50a8e00ee69d951365be6d6c6b4461ab02a7458e0f8ba9053c4a6f310
Date: Mon, 30 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774835693
