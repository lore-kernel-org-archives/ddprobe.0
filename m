Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A67A2F12AC
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771230894; cv=none; b=ETX5rVO7+JNSiNjCk0jLzy9IrNGtLPxMEe/5t+2VRxqRAxxFnSbS3JBaKrGWOs9EEVJ0T5Y3uLTWQPbOEfhGA+Lxlyn4WCPjj5I4xZXpbKfngUI44CFGIjS8cJ2Dkahn3juaxRXZPaTcREhs08L3blNMataYu+B366VeAF/vtmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771230894; c=relaxed/simple;
	bh=jMlYg0fqg5uTI3aH47qvh6gLutWRkxpPaHYUcKejpBg=;
	h=To:Subject:From:Message-Id:Date; b=NupXGZm8DuVcR1GHM0ox4R7J3KTHfpjD40vVPvOT/9PKyKF6/UIk6zIjJZp7CgJjn9W7uiIOm/OzA/UBDYLm6yomBNM0Mo8VGFz4WeKOn5aVJXaMVlp40ZzdRnxHLUGmsHEYHeSIr+8chZ0giM2RCp1FlDMkbQ0omNkKmOoTyOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDOjsVZT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDOjsVZT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F72C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771230893;
	bh=jMlYg0fqg5uTI3aH47qvh6gLutWRkxpPaHYUcKejpBg=;
	h=To:Subject:From:Date:From;
	b=lDOjsVZTxbb/jgeCZHfRwm+l44CUc8xh9jjO3jTkkJrlKX+bp1FRRT+fPWA7JEHbm
	 8hjCx0kgyn3CFCJYa1SwBzNiDJVTQC/oYK8QLMcr1w6TksqmtKyBsmC9e3JQdm/KVh
	 ARNH7PSNOa2hTcfyKs2/yAJPPmaQe7nivGWeAn6Up2d0BWpoLpMYEULjrX7NZe+iPx
	 D0AeUG/xrk4mphFhsx3CWqN6kq5ypTovjJT2l749nNNmNsX/jPTy9mUQtnjqb9zB1Y
	 P/wizWmVzCfIlK6FP9GuVV3E/I1oMqLx+xkW/sjeZwP2XSNO6Vj+IgIkvPtsZ02eoH
	 yNZuhD9CXGSRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7C1E63F3A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177123089368.17117.12041076607403503553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017b906c77a8899e5acf2fec82db6eb344af48fb106c98ef234f322d4e24593c
Date: Mon, 16 Feb 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771230893
