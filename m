Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFA9137750
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775339134; cv=none; b=IxPOYzumdRGR2sF2qhmmwrRaea6AvXAR6DmVhh0YXDjtArXMnywWlywok9HImk9d4Y7axdcLn9sPS8h03udOkGjEdpzmvQ+QWafxcRnBX8Wr6hXcS3ZTS37YSTcc3uy2G4trMETGZCHN0bdNLk2+Ci23J9gu2RQF0ARFHqiATYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775339134; c=relaxed/simple;
	bh=Iq9yNfMPxXxdgtEiAkfribFDtxUGTXOm/QWI8RIPVNc=;
	h=To:Subject:From:Message-Id:Date; b=gP4s2CRfEHDftPUvqsRX9gcbzjjLVHRQeV26Gyxz8GzqJt1qK6/ARloMjbc86waYCBxlPSgw1iVvyJ+0fcoary5Yi47/WsCmBPoD4lYcxAht0HpG5gUdYJwnalkcEkKtAgZy61GDPQT3fZjHfPQH1P2WLzLmBbUTMHMQL89KH7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQRE1ycp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQRE1ycp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C005DC19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775339133;
	bh=Iq9yNfMPxXxdgtEiAkfribFDtxUGTXOm/QWI8RIPVNc=;
	h=To:Subject:From:Date:From;
	b=EQRE1ycpDROkHDVItt5qmxDYS8iv/6mL7CAD1jb6Dnpx13QtYFXXrPvSjr1PKHc3j
	 fDgIMRZd2GRyQ5YQZShLqVGEaAvXUCgp9PlNGhliErDpK4CQbhgUqkP3/xScD3HPyr
	 Y94/RQTu4wpgZcRaQGEy1+gv5Fv3bpGtuI6+9//KDYeV8mn70ioraGcF+BnjBb00zu
	 42S7S7EHHvsi/fLl25TDicvmkguO+15WEqoCMH968lGSavRlyuTN9aDSii8KdRpk4i
	 x8yCXSLVS6qCiDM5Vq06c/CKZmcIXjryV9Y7No+b0oLgrfuhSpbGCUCYW2BHTgQYg7
	 yrLNTII/Re/aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA8BE63FFD
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 21:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177533913370.31021.7050991005005058085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa833dcc114a69c439708d5b38308e35cd47f5eaa43a384a71aadb8b992416e1
Date: Sat, 04 Apr 2026 21:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775339133
