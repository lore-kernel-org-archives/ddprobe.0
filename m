Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAB23446BE
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764178973; cv=none; b=tsNl4FtC9XGD9I6JqIPzfLKARjyXWNV+9ZbCMjn2eVK9Nr78MAY7wbhJQBIgCg9bV7p2HAZzQyz9naz9P1yP7hLBq19X9pWFiVdL7GNXE0mTk2E8tVAIpJmcXU0Wbh4I22hvvFCgA6zRg+RlPsc6x96qmhjPQc/74C9JbQ0RYv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764178973; c=relaxed/simple;
	bh=q9o+hGmR1oXRuF6hZiqv3Bn6piYrSi1xnRMwTUtxe98=;
	h=To:Subject:From:Message-Id:Date; b=hDxxGUE4CRFUlyCKmbWPcEQWbFtmGyq5TGQtYhKEvr3CfrqcIv5Ig6wF9rFSkd0TxPEx1dlK8Nsk8x1MTInCz9iyAlVw95befe8FkuHzXeeW7KnhjUuknkiU2bX+BBIwuWgJ+y2jb9UCfoLhULg3vBr39iiDIxZ9nfwkWGksMZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRPtGuWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRPtGuWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A46C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764178973;
	bh=q9o+hGmR1oXRuF6hZiqv3Bn6piYrSi1xnRMwTUtxe98=;
	h=To:Subject:From:Date:From;
	b=iRPtGuWZ2vTuNhYezHExosF80jfflgNKykJnDGtHUsREcUhZHS3ZEDmideAXMNl3d
	 plsEPbEW84S0uUgOoDLND4Rn6k/sZNw7nFq2MHDkUzdQSa36HE/xSo5MUADiyejL9M
	 gg4IXrpH6LjC4+LR5dm8dSrqZUx9QZIIVzPWQ5ubeCmRFj6qwIb341Op3SNYmK47V3
	 97jRUGj9Lei6K2VlyrM8GTWs2DCm+qaRfe4FPB19y3F+DmiHAsmwoBftOJDaBce8Ch
	 b+S8xvfezIMaZDHBn+RkRUadVIzQ8+CZFTsax4p0qCauXbSkwuFcQDhnod1ayDgU19
	 9sFEbFagRvsmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926B4D1118A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 17:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176417897358.7902.15804794221858938134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bff5d6fbbb7d36e3042a5dd365217222262e4b4733fafa54a173ce3d4018a2d5
Date: Wed, 26 Nov 2025 17:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764178973
