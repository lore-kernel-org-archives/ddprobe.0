Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57553311948
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764133375; cv=none; b=QIxo+DdP7/YAkkqrPZpcPy8GAfYNUaHWs4D5WLVtBSQe/c5NtDODVchwsKF48+DQC1QHqtIYt8ZPIaZqKy5WQH8T4VOnPHKE+X0xC6J9NiNH9jBfoIrel9U2m7BThzkJ2J/KXCr2FZwW4WVln7GK96p61XHVzrwRHesxl4zBeLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764133375; c=relaxed/simple;
	bh=ox7Tk9Qj6Qm/AQ8lAHnXDHN/FCRw8BDmRaU9LgdZ7Po=;
	h=To:Subject:From:Message-Id:Date; b=a+VVmnlC41TwrpD161OpeZwA66GkWuChj5nQv+pjjILaJW+QcLBk8YFb9qlybpQuUKNwQ39tSYOphHdmdkhe0O/y3HhAld3b65bJiCbpvs2nHfUZ4ENK3CHzSUdTTWxc05VTdEepvH6AOn91zSDyF9p+10mS8JZXLHTqcYHJ/vE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WsptscYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WsptscYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CD1C116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764133373;
	bh=ox7Tk9Qj6Qm/AQ8lAHnXDHN/FCRw8BDmRaU9LgdZ7Po=;
	h=To:Subject:From:Date:From;
	b=WsptscYhkp4iPivdegvR+6tzk9wnzxYfPzbiU+ov8M57zc8NoszEGVmqceUale873
	 jVqiEUvsBLjvlkbO0+t2jIE2WuwbI+/hhW3QbigjowGR0TVxYsd8KOGoHijLTLS/9I
	 Hl1cX57sNv0MqL07m+h+vYL2E2jPWmz2DaIgANyupUjf++zVjZq8EY1smA4pc4srRq
	 deAaZnnbFoep4h2OE3lGdqZmbsPTuutBQaEMEnOCZiMwp44hEkAEmWHGKCcLiz+qZg
	 EI6dMvAUbQUOycJqmtXm5+BfOBLm/KuBEh6qQr6l9RlY8+CK0Ad7LS7iZWFa8sQ6Ie
	 Xz2Kh3QVMsmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A91D1037A
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413337358.29387.7167337641783965797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc62efd08d5b7b0c30be86a1f83afc9e851d99bc5d456e04bd0a900a8ae82dab
Date: Wed, 26 Nov 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764133373
