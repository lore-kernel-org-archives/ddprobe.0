Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F71F12D1F1
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773203694; cv=none; b=COVl6XrGhRDW+sg1Grjdg7K45IH2eEGTy4Rxy7grt2OaD06EWxDzAlWhL9QSM0d04Whx/Ecla4ItNFoLui47S8zl3UlCFcXv8js8akghO+oqXPxMvhVuLS2fNSCR1gYTcDo6/WS40P4AzV6XzkF47t/UcBZ3+YGiZhb4gKCb6e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773203694; c=relaxed/simple;
	bh=PNzGZEd1LvJHpSg4ve1NIFapwQjThkMS64+PwoIquEE=;
	h=To:Subject:From:Message-Id:Date; b=qTE1ndrd2K85mX0ICfnuto81bTLBclqL7TbZu5ehw4r9jHmf0VsoLt1hEHNN/SitQ1uV4J6nVz9b2khXLckaGMAPH0dX2pMWlgSNrBugG8cCdgNhk/kVj+kiJTHXYv3b1I2NM9/1wWFkTApqe+RGXq+1NhXyuwCuWg1QxFr12jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/uMhVut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/uMhVut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A86CEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773203693;
	bh=PNzGZEd1LvJHpSg4ve1NIFapwQjThkMS64+PwoIquEE=;
	h=To:Subject:From:Date:From;
	b=A/uMhVutGH76cHz1w2oc0+u9uSlj2wFgY71gUZyZ7EqyRaetRv1tERwnfFkxi/TUq
	 owfAoRVQ8JHRjd/uU9hdPXFozzQrUZETpHFbE00cjUKp3/vQAcxWATU2rAdyIXpiUf
	 idOxwLPWLe2nnOp4946sb9swnZyEB0e4gI3B6JEdh/w263JmHhJnBFRwVF0mB54pjk
	 u30bVMP7vhfJk6V2N0Bkw6+RYCsDACNANDTPetuYn8szrpXyh/KAt4plgBYDniT2rn
	 Xrx1FpG5FPR5w1pTe9hC/8dbLKFtQTFVEPaDmmzht1t6zCI7AOt+4Z6a80MGzVmHT0
	 EvugBeUZmj1sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A27FD88C2
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 04:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320369359.28222.16685452586167720975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22bddd6b496bff2fd646427aed7b37988bedc161d8266c2f9b6ebaf4c64103f
Date: Wed, 11 Mar 2026 04:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773203693
