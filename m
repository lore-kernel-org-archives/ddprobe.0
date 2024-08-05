Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AEB47F5D
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722828354; cv=none; b=HutsMTbizw0gSk3+k1jO91klxxLNwA3ySRsr97kWLs29UX+x3rE0RdFy1+UFZCRXvvjHanp+pMxrBP2yILOwnE4x8Oi7kpqtFURhrZDIyEiSd/BX2YNsIhuKDWV7T4XZAaVQiKpoF1QBd3aPuieq56naRoe+4AXmaQOR08D24zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722828354; c=relaxed/simple;
	bh=/OpaTHecubGmG/BRdHhfeLGbdzbUAP6CuTbgakexzIo=;
	h=To:Subject:From:Message-Id:Date; b=EvVw3kVy+X0ZaXmZf4z1wlpKzLQAv1njqfanuezOw2t9PwJnEbBEyeliQz+3CT4IwJkPEuxS388/m5RHPlfmWY8+q4NKdBKx4pjCDtVJHlbY74PvZZA9ZtCQNW9voNbkH+dCv3nXXLhdfbgQPqRsRLw/JFhlYyN9gZiHyET29ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jeJuxa+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jeJuxa+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1396C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722828353;
	bh=/OpaTHecubGmG/BRdHhfeLGbdzbUAP6CuTbgakexzIo=;
	h=To:Subject:From:Date:From;
	b=jeJuxa+ymChaWxjJrL1YU442DyHCBbaQv0AX39//9dIYIRtx9fXBz5jAYdgJSIxBl
	 DYVg0sQ0SeVDlDRO+3+5l6M/WW1jn8qvmlB43NOZ/qCjd2hJe3H5RaoIWs86AGoBuo
	 7YvOiXsHCKafUFJZmW4k5+1/YTm8+kPlbx7IeLL1VmXsooRrH5FXciml9rur6qMjZi
	 iFVXswhKBNi8HWXDmgbETi4wZjgAMbNBu3vZoJ7/wP+lIf6vrB3m+tU2YHtLSgDKcR
	 Oh8NvHiy+v6JqkGn6wz0T2zQlDuKVJyo/gNv+jNVrpTne029uA5/dikcVEkftIunbN
	 pHKxxFiptqL2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C48C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172282835358.22993.9149816749331958860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b74c3e9dabce3f5d90633eeaceca2a510f6bd0fc89cded16ccf6da1a14daf77e
Date: Mon, 05 Aug 2024 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722828353
