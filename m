Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A98435971
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754921394; cv=none; b=pArcROQzlauaPgGiiothkU/wRzD9Cs4UFtIRB2y6st272dp52AafBPYB9yjmgL4uEdyn6mkDREeYZEHueDZLQP8kGUDt12RwRef6fNu9PeiobonXSaqEuF8IPgdR2hWvxk72+yGUd/tq9u38qJD2IoWjMSy98QJLO1kgUZJ6VKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754921394; c=relaxed/simple;
	bh=dURKtalG5j1stATcUV2HZNfM974SmM2LD/YAFcwp8hY=;
	h=To:Subject:From:Message-Id:Date; b=oI1KCtuzNxDDF6evszwvYRHm2z4bx+HcpO/E2h4hwFcI8EGg5r7JTyZheJrdo7pC+LzmszuYTK6V1vAcDgQ9gYBciJl8kiTBWxpjycUr2QWEWHOnA4MWn3uA5buULqpExqUcAgjrYUi0wVrXFojqC19oP++9FrnHktkw1cVEKjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4zmOSRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4zmOSRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E825C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754921393;
	bh=dURKtalG5j1stATcUV2HZNfM974SmM2LD/YAFcwp8hY=;
	h=To:Subject:From:Date:From;
	b=b4zmOSRD4ZpmfKBzeiZK8rvf/paIjsr0onsuscfDBONqCPU2inrBsUBAC/mCvgk4F
	 xeOjDeJ9lUkYfWlYqteEhI9xJfI2phgW9gxgNsobLn1XG+8L2Jd1bHz2JWs1JTJ31J
	 ihOWY3dXogje8O/0IRzsBxIC53mhQzJCKFxl5EHBDn3fIB9jndwsCRT6h90vjTzAD8
	 DG9f7ilUOZCmvRhKydZlbh7dLjK3Ra1cIVjEj3O8IAM3ZMi/aqR8xsODIZngJoQIeX
	 pc7CxmbFLp7PYTq+Yaim7r5pHym68q7Nt62ZHtPU9LVhbuSnp8g6+BseXOsqRgl+mf
	 cNznMcW0g7XOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB37C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175492139357.24625.2523925186941186444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d9b100e5bd7451322ad097db40b9a1c391feca5e029ad01532c2f8fd005de38
Date: Mon, 11 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754921393
