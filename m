Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BAB1AB6E9
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726151154; cv=none; b=OnWDHZABi/4crAFGHGTlphnL/Y/DoYGWfrMtcWtHRza3VSSwAJ73Fer2GHcwc0Su6hF6QK+yYHsq7QkSgoV9P7ixNl0e6AAHU1ELIZP1TGWlTGZwWDpOi/kjNXnOdozh3Bituw2PZN4iqwPYjdadHdgIzalzAcByCdnPz6ukKHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726151154; c=relaxed/simple;
	bh=WlQBSCicIeXnujlRL4gAxIHyDsm7O3C1VI00pItHEfY=;
	h=To:Subject:From:Message-Id:Date; b=IKXTaXbXgdxEyzageA1nyogHrbmJ6OiJD3jUxw3bPtcNs2QPgAgmD8Zt0deYUMMNvGCuFZvYxN2UQ0sQp03WWTCpksU5+jlPPBE0X9K+U/0/t8OYCx7DuTH+w2L4pxnxXWtjI/xZ9Arsu/BzZ5REDBEFyS+5a5+iYJTUujJD+vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjPPoaAW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjPPoaAW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26DBC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726151153;
	bh=WlQBSCicIeXnujlRL4gAxIHyDsm7O3C1VI00pItHEfY=;
	h=To:Subject:From:Date:From;
	b=AjPPoaAW3vjLhRUNesQZDenuBVLU3GaY1u1yqwDP4+mOAAuAlWbqHaqOvWxi3VMNb
	 y0ofrqqDwoWJrqOASPCgdEfuRm3If1IEAikm1EyyFFQzSfp9MKOQP3B0S1Gru0WpD2
	 sf3/PM+OK3ri9i4xcSZEabK3+bef9H74WCdMIBsWgfxp9IY2Cr6vWKDfu1HNbgPIeZ
	 sWenDhQTZ49o7QijyWYat9DR9dRfZ29c/O84DLNH0hsa1X9zNxPZuOGeKTkTnlS6MG
	 PR+WweunvdlHVN3LbSFxzcO3vKpmFaeuKo1ckJudVD27d4Rb4KptHUB9abFJLBa1Cj
	 1SCDaUtVCHy5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943DFEED60A
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172615115359.26090.14196699217047128733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b1cd77b9d34516c450a24b8d1a65d6a45e6b4cf868a65bb519ed8b0129a369
Date: Thu, 12 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726151153
