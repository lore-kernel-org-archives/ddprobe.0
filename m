Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB2FEC5
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717978643; cv=none; b=U9S+pBEg15K6D0Za/Q+Drc+GqeiiAxTeRw1h8XjMLoMcAHiekupY8NRexqosi+4pQ0KVvs3NOzplyDyXuFxG1VBYUW/RkofAC0zz4ydh8g6dWz6Vu5LMqU9yFTO6fza1OmAkuvk35GASBqcpmc/TV8sZ3HIoMncrLHI+uwGFAZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717978643; c=relaxed/simple;
	bh=AVsRA2rKPyUqmRLZaA3q4I23hq3jhcrwyXLIaoza0dM=;
	h=To:Subject:From:Message-Id:Date; b=WeuC1OaBilLdtKsU83KQwbQ6GWxRTIShlgCHYFObbueGoemPZ4dozZ9i43GfbKfmrVqsdcQ0EE4POSBHN74GX6XCFCWxntAKoMKL8J5OUIuOhlxX1aVg5UvhWCtNgyMuRJuhLpomfodqStlCl6+tAfw4dYljr0P9tafWYLoHibQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Js0q8Qgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Js0q8Qgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D319BC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717978642;
	bh=AVsRA2rKPyUqmRLZaA3q4I23hq3jhcrwyXLIaoza0dM=;
	h=To:Subject:From:Date:From;
	b=Js0q8QgoVAJXe2O9AhKBstwiMOLkfgFWdYcRk8tHDSJua5Wmejxs4Rm7U7kTWHuUp
	 FUGE8qWa8zkyMOHG71Yct84CXg3grkicNvByiACtNDAbByeUEU27mPOrQPCCBXzOHH
	 Mn/2R1SIY4uJLFYi6Ef2TtZNow6kQj2T7K9V71h1QYkTXCIP4F86giweBvOFB+vagj
	 06Vmf66vM9dDF29yHr5uK8spMnNfVNolLCWhybtOhn8t2MkT7bAhgrAKuidVYq2duq
	 GCIfm3R/bTrsM19Bj2hZTzWFYTfaShE2dKW767LY8bP7o0cw8dv7NBfbTqoL9zZSyc
	 kZj5cYgkc0BCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0885C27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797864275.25259.17952606687495238304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e812af70474fde51ebc6ff11414a9cd850bd813c4d8a2839026c855eda7ec6af
Date: Mon, 10 Jun 2024 00:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717978642
