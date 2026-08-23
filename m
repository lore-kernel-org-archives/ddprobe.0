Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F8E730EF8F
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787493034; cv=none; b=bGnrT76cy59fgBHBd7v28CfOKQVnNwTbWbHYPVy6HiaFtsO7Oca3j2IwXavTuVFWFX2ngH4gptiCv87ow97df4hyI1bDXZyGR23OsJKcaM0qsDNNIb4xh9KnGc2jG3+k26uiUsd5hQqZWuKGoSWIMDa2JbHr7Gphc1cYxa18c5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787493034; c=relaxed/simple;
	bh=KPmkAdjblF1hmcM+WRMg2lirrky2vObMLzRQPgSch4o=;
	h=To:Subject:From:Message-Id:Date; b=ibwdIvjz7yTk8MNlDhL5RwEVMPfsJ31YYUG8U7SzXy1o8romF+pSXgSzd3UQtloCtxCHDlNLXiHlhdx2pYCmhAHjV9O9toaTflrcGmeIUKYrAQNZr/Pn/JkrEQuK/SJHxOlI3A1ircBBC7H3ZtM33+LekJE+5ePPPldp/CQ1/KQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PFNhadw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PFNhadw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A29C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787493033;
	bh=KPmkAdjblF1hmcM+WRMg2lirrky2vObMLzRQPgSch4o=;
	h=To:Subject:From:Date:From;
	b=PFNhadw7c4fowXkLw4R/QIo0cgHc797Baw/7WAce7Me0+5eTDRvYo2NYDcm8x7zuC
	 3+wqZFwromgSfO2QnM81sEBWHWdaIl85QXMLuTcO8lLx17qYTrFe/jyLOYUmK6MSlr
	 4Md4gaqvdUHOsrJHtRg1rHaKS4FdFCXe0njTQrH6aJvz+C8twls9QbqpKNo/y1nI0M
	 g4eSFOKfdns8BNUiemsot5Lo6aOyvvPXAM3Dx4yhLqpvxaMcarqKrDp7yJUsHrQDvk
	 JKZ5Rvv6k2qTcc260Xj6zVgBHz2IC2ZiKWus7l8t9WlVswi2hBo4gY9paML8dSrU/y
	 Kv2SboRgnGVlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A2C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178749303369.23911.12616242749519452867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d6cdf5b7b2aa9bc3672512cf6a4f8d42dc0697189a8d5cd75700421aa012a51
Date: Sun, 23 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787493033
