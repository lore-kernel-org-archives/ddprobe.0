Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2299C23B1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724979355; cv=none; b=HR3wfbxdf9ijyWLV5ulK5pZss9Q7Pqv1wWTeQzQI5DDuIdS1I55dBXsVBB+vM8otchyhOcDP0rarKBfMWH6GUvqEpmSmDmjSF6UNFmOUzX3HWL7i3IV6Im0xlhmNZAoheYfU/aosOsdgMy6DKKj8S/ZQksw+sazznhXuE6OxZGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724979355; c=relaxed/simple;
	bh=Rmh42wOSNACH2t0K6KLg1usfZYaueDG1AYlpYmGNeYU=;
	h=To:Subject:From:Message-Id:Date; b=n3UnzO65T2ClFlnmSgdTL9Yh1uo85QxlsdiNAOqFasgy7AjrlTPzhJsqcDYgzUWBjsLiy/IwCrzduX33XhlrQR5lbRjRH3zASq6Ha5NKtIBnataoPrzmw9s0ts6biK4utmhEPtc0wBtKkz5Cl77XTtxapiv4uxuYfWrzpUE1Dgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EVtZYeyV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EVtZYeyV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D7C4CEC1
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724979354;
	bh=Rmh42wOSNACH2t0K6KLg1usfZYaueDG1AYlpYmGNeYU=;
	h=To:Subject:From:Date:From;
	b=EVtZYeyVhqzJzTf6CG+ClCEoR/LOigI38VFa5k5laSfxYUpGNInoyWCdygAVqoIfV
	 J0VEsG0gn6WAUr5MvD6Nmclh29HuCSXIBSZLOI0mkFhFELgj5+iAnJbJq1rU+M7OVV
	 xASNNoqK+0s4tYTjEbbtqk3GEqUyw9VZropRptFPqUN5qlERgt88GrBaOE/2k25S4X
	 K36qfhfCmCbwlbLV5Kb2i2VzDrOd1pMTwmDFFvyru7RVgwvRXdDQnZS07nwTEY5FMx
	 HtVeW8IZFXsPNxIJrC2z27qkHU2pF5bY4mfutOWVAlru8+Opv47p1pOjcOIggcJgM1
	 jk50aEbVpd5RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99340CA0ECC
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172497935360.4335.6763996297555743739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4327d23b30c9b4134a2e647673efd83ff36ce7a0f0503675c702bab3ed4974a2
Date: Fri, 30 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724979353
