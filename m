Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 136341A9B24
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774243494; cv=none; b=NcuGVOauxxK02TLvWl5GaFJ9Q6e0RHnW/l21nzfJLwwdfMOVMlF4/aLyQh0ihJj5Lk4jomje1ssbFrdado3eL65RrorCVqnCI5U1uW2VjKvhhSvHSpwqmh3O7p0LjApLUOVGprrGv75IcKq66M6YdGRItAxNTYbGoTMDUsX6X18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774243494; c=relaxed/simple;
	bh=YJulhrGUVl1NwuONott5M9Jin69BrFuc223N14Qshr4=;
	h=To:Subject:From:Message-Id:Date; b=l3yod2Q0ju2B5G7Wj1cO3djV29ZjYKH7dSRBMRCFvdmqfgD1zBBS1/gHEIODa65T6A+0jFqnukbxVXMUadv9mfIu4jlTpALY/b/ecbOHlBzRcMoai6utt9KGJK8YgodYctDH8TuZ5jOwFtbfYejSDYhCpQquplaBzQeX0XGDN9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVARXL8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVARXL8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2ACC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774243493;
	bh=YJulhrGUVl1NwuONott5M9Jin69BrFuc223N14Qshr4=;
	h=To:Subject:From:Date:From;
	b=dVARXL8Tkm5c7/vi/0TXt2z1+ygE4mZ9589+13HypUNZsr+xnuHV1744V4jzyXOkP
	 QrQr5ll/+842MFiIY/RkG4zi/KPhZ4krVmuWm1QYh+S/dfhyEgVVVh72v1MBvMq1rz
	 5aaAoLgMfPYbDLDcNrZvvbdWnlBIyMWGd4rHfTTTO+AZEgfsd9E71bKSOfzdPj+I1l
	 mh92mvS7Prrcj0R1qn6lKvEkiDoeq1iEeyoZ+pLmgXtrvyjRohXEL7yBQWKsWOBGHz
	 rENOPAKdtZdZbeOPEpTTC340Od9GAg+gjSLL+JlAdNtQW0R6+lSdNqQYGUke4beEiA
	 8HQVpoQ29eu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB52D58CD1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424349363.18846.7072280490066575777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af40cb3b911fdddcc7f70f0ec442833e926961f5f3a894880c5e948400ad239d
Date: Mon, 23 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774243493
