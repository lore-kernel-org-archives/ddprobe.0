Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BBF538AC7D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784517514; cv=none; b=M/Ll5h/gAVbos020crrVD/rnoXurQkIjllY20chgeai33aiJMhdUC5jUzZ0EfbbM9x+CWSzVJhLGmsqqgos9dwSaFqN0ZrmW2dC5pJWXy6+0Lc1N/ybijCMEGUDP66FAUaUcDw1yFJjPkoYNMoRdMYMbw0lA7NzxRMZvRa0/LWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784517514; c=relaxed/simple;
	bh=nSF1t4JHdON2eQteWwuztC5gIWv0VuWuENJe8dt4SKY=;
	h=To:Subject:From:Message-Id:Date; b=dtJ4cALkGPU7dbrZMQcQpKdHyL7YjT6k7UTTFF570QxzxNLFCR/D5oKJbMsT6EuHX3d/A78k8lfeQcmCZJr5LEgEdZUnZA+WlDBcfMBSNtu52+/aAsR9MGJnyFdeh7BpYx3aA1/+07lWx9lkZbil/svql/pmaJkZODgM59fuVRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RheiC6vK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RheiC6vK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF02DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784517513;
	bh=nSF1t4JHdON2eQteWwuztC5gIWv0VuWuENJe8dt4SKY=;
	h=To:Subject:From:Date:From;
	b=RheiC6vKtQJGgi5X4mQ2/bhBg+1CCNHKn/34f9w/yrF34unXWAdcc8s5qDTaxt2kB
	 MG6Z/Ndfo3moWr+v8zZZKVi0zHMVRfALoYLIYghnq1mvtqo+AZ4bmkfQQqr9CUTfuM
	 1h7SmcpVXiy2g/E3B+P2ItHIrwxYS8jTxIGjMafdC/P671KxC/xXeE2d83OiuRcGs0
	 EB/8SPXkHJujxhYoPQyQ06Awn6aLSydVBThJIukf8enBLlAcmUnhtg44HxRQ8AtLAt
	 8lrKyBJoe9jYn8HSUaAZeqmKHFiqQsRGfLhisbi7zNyGVI7c2QkvGC892atbjABnv/
	 ZwLC+LJrjZAmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC34C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178451751373.17354.5622354644806944570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa17e436f60cf9f30c7a78fdd7b3eb8948aef830a6406dfd2addccb3946f55ea
Date: Mon, 20 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784517513
