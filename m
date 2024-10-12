Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7D1E55B
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728746154; cv=none; b=b3fcbebfnFNARVTnDNDVa1C0D7sDQvKJm5ju8OXpfF166O2TfVU3Uk4HCw+f8sbu/rgU/BcZ1ItSJJR8mbHeJZYovSRid/jVCpa+lKy6SEnW/sR4R4hYMZkp/3Y7BhbSWWhio3M9aHIk4vQa04NeGrtYjQEkR1jzhqWWnHzkG4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728746154; c=relaxed/simple;
	bh=5mONN0SJqAFlkmJJNFbQRsDTSD02M4tJsH9/yYtzacc=;
	h=To:Subject:From:Message-Id:Date; b=hFKQTTKl8fwnJ4XUq/2mMpgqF2fGf2sof2lxTu/AHV7DeVDDv3G/CSUM+qTZgwFVoGEoWQIUdESspyX/qEKwF3RWLmtskAtxOqAXeipW3mHmjwMZEa5OcgoeeUjIPmToXYUcTRpRM3VVBis1YW5uevGiFHRJREWaxSj6MmSIU2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfmfLscs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfmfLscs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB01C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728746153;
	bh=5mONN0SJqAFlkmJJNFbQRsDTSD02M4tJsH9/yYtzacc=;
	h=To:Subject:From:Date:From;
	b=XfmfLscsLaVgT5UMJKhaahoYCDXIygYimSb3/rxDTNbwPO2pSukprq+cFqZtHTJ3Y
	 5glJZAKNUBEC/b6Ye8438HC6mdO+YANye9a3FgshXRE6YLk9ZC2DAJ0nvUdiX3xgpz
	 iQWeAaS/lhS9Cz3aGd9mUpIBANNASdSNrz+QI2sEf05zABihsJSK/gktliyeDUYAFx
	 PeE88SZvC6StPq42MLFafc7bLMMFVcx2lgXtRlIIpPv6Rm0C+8+DYpsqknxPNF1Edz
	 P/UkypVZAtmug0lfLrGzKc3GnkReaM6kw/SCTtq+OsJQDw3+1ZwxJLbXDaRs91nN3K
	 dXEb8HgSjiVKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9917ACF2568
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172874615359.7466.780886204144438267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def5cb3b5b52836851d5ba52a50185c0d6788f3ee18e346d338db914bb7ba7f3
Date: Sat, 12 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728746153
