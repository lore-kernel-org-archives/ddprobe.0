Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852CA3B3887
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775643934; cv=none; b=Wr8j/uDnl26z09Eai/ILu0MG2WnGlVyx7JjWjpACWKtM9Xbs6pNnKAmUE7p7EXvLdMCFNZV79ZpMKQmys/oDjsBizpQsgQuPqjQvvmA884S2XsHEmd+GVlki2u1h9YdhlPKgCFYK/kconNltn/9o1/88L1+r6lIsTXmj7KCkzFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775643934; c=relaxed/simple;
	bh=Ul47J/2/WmQiSF/z5P5iJr7K9Dmzd4DwXN/UJHPI2R0=;
	h=To:Subject:From:Message-Id:Date; b=cAMSRnwaUiUvuhdjwNOxkDRBMVBp93FYcddiGCX+xhD4XpDXNe9SiSDVlqmGfv77WSijL9d5QZV1SI9WSorjxeE6/d2OzILD2eJuo8fryQ1W2Nj48JKHRts1GxJUqDQwqGHuiht3DDPPbzbh7VrnJ4nyen5V4NkfcNux+KMUU0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBR8aEZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBR8aEZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48FEC19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775643933;
	bh=Ul47J/2/WmQiSF/z5P5iJr7K9Dmzd4DwXN/UJHPI2R0=;
	h=To:Subject:From:Date:From;
	b=CBR8aEZysbKr0cevA3SqJlirzhLyPRwB726EamANe2FiXj+kmD2V4LFbeyTZ67Kvz
	 vKFcWAGVmEIpQC0ExKzXbbIILHkzzFyUrnp+nk0UK7HhVXz380qTCilXSXTxrV3XYh
	 1PSHm9hsXZyWjmVAWfpMfUYkV0XdZNvsmAtEI3oGzRsecjnQ1vlmDVeHNt00Z19f7p
	 614MZiPiM6l8LsO/Ev4M0IEs0yXk6fxSAQZy3NK+1Nh9h8/jd08mxubHnt2P98FK7M
	 Z9ZCYZ6oeQkeChalGnXM/+PZWaegz0gkEdISmtus6K+fidpOmReI1Mp/8ukWS7okfi
	 elM0Dt+bEmNTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B350D1073C8D
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 10:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564393372.20898.970708658202390165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 957c3b1d76fc5ea0018012fb9095bc2d77f6a7c1559a77dab057154065c27f70
Date: Wed, 08 Apr 2026 10:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775643933
