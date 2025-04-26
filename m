Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB56226CF4
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745665195; cv=none; b=o2kkQNuzL0TjdxEKMLCgVZTFmxKiMb+ULCBrpTf44J5pcgf1ZJTvW1JsaQWD0DdTITaahmSu1Xc9IJUF7KNLk+g3LD/RWRfFhRfo8ynsbETAqtDysesIoaagE9Wk6ms4Vjb0JymzXoid1XZo8OzNlbpbHpKYT9eTB3enXD/rdYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745665195; c=relaxed/simple;
	bh=SL5HPE+6n8UOsc+yCp+OhaeHU4Cmt0INvPGCS5cFGic=;
	h=To:Subject:From:Message-Id:Date; b=D7LNgtQun47ieTqL0dw7FVnO0uxNF1SKuTV+riRqmbJNNHPzy2RVdQ6rWxtfFrh81EwMdsqo8AAKEEPnMbCynDGn4P0DOP0a1mZxt3UGqTE6Cp1mgq8HQIHIwP/yHcTrnJT2HGqZHXoD0mxgtChIlszC0/3lC+VdlKhpsmwbZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tZtybopC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tZtybopC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A012EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745665193;
	bh=SL5HPE+6n8UOsc+yCp+OhaeHU4Cmt0INvPGCS5cFGic=;
	h=To:Subject:From:Date:From;
	b=tZtybopC+FGM6t5sDzQpWFXeqWlrCk3D6cKvU/N+eUV+yokB1TFrMely0MN77M6jA
	 YjUZvI8Ia2n6rzBZtIjIjR2rHKjKhwaLIhOxl8OEnqGJlQLw6x0gdctr51tNtuWigV
	 7i/d9Lt70gWc/YlpK6OKiO7u12SGK8JBotjHoclyU1VxxmMbMkXVvm6Eco/j29hwAZ
	 5RsX84LMINNNkvDtNQGgAhZf3+zgxpTHTIkzPvsS3Pv3iXPcCqyo+uc+ZzhIx/96tL
	 WvaBiYzFCZ+Oa83O9Bp8E5E9iyRliD3t52yUtAf5gEF4HTAA2IfFq0gdE57dHwyWCS
	 F9bKsMamY8GvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E080C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174566519357.1724.17619533850577519469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae22cae2deab726353659fb9fc902ef50c390b90e0284e941a7c80e0f048d32
Date: Sat, 26 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745665193
