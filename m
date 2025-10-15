Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFEF2D542A
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760569794; cv=none; b=tpnSmQrCPT/Q+H+uf1jSbF4saYq4VwTqWNribVN/IvJCwjbm/iU5UwZ+0hFdkH396DvI0Kzv+eeSQzCex0AcnDhdgBollOVyV1bCadbMCGTDecjWAAr3yb4rT1Hqi38dGfuDzCn6U0BHMU0aLNVgNtSE+hb8M8qAkCBLVaVWWVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760569794; c=relaxed/simple;
	bh=Y13kTPN4fPEXxM2AYO5O2Ep8xPfkEqiER+dziwhjKgg=;
	h=To:Subject:From:Message-Id:Date; b=j2BB5+N/MfTVwAeN/MvdNUm/uSjb7kmk/xZH8lrZm98JxlB5yDp0msBorHaJP5TphZ+892JoN9J3ndBiTCurRW5q2Z4UUNerfq91BtAUA1ZQn36xVa+UBY1K/2lyV2UnVQ3rsrY9C5gDSjd7BqJga0sSmyoiTnrkiFVuuDwcxFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QA10hnux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QA10hnux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8C8C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760569793;
	bh=Y13kTPN4fPEXxM2AYO5O2Ep8xPfkEqiER+dziwhjKgg=;
	h=To:Subject:From:Date:From;
	b=QA10hnuxu8mZal9AatH6y71Y7rF0odLlg6yQ12UcLZUd/TiBjS9ZrN+g+yUT6EeZo
	 j4ws+1ooZ1aHPGNrAJ81DZZktF2+89I7g69vOTNNkd+fgnDPDbeSUJ1Hsnt/l6F2a8
	 cXw6qkqY0mZxK912Ce2KDwVR7iKgtSwHPe+rsYSCHyU6Vub7OzCRnnOrj06bAt4cQI
	 kD3GgK5b3Sb0jpI2fotyGLBL7Pp0r5f5yDZ00iYt6y8/NtQFNkEGvW5ccsFY4CEWYw
	 TjVqxuTeQz7NlDZsdSxSgp0601oUi+UAXYvt1/x4JdaX+P07NJlSbODoNkjNIv70xz
	 VWLIyRrtXiz3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909F1CCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056979358.2059.6265263254360604784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e23ca88d1153c46b1304e79fcfceb51f169b72d655b152c7949f8be43b9bd7
Date: Wed, 15 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760569793
