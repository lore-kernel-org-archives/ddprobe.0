Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B85A224F0
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739829534; cv=none; b=FmCjlkpJplCVxbmnd1Dq50/p062nnyOLVPrWNjllmTENO0DBOo/cZE2fYwW/qFInMK1IHRfV445JSLNP2ZmbvlHzoNmq+7MF0QhVdx+WeUrnZcf66MIyQA0Q9jeWoJeYcIylogSpxhEnoTxSlxO7bb2VQq3VRNIsx78dECuyIjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739829534; c=relaxed/simple;
	bh=R0ZG7NdmP/nnD/9Oa08/+vqb6gJOwyYp+b8duH0X+Ew=;
	h=To:Subject:From:Message-Id:Date; b=jpaDcbkdO5kdTQ1SaDFDzIY/2sctV4nZzHsjs3RrGz2prZkrGeJ3bpbhv7vwbEL57faqlK/UA8kYuL/PANhQHzz3fyZhT0yhBH1s7q0yUtmoOAfdfDQC0S00jcbeYOwKrmsizH83+uDqK5jUyK+Q3Ia8CWJUa+PqTqYhP7FHzNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HV5yfs75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HV5yfs75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB44C4CED1
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739829533;
	bh=R0ZG7NdmP/nnD/9Oa08/+vqb6gJOwyYp+b8duH0X+Ew=;
	h=To:Subject:From:Date:From;
	b=HV5yfs75Wd/nGDO2IZP4wwo86k+cfZ9ag1rj+yglhEe29gifWWtxBl32mAYNwAFSk
	 MUU5rCHh5iAdkWR5mnoK28vBLG/lRCBCOmgGcje9UN4QnwJqw+sIRyrPXUSj35RAFO
	 utVCfbxuI8gVTF8SLYshXK0oUGvxM8C66fCvBTap0cfH8s8s83IEhhNKNqnJ8pI+Xj
	 d46GS+FdIbt8b71+GKpz9uw1hq4PcfF9rw3VFTDhCl9E9hGkWQDucwuaYapM81t05a
	 +UUis4FLHN05QoONHRnmVR+onxvihBnTy+KcoLAvGaFtmCjNtF+RswDVJ+4URCXUm4
	 cWsx+e1U5vRcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A845C021A9
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173982953360.1333.14385732612586609730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6375e4223834cce5fa99effe9078b6a56a0a799b492189fb44a2eb0a1e20d14
Date: Mon, 17 Feb 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739829533
