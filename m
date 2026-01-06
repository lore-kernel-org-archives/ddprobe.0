Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135AB21420B
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767735234; cv=none; b=NgVDAl33rdPLhI+xDalzegR5UhZVr1c7yfBEbBojiANS0XuM5KUXECzK8Md48tFwiXiDDa8PgGgxhu1gUmL4VQpj12ISxWiz10NDfp711zTaeo3WtnhaJTpvOosM+3+3RxpmlvyPMOCOBcSnsuWUQusVV71XjzR8vvz4xS1Zddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767735234; c=relaxed/simple;
	bh=GcPAw5f1d8lKW33AR+ulGHcv/aT8L/xdQVCG8SuEo0U=;
	h=To:Subject:From:Message-Id:Date; b=mMdFoIwP4cMIpfXOB/KzGeJq0whALtFBd+O9BR6UsbwSiIwXzabQQF+qTgWqSWcYQ1/5ntJW9HKa4Ux1iLH6KFF9jEKaap2fluWjTrJMYlOt5PJWo+ZnZkSYLsAy1Co6HM1axxh5qFrbkHfGzGvDn1eIQvmfWChVIq+DhxkaAFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvduAAgR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvduAAgR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0183C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767735233;
	bh=GcPAw5f1d8lKW33AR+ulGHcv/aT8L/xdQVCG8SuEo0U=;
	h=To:Subject:From:Date:From;
	b=EvduAAgRvTWZ2LmDF806LERHdHcFeDiCxk9QVrreZ5CZ3gI880bwvgY4dTDeTemfr
	 2JNBs3Fqo9sc/GLRlgUxcs04ImWCyh3zSUixwmNQnhjpd+wYPR6W8unmFQ+Sk9dHup
	 sRuVukGr5+ponst4aMiQMaXqU8qj7KtNrxjbWb5y6qVvrjS1sy5a6CxR7fvHFf51N5
	 iWrQZq9vODgk+IgttyuiOLEOAFr7zZyPwCx+xVwDtwU5S1/VBBqs4sa6Ul/VFgDnqm
	 x6SCdT36B+usgE+M+8st1CLotJVaxXkZmZS/egl6xEluo/ANpXHsV1AhWC6aI+BM0F
	 faPDkJd1CV0yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3ECEFD11
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176773523357.14577.11388094844105364876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a319b600a757e09c6f936d2b4bd10685ac1cfdf3993a88b184278a0203bf8ca
Date: Tue, 06 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767735233
