Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67EAE176AA3
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717825043; cv=none; b=RyJsArGnN2R1lztjmr8wZG4qBXPX38vxtxieKXC9+WK4opO5fjULpYLTLN6XpygnFGtSro9/vEYLvuoldTm7/n4UV/ntV5VTIBv4hTmI8xxx4bIpqTfgqwqTu4dfk3oR4v5oqjeKswwx+mAK3vt9pI1z67NTkMwu8ardeRhWxAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717825043; c=relaxed/simple;
	bh=jP/W1fZPA1LUB/WlU0eNXComPqGJwKboyncEXD47qrE=;
	h=To:Subject:From:Message-Id:Date; b=fD2R1tAhlPzXDFDEgjkuTJbbonifSA+39dL06qxqcMNYGtc/Tjl6NvyFyQTuQVFTQyf/hArGYbQgN7q39RIWv/6zV0qp4LLH3Rb2zF+wp87ZlNACxR0739XtSdXmETim8LgEjuCLVkcC+4FJH8k99AacJzx25c98nCTjCL0ekb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=COTfGLzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="COTfGLzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB06C32786
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717825042;
	bh=jP/W1fZPA1LUB/WlU0eNXComPqGJwKboyncEXD47qrE=;
	h=To:Subject:From:Date:From;
	b=COTfGLzMfiFyBKtXdb0yXo8EZP0We5PHmsDinEee4XvPbNgRn96pWNVzN8w6i70p8
	 gUsRFz/YXUep+d93390+SPFq0YoBup4cGWSbP56iF0JBgZYUGRpclcZPx7cz+OAPri
	 QSnpSe8TbTJQUDKeRN0n1vi8rrIuuY7R2E1CE57vkjD9z7Ma1WxMYCJvgS/KG4KijT
	 tt6CYlvW8SqmQ3mjePHW+EEw5dLhaHhLc6s4wIjtaEtdzrmt1lq5pFZ1XueBiox1sy
	 tpvmzFJBRqcx9/VcJZWBjYbpxZLGzVFIjVsz+f3Wcc0oPiLshxL0BoRdPa3AxhwCQb
	 sJePpFSAq9JmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7E1DC25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 05:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171782504277.9794.17430095078218430167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6ae8873cc7150effe95936c0afc7c6d6b676fd324c2ec2a94ebb1c7799a0ad
Date: Sat, 08 Jun 2024 05:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717825042
