Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628783A6F17
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791550834; cv=none; b=ojQ4+dmY20Eolbpq3tnbSPArNWVBZVC4whM/mBbX/QcRB+a7fSb3iRsrpYaUQNLEjRuJDMzB7f2cnFYM+Yup1zF2FHFOdV3YQqu8jlQfaVIhNAjSQM3TJJkeeTb9cjf3qg0Is9GOEUwRWUIB/H8gbB4U2QYRbkIhgszvSdaVlqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791550834; c=relaxed/simple;
	bh=IWSLYoWOCOceyE5YVlwL1nNSErKDtIWlVWBlKS6zRrE=;
	h=To:Subject:From:Message-Id:Date; b=MG9/MzNcArCl0sYemRorXQrOwBuqolqCp4oKZ3ofhVGr8gr1Sq48E+oiRWXZHYa3Rmjr4IgmIj5UjKLPkr8XQpWp0B4KLIhRhs/hpmKOCNhK464rgSiWtFnjtNA9f8OIxMVQQiMC9SyLrj+C8LeRy8BmpooXJnijb6CxTnWo3Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l1Xqe8gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l1Xqe8gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF38C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791550833;
	bh=IWSLYoWOCOceyE5YVlwL1nNSErKDtIWlVWBlKS6zRrE=;
	h=To:Subject:From:Date:From;
	b=l1Xqe8glnCXsbLBZcdT62zpztXpos0W2iifDYuExml+bS4oDl4o86i8ZUpPunJU2C
	 k4hNq59HbC2x+RWXk6XO9kWL3Z5wWb+Z1no8A22kZvxAhR2BD+JGJVExDACFtWImxC
	 D5PEcra5Mga6EpN1QhtYtjQQl4MRwILJA7O4XZqXa7VXFQZTrsKFgcCCdeJKmtT4l4
	 6bp+eBWpF02W70pynktWiIGm5HyhxB08/BvBtWC23oS8jqGM6YE9+5M2XDgRim9kx9
	 cubHynqK9OpO8SC+x7OwLLvTO0NC70IPeirKfPKtEhKH8ETM0IeDHASqGmkgaSFTWZ
	 whPjWAtik3/yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA48ECA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179155083368.992.14232869659231768182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e1c0047ae02c79144079bee7884941ab7a4d1ae63f7f75720fcc1bc5c424050
Date: Fri, 09 Oct 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791550833
