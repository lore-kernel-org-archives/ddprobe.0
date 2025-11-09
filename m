Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2531123D7CA
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762684194; cv=none; b=QAqJ0mcqsXtHePFJXcS4qiAi4MDTlwKBgph2uv0ENMPXPVqjr/yuOhu+OqAlAAqYHIsOn6ma+WuFIEsg7iDR2E/D3XGCJiXwtnE5TaNCuGTfY46Ah1BhYRYz69G4QVFxbJHpIxzxjt7Ntlwb3cEeVZ+9jOF6RwMxCEan2TIByX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762684194; c=relaxed/simple;
	bh=y47MKX2BfcLWwqOLninkD2DYaqFssH1gN/EhiFsnrwY=;
	h=To:Subject:From:Message-Id:Date; b=VmqkDHz6Ms7i/ocjBkwU4gB7faHMg+rQxZEEbpa4vhvfyJ6Jd6gTI8i5KAv5ihlB/xV08JkkfG/+fTMrjpniOULrvZuPZ0arUwkpt+GRmZg8OTK4ZpI63liZ1BZzrbpQo8v6t/aEeijkqBfLsO+tph/b/T+XxoJyuPO1o6GHIrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBwsNAvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBwsNAvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF82C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762684193;
	bh=y47MKX2BfcLWwqOLninkD2DYaqFssH1gN/EhiFsnrwY=;
	h=To:Subject:From:Date:From;
	b=WBwsNAvMGogyFaXiVWOi4S1O6cLG25eC4UJSaRBLaDZ9Sz876yNmlmXjtYnIwNula
	 pL4LnEEA3Lsn+a3OAKHFgmpBMm51pcxVFPSZtSX2R28RZoo006kmZcSrPcX2cHeYoc
	 g0I1c2c6ghiOS3UFAI0B9lz51YieKCIFl4LK5GY5JHclrk3a7T//7uk0FwLE0EjWL2
	 hzOnSF/PnBnMRY+S7LGV/EV/B6uWAd7zgFs46g0LITBpOmOcHrJ/4e97lg0n8Ef2sW
	 BzTCsWFIoD0mEic8kpnTpyvIi4MiyBPPG2dhEKCZhBn+/9E3iRPQEN2Bios9w9kn6b
	 rJ706lKTr7Khw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938CFCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176268419359.32051.5080978359191540570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea07d3c1c4366b1dfc976e02862e8e7ef86d3ac162eb8124889180478b20b7e4
Date: Sun, 09 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762684193
