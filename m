Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2BF7FD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749704394; cv=none; b=RXykDt5L2/XsIVvlrBwjAy9OTDKkdunslk8GpygaD3O30Hy4KW7d0MRqIUWI2yJ/iUZw+xvWUZ5bvuPRGW57OIHCVN6dSKoLcQyEnpMezlxBhXocWM3846/8cA7weWSZf8GKQ1qobp38/qsImLnHnBmIsf6cf3WW7R7OmCktIhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749704394; c=relaxed/simple;
	bh=94mQYbTS6nSrRqUvT6jNGZ/wPMJMNHYG8knXxMW0wB0=;
	h=To:Subject:From:Message-Id:Date; b=JSAGXRwSZX/As7CfH0c7j8iHfjT2nStY+ZY4pA9jJ4r97p113ENwCbrVo7GyD+Xrd92QVMXIQRPB0zsQ+mH+m/YToWOEkdmoCkmijrv/fz/mRBM5KPN3n3rG9RRrQy6osqXt76IRlzXg73MMPYZX3WQDqm4znJTr898slm+HJWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwZTxROQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwZTxROQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A569BC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749704393;
	bh=94mQYbTS6nSrRqUvT6jNGZ/wPMJMNHYG8knXxMW0wB0=;
	h=To:Subject:From:Date:From;
	b=jwZTxROQhLh48AA1X1RZNxzW+lZKN4xSmQll0wRmXU5v3HKXK/rq0NhxP1W624OYn
	 qonV78FOUofw4G3R2JKbs8kmrq+MbxoRYmk7F4kTRkVF3pbiuXrlVFEnRdIHOSGluy
	 76AVJUJXBqEZ2HW+GLjf5inyy7y1atGSsVF1kFIclQ+iZTra+4abfPurb6dbkYuNXJ
	 WTkYNKPXmCuybV0Xqv+JnVY8NC52VlIloEBtRmcFnzpn4ludu0lAD5gr3yxpopDw1f
	 7pJ5pIjVlfArLt5tJh7y14+9qHo4FYXN/cbut4oNr6qfPG7wTpSlJpB4fyxe1gym5x
	 gTDawLrXugUAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC44C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970439358.28193.4015995854727661928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd24a6a5d6009b1e135d6f4de294e633964106e2b5404de97bb9c603fe60c472
Date: Thu, 12 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749704393
