Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F72282F1E
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789918834; cv=none; b=NMi/cD7LFTeW9VMAfaXXTcIthSTEd2ET3v+BGPkg48Q1oaotPqCCtXfcqUDTdVIAWx+XYH4sTRNdOnMG8FmDpJMXr0mbPb2xAnwlEGMx7OapeO3XBF6onXiu+9FrWqvQZoVfVGJsmatHRte1ahhrs4aaz/2zcWcJ4VczOvFw0bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789918834; c=relaxed/simple;
	bh=/OKWXud3dp+zPIEfUfLAw4f9a5f1lnGCCNSj+uQVadw=;
	h=To:Subject:From:Message-Id:Date; b=eHEXpPgJcRG21a81gjj0S1oUHuz9YWt4tePLcijI9Ul7WWC4TzHW+CLOWEf56XLq/I2eymXm6jq9cy5jBYZjHYCyOIuuV3rtem4g1sNDrtkyPqTUcroOunCQzzbpY1HsRD/jcFbBINexMIrGBQbFWBNt1OuiLKqAlhHNpfMDZt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eue92dIK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eue92dIK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBCDDC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789918833;
	bh=/OKWXud3dp+zPIEfUfLAw4f9a5f1lnGCCNSj+uQVadw=;
	h=To:Subject:From:Date:From;
	b=Eue92dIKTy86ta/m0+D3W1iRMTy12OxBpbYyiyxCmSBAK3InfSwtfzTTNnLTyGUFA
	 bRc3P1HcbQ2rjiqy8hKSg/29cddcwnJTMPHM7wtfrpiBE4To/5UzRB92do/m0DNpj2
	 e26vJhaStHLq3SzYM/dG4d+G3vcVQ5zCJaedusCVtLJkcjhuBEBySluS7gdImrnzMj
	 yeEqseDkvgQZC2+l17h8ztTR8p4XgQ5QiKqzClc6UxYsydWPlUEbF2yl2RE/eMV6K5
	 uXJFxlwEiujeEt/ViOLgjP/k9/ClScxMA2QrZLHDQKRkq3dWqFFjp1L7UhSKrqkt9q
	 onjhAJbRTq9HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA519C982D8
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178991883368.22573.12774347073251719031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1d9111094a58e222c168248171151ee6ab06c98a1defcba54ac3bc8c12ad38
Date: Sun, 20 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789918833
