Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DB1A390CB7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792191034; cv=none; b=QrASc9+n9cfHjPRSPDDN27JhCfSiP5RylgWFeG7M3ce8fPBxK3X8pHZgUhZMwaj1JvmSSJ0VWF5yjK8CV9zJTisqmCMSmoKcFj2bVAeTXST418+CIf3oYC06cJYZ3Z68/v5H5IHPSCqS7q3133Xp7eYjuav3+2bk5nJ+YxjiLH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792191034; c=relaxed/simple;
	bh=2PSW+kaWRkR+U8fUt5Ys0FccngkKpXL/JIK1KvQQInA=;
	h=To:Subject:From:Message-Id:Date; b=uoltN6FNIvr6+Fhf6uk/mu4JxqMeBpssJMxGpTDEnc9XeUbCSJUPz4kThhvTMexeW4LnSG1tSjVmJ3FWShGOiRJmA8TF4oPITQpogNdsKIGeD03BRMHmvNL+JTl5wcPlW7iFzb+4XMX2idyWi5WUUcAilTFm6w/wzGY+i6lvTlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nZrHANb1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nZrHANb1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0013C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792191033;
	bh=2PSW+kaWRkR+U8fUt5Ys0FccngkKpXL/JIK1KvQQInA=;
	h=To:Subject:From:Date:From;
	b=nZrHANb153/Et9a1KuQSZNbAXiLhMydHmmgT8/+gg+SLFRNn+mDy+J/xdHDzQSpKh
	 u/yg3WAHrdYwtMTw4+WU5V9mvmMmFnJKQm968nj8Vqlz1YOQl6Md7RbDgO6xudJJ0G
	 N+mEMcm/WxGKZwgWzWAAkUAq8LYpb1rEmcdhWN9ZqVYPI9HYjO1bEGDGzKWmsfQMwf
	 ezZC06Xk9sHzgw3YXqW14tTZrsFIQxZReA/yrWr3isnC8n76Id6jrLGV222rygdGJK
	 UWhNN6sFjZkbvN0ULvmVJxREf0SAeyzGgT2vTDv+4o6Xq3BlUP03FgVlRlUw7pKCqi
	 cxlF9zgHljrHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2662CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219103371.17814.15831593390814018048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33244b3d258fe33c7d31980401cb4222e2419d2546f96efd61567ec7fba77c75
Date: Fri, 16 Oct 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792191033
