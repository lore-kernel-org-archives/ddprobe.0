Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47945345734
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777139854; cv=none; b=eyyVPhwn7g5bt+nXEnrbocHrI8kbwdXORArgfBhO2xRbT4maUD5M0RR/LZJOac0ZsmKupXUyMg4y+yOxCezXMzhVHE5+VoeNsvuxTQiu/ECA72rgDCnJu5lEev1GgGkGIqIdFl82tb9kWk0RBykpmLqEDcmJFYlUCJ2+XdDWu8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777139854; c=relaxed/simple;
	bh=GVAdkM1IAuKPGXiwWtpi/1r/5r4WOpu/Tt/f67QA2mw=;
	h=To:Subject:From:Message-Id:Date; b=Ms2IxJbfRooVdK23xRMr5P3/2D19Kg19lVH/DlHUjmSHuEdZyZLUZizzW1/jtCt3K+J4pxwo+u/9BwI/lO7VX7T0tLVmj3wbD9hkdnapUKw1FVHIYbIeiVNkIWa+fpspL6dCJDml7oC8M/yg+fo5AEU2OHXSTqgdEgqTKxk1cUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwKfNedd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwKfNedd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0FBDC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777139853;
	bh=GVAdkM1IAuKPGXiwWtpi/1r/5r4WOpu/Tt/f67QA2mw=;
	h=To:Subject:From:Date:From;
	b=qwKfNeddk0eeaD2LVyeJXrWmeqbDUxq4bQjwgp0g40U/1bm1Ykb+LxoPlgaP9QkT/
	 XJS2K4cyBSEi8AUpkGqofC/MUXdHGRXt150kRxEondrtEN7Vly7uhtg91bDq1oP1xK
	 DXzWa4ZFmt1PWnB12quF9MLWnVng7Glw3LmzooIuQdFxeCv/OWhUJ1GFdrVl/Jzz7p
	 jMOPnXI8IJgmmJjUigXsXAVZUJUzp+Jj6qMJedtdyo+ELT9yoFSVWcytnmREaeOoRh
	 o3xqujSYV4MS+6HYRdZUdpAJHOCn+QNYAOLIPCes/nxf8UukIpgWQutTu6Bd0rDpE0
	 FrjahqMNe4enQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3DBFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713985368.22133.13085827206003532935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bea8d6293cc51e9cf49c097adf36e1b8fa20f0e2bb2fa905c1301974d99c5e1
Date: Sat, 25 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777139853
