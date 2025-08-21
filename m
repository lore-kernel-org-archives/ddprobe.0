Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D32347C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755736194; cv=none; b=C4vV5IaogXuD7d3Jk/xdZ/88QofAkAWTVEfs2rtSJK8UwDMRaa3S0bBXuL1fRxMavhx/dgIWHi3uAvPP8QXPS5CFNnmx/xZU5tOppu4PQ5QzDLPls0hzWVlfbagaV6nGfEpQXNjnsle7S5mD7k2uQQLxGe2/5HqGikMYta83Qq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755736194; c=relaxed/simple;
	bh=5awuM86cfbG15d/57GS0tnrnLuG3xTfgJUh7Ui8gyU4=;
	h=To:Subject:From:Message-Id:Date; b=GeYZuK32XNC1tdqL+zUZIALgmYVYskdMWmcMGyTi6Zp4Cl1AJj6PIGPwyXSr4/bcE4HCmX+OqXlqo+lDMOhtxPIrtfaNQCSBtj1XAHUiQTgT+P+xxVc9h/i3vDV1Z3CTSfHT4fmfE5vmHqP3DIglNzs43q6GwDQBxksG9WHbNgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kqx3JNF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kqx3JNF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB549C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755736193;
	bh=5awuM86cfbG15d/57GS0tnrnLuG3xTfgJUh7Ui8gyU4=;
	h=To:Subject:From:Date:From;
	b=Kqx3JNF+02x4Qwf24lSamaBTv90bQiDmJ6MYQwjhugSTOcrUHyOB0k97TK47eIDXd
	 XNKtQU1C5c4t+YqxzKbQx4YbL9yE5Trp3rzzIX9OE+7CcfnKu3JChkfSqhiWva6vlT
	 Cm17Fa7cE947WgJ/elIEXG+RV6tRByoqaQ+RCvlY6dP+MQlpTxX3+vlpGnxJYwtXmU
	 LBVrVUTP3cN5teqNsP94lZr0ksTtTSV3vJ2+5YrmakMW/IGD2dSptaXGbSGXDFjBnu
	 cWM0CVBJiuKzZmEAE0A3Zr0EMVOpzo4X1nRLpza6VmSdLCFDZLUhoFQTDx9Cy5pL53
	 JZQ5GbtQohm/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD1CA0EDC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573619357.23540.12572450499922625977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a4dc160a5c327b6ae77fba7f87b78598b17aa8f5c5eb92aaab0a574c1c9651
Date: Thu, 21 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755736193
