Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243DC18C2C
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763356914; cv=none; b=GfVL5X28bGc0YkSUnQ28+nrkuPCOgHDAW0BhyFuCZB3NDEC0fdKOqks2J1DulFL2/RS5Xj0XpLXvtcf9ZnyEFJSdFIpiwRlETDXlf+VlB++w4zn91GmkPVtdFR/cqmtY40+Pd4OgmoZjpo9+e3X+n2fx/T6D3CXEie0nwnnU/+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763356914; c=relaxed/simple;
	bh=K2JvVN99+exOFncLnstPihgF/GBw2BR4KG5UPHzm2V0=;
	h=To:Subject:From:Message-Id:Date; b=j8AqI9Zp19djnp1Hwas1w0nE2SIZBZJ20gC6dTKBnc7cVwVyBQTVcQW9HQSw0Dp8TU48yYJPP2z1a5qJHAJUzzqir9QfQ4vBewh5Y5NWSwywCsACDvhbAvC1JCF9/8Ct/WEGTBsnVEA7JayvWrve76OX5d0B2Ft0tZxnCsjDmeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bexOJG1s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bexOJG1s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1169C116B1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763356913;
	bh=K2JvVN99+exOFncLnstPihgF/GBw2BR4KG5UPHzm2V0=;
	h=To:Subject:From:Date:From;
	b=bexOJG1sKMmpNyPyrhW6eN/6Ft2uGmPWx2cfROrzzDgfgSobkKAkZ1GDeNl3BEh8L
	 PdZ/e4Jo4BULnKGSDGLsdYOSLW16OVJoNrFmpZ1MLiIpaxltf1cZSc02r6AWXX5S6Z
	 LgO8b/L4C6v9WMIZFpmPICpUTDZa6UPe3XuznYF+4zQ+9i8YMG5uYPC7/6BhfNjI0Q
	 oS5NjL7HffpBPRXgbjqjMWU/iR+fIouf4PA+/DL4TLE4IEQAKIrP0EVxaMxONCDMMy
	 WuACOMtgHz5oKFy3EJCwoXZLFSUP3e3Xaqpk+YxsssM/ih/QAVJE+ToCYJL+neJhDG
	 k1tn51P7gWE1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FB7CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176335691358.25022.17003437394508520551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62cceeacf7022c313bb9b3056b69f8b2b728d455519fb2612df4d81e922e66ed
Date: Mon, 17 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763356913
