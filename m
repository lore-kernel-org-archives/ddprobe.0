Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9F836D51B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771347294; cv=none; b=j9E4o+Al+i1725Vr53ZRGW/7wUCtfx1tXS01HCnHxR+OagHzbxwTBW4onz2rIQsMeiwo58XRnqwTkFFjnMGmiKPbfrkcKM3csySnwC578m1cFhY30XLi76FkRoNizfAtDwcpg4pZXmrYNuKfQY+S+SqIGWg3xDuLWvslNG1MRX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771347294; c=relaxed/simple;
	bh=bTkCxmnxXAht+U26/5EsLAB+E5KFKw6bdeg74gq3wZc=;
	h=To:Subject:From:Message-Id:Date; b=X9WbKevHrlrrIQq0r+d04EMHqsdViBaS/GBf8bUg3djuCTGi4HZT10l4kiQ5hW/XM+Duu7PFJI1pSR1PFqVU33ndXyv2IYB8UautYG2NDg+sBtm53VMo2CRD19jkhgZvWfnzhhWExYwAi3LczUqr1bXHzxtXOqZQA/eI7Pc1Abo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bj6SWFWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bj6SWFWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB03C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771347293;
	bh=bTkCxmnxXAht+U26/5EsLAB+E5KFKw6bdeg74gq3wZc=;
	h=To:Subject:From:Date:From;
	b=Bj6SWFWouPqjkrU3vOiWzZhBfrkYz5cmq932skuBNXZFetw5HDryalQqMCrnUZ/Wo
	 c9NCxVNZmyNqc0q5EvbNM3el0EmOR8quJAEFh/u2wx/36FV29xVW1XaILk3ndi1O5L
	 rq002Knf/pyqUelgu4AFP/7Gi9f0GSEDeYWMkuUr1BkBXibtVmSHasmYZo8s8Nztre
	 ieLRibE92HUyNS4902vG97DqcPjRNiHXbf24DCX33CP11a6yu5+ygaqM63chv3kPSR
	 Zb31wgXDzhOtLtB1T4O27rMsPwg0hR1zjijihbRPG3BSN0A8mnsEcBn5poBqgueqki
	 SBAgwc64x9B0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99164E909D4
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177134729361.24818.13588262321211923658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03844d5b80e162161c3fc506cf1f550385d553b45e82ba3fbd68960d5efe1552
Date: Tue, 17 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771347293
