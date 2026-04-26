Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3F6EEC0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777220854; cv=none; b=YAASX+Pl6rN5Y898IRnIR31JbbvEFG1b37WN5yZluHxAzV8+5tSERkIRjD8XAEwN1wQ8kqZOxN1ap/pOCEOsrf/upwLepWYmD7aBEjItUxpjEwCHEIeBiVeFy8eu5+Vcm+NjMcgJF14mGTHIzE87mvpzTWoXDwfxwddeuF6Vot0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777220854; c=relaxed/simple;
	bh=TwWGXb9bqQv65GH/EctoskcncJ33KdlTTq++reL43CU=;
	h=To:Subject:From:Message-Id:Date; b=jpXKKzqJ25BEb3Mq5sSqK5NSTke0V26Uc/dh560144SJtHr1nlTLF4CyXsOjzhVTb/Zlgj6QFfPPSn7PT1FvIBMu8+B4d+zKSKfHLumBKdWVC/AssdrSjSNaNYcNBCe3Wq0cDL2K0wqxwcbB2iT6W5Ur/D5UxXWPc3l99AZSD8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZk9nujx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZk9nujx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C388AC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777220853;
	bh=TwWGXb9bqQv65GH/EctoskcncJ33KdlTTq++reL43CU=;
	h=To:Subject:From:Date:From;
	b=mZk9nujxrD4Pkn4uvZNZ720t3tqhN3kEobk/Af+W8Q4FdLmJNtruFYzocODLZtOuZ
	 CQ3qjS5g/M/mkd6O3bGi+20zT/hc1oNOxeyWhhdaRpddaD5EklHyb4Is+yCgu4Fr+l
	 Brh8RvWYux7RIljLtgaZ8K9XRbCUNbFGCCb/NinIZl2j0XtMsCViY/6GWqnpfhgcLD
	 gGO78ff6myxpAUDX1JaLcUoyJhqgBUEPHX9Yg4ZJ23X0PkVvyLSqhNlfJqb7KBaCzx
	 Hy6YkFiK5rqomy6nGoazx12kqYuvVietkJsyxVCOKHRpY08TWy4d094Zd+30RARaNE
	 uGXCaMKmjwe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDCDFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177722085368.8705.15912537390433221694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879c38b0bc8f5e42ccdc0a621b79b100292668d999ff4acb6604a02c2c0bd9b8
Date: Sun, 26 Apr 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777220853
