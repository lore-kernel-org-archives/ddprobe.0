Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A983081D7
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776235054; cv=none; b=Oq26+vNtnpj7YgZyR6zoFdGSBkS2Lpj1roy3fjBOQuc2tbkjHZ7fiTOBkpdjB6yJtiDy9SqDem6+flbTbXxMnrNXN0iEQNqcRPW7VJHlQavncrA64WsEVj3Ns4UULJncgnwmx5yj/mP7NkkmlarLgAxfuhylEagvC88bJ15sjIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776235054; c=relaxed/simple;
	bh=xAe3Ywg5HatxmK0tmaRhDiINomHDSLyeP+cspn4e9sM=;
	h=To:Subject:From:Message-Id:Date; b=TZ8NgRMe3WxYjcKMKm8mONSh9nVynpkHuOP/y5lf22BknQuqUs64sk/upxgAalP7p+DRjyV0hfv/34u/SSbPXSWMBjgV0559UtPp4weGqmZQ9uPnFKfk6XDGFY04+CTha3aZLbF7fiVKMDEjwiLpMMLZlQM10EE+wo5DIxWffLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR8+YnMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR8+YnMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE7CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776235053;
	bh=xAe3Ywg5HatxmK0tmaRhDiINomHDSLyeP+cspn4e9sM=;
	h=To:Subject:From:Date:From;
	b=eR8+YnMSAn+Gxdf69bL4cSQ6qyx5H1GDD68gCfyEFUvU/5Wc5mjwG/ZeB92YbnIgX
	 1NjrvpRCJ6Y2XFZw+TASMQoSawqkYOvwkL4xw3k35gqHHdcgbRv4k068wIjoixVRlp
	 iXo0SdiQri9lO3btHeZKm2RFY/WVKL5kXvf7v3EHCMYSTJwlH7MFJcLIlfzkzdVpLE
	 4oeMqsXKsTaI1x23WSeFvFOsjsIW1L6teXZRkl6bso+mDxJG17nXtySX5OMEzoWGn8
	 vBy99wFsbO3V1eR3qUP3a7rOR+brD9bF0WTFD5wblvKFeA4UDRkas+FnL8AQP06rjx
	 YQuA5YeoepmjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BDBFA0C32
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177623505368.21167.2740010370984006956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fc48734d6aa4bd709ac9932e32d2e758540e5d5189d9afc594ce8e7aa2edc7
Date: Wed, 15 Apr 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776235053
