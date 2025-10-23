Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B47319D07E
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761184194; cv=none; b=QabaeXyQNnKE/AK3RHIN/iVyMptiClyc6ftZyql9CP1RmkpvpfvwCeeVRWVja5/e6R1mxlLIqxlHIZAB2okTA5yhChdvSNF34SBp4DLoBAaAN10E9Mw4y3/zfeygjOwIe4WlF5l4t/txO6+QiCkXwmGIrXuoKi0kYVs87ztWPGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761184194; c=relaxed/simple;
	bh=s5370W8cHkW+uNN86RLI7OcqNaEGkVKqRKHBUg3XEe0=;
	h=To:Subject:From:Message-Id:Date; b=ef3Tjy5ffEJKrhv2m44sWO/jw06EAgzgt1N0cTbaeLe1BLI5xcUPledW18IXiI0vuDlEUx7Ykm1Gfj70WvFXc5XfW+Lmv5zgDGVr0EhllyqCywX405kDr3YjqnjKbO0U3JQtoHzB+pcYu5EAebRCe/ymc/x7AdOLufAlksMwIpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwQRBpsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwQRBpsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E47C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761184193;
	bh=s5370W8cHkW+uNN86RLI7OcqNaEGkVKqRKHBUg3XEe0=;
	h=To:Subject:From:Date:From;
	b=DwQRBpsVtnqcG8ljwSJsoRVUcULvIf9dcTDkBOoSvHnJjlBy/XbFJWiXVm0Fr5MbL
	 Q28tjhLYEwYMhbJIeCuY1atUl85soN/ltK5jzTVFvwzdo1j3avdtr8l1Y5ZDgj0gvI
	 vdMt+NC8zIeeB/uUkhaIkDzRNOAD4jqjHAdRBWuqyV/CyUFdaHklCScgnjkM1kNdof
	 2RxwiDGwg+4y8AlqD88BE5yBDVqX6gDWHj7ILIUbEzfza2ajVVEUbZVgmvjai0+UCI
	 QeTjKYYvN1W9XCiNfyLlkagb4DBOcP11eQbxskDefs23XdBwt4pLbDnjKtqoQ/KUDG
	 1x8JRfsdPrTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBD6CCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118419357.25656.2480626130982323922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91aa4bb3d1c9aeb9ccbdbb0cad26763116abf0dc63a367d43c91e4e60d165c1e
Date: Thu, 23 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761184193
