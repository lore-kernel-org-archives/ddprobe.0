Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071E831355D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779763954; cv=none; b=npnjV/a5za6S+JQD1qSuIV5XFGALL5PJf7bJKfeVf4hYx2Mfd3I+plluWChENkrWveWqEyVn5ZUsIowfUUJJT40KMw6aY27TbL+5B5DC/SScw1rKU++8veDbxrSDholvrA1EWcNYVkxfpAEv4JzNJfKpk2EnUspiyoZ7Za0O/3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779763954; c=relaxed/simple;
	bh=ltHGg/sqFHRnIo63DkffQK5uOcoy8bh8qwt/2w5EA+8=;
	h=To:Subject:From:Message-Id:Date; b=Kmp/pNkOjsJSJHeM/yquSmkveC8UwJ+lVARrutZvlquP8tycFGgSz4RhjiGTgRSX0GCIDjHWdbZU73vSqDyti9mvSrYFJ0cWUj8wlP/zhT+qLM/zBZz5JOuXcFzDC1bAuy0VfmcYVcyOT/sv0Q5FlFcDsU6yac/kzJJxRLV16Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X61Xq0Sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X61Xq0Sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDB4C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779763953;
	bh=ltHGg/sqFHRnIo63DkffQK5uOcoy8bh8qwt/2w5EA+8=;
	h=To:Subject:From:Date:From;
	b=X61Xq0SdXKyATWMUcg0dWHj653p00/XFjrmkhZ5G65FKZt61P2YDPRIif9mNFm2sc
	 yKz0hfX0xS96p7xa5sjMMSMwXCTDJifgE3A9kFlYt0Ers20MQiH5Q7i9B2oiSi3Zaf
	 YsBpRsTfS+mrh2rmMFlnTGwcmvauaUAyQLL8BM8ClOx68rXl/qIeZucmJqr87CLxBK
	 QdE9nRToGbZeq12igYMLMnAq6KTlj5rCruFs0J+VXyC8Lp3CfvCPExADtDtXnSxDVN
	 hTdIlDL7AwDIK7q3CrDexCEdPb3kom1vn1JxCRzeRnCDSA9BDiQ1Md9GvLrumID69s
	 mMdwncv8ePz7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8568CD5BC9
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 02:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177976395368.24751.6716607990755404223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b66a5717d3db2b5cc9b9691af1a4d6df14a05cae5c52cbc8dedc2b1502821a
Date: Tue, 26 May 2026 02:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779763953
