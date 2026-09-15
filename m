Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4010B352022
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789455034; cv=none; b=Q79IueKB6g/8mT8HqEKF00Fehqs6qHrFpDMKenCv3P4VtMT03gvCkgJ1E85Uk26DxWAQCqAsPlUI/PtpkkVEgadlROgHXojUOY+ODJYit5j5nrWGa6BY8BtBPcJMOv8+qb6UgXrsj/YfXiyOUhHEbVXw3HofAhxgTO6DPvrjbz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789455034; c=relaxed/simple;
	bh=SmtaiWF5yDbrLOIzpsiF/Hpaiu4U0WYUoa4xcTv/iWQ=;
	h=To:Subject:From:Message-Id:Date; b=DoiUT3TllF4yMSU64YoaRemJcW79tCWowR195ZPTLb5olIrPkC9DuYdnKfA1dad19ISJZLRezAvitGqIJDZ58zJMolQhZ2cQP5QVeEnQxEaSgzAlz2xsNQgp/gd3WoIbqB+WbZbfUkNUD1N/FD0GF83fpH8R/DGqZrd3+ELsLzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3S37rgr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3S37rgr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1DBC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789455033;
	bh=SmtaiWF5yDbrLOIzpsiF/Hpaiu4U0WYUoa4xcTv/iWQ=;
	h=To:Subject:From:Date:From;
	b=X3S37rgrTT7gb2/vfoNJ1hAB3WlZLpltegRjBhSqwpQz3MGxD1CrdoFo1ssGA0+gm
	 viixW62zqYVp0DuPQ5PEz+lgRqkt+R3QGtuHT2aGsHdByyXFpvr+IGV1Nd3jhjciVR
	 iLXcELGxLdg/rQ+k3bkwnEOOvVQjLmVq8BrKV63492R6YTOtTeSGI95imUx6rJ9TM7
	 /F39Hg5FuF7IDagfL6GDHIxOoXbEX8fEmfR2G2nCeL3mR/dgMWrXVQtK+nTExfcO2Q
	 8/UDkrLNu3k/foB0Wid+eYRdwq9zSDWdqlccODrq2gsNWuK+4Roq0Z6Tnp17msdKq1
	 pD548S9oD3M8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C8C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945503368.13524.17443209154224615832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5794e1ee2b945c5edc81fe7bcdbca7bea567e50c41c6ce8d45a1bd1c4cb28bce
Date: Tue, 15 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789455033
