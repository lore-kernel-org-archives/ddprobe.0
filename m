Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F369B1A9FAE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760136594; cv=none; b=lDN4aWPN5AQGSwZo4431+u0gFIBqRBClSUKg58aMD6gl47If6lOXzjDIgteMLQ9MeIAPdL79bStblrJMlH2YJPKsVRV4bSQJFqeFGFEmNu4q60gMg2N0GNnKbxSmN9cQvDAcvAtfSZTGa8meADbglVPOkJ/cOzhHNVmZwoEj4Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760136594; c=relaxed/simple;
	bh=xvnN4L3IQRz6eqH+6756Zh4dRTh1c5Wt6H10d/l8WPQ=;
	h=To:Subject:From:Message-Id:Date; b=DEWRBAHAZZZptoinZl+pmefPiD6SUktvlxvnVvP+5ojx8eFi2bX0n40m3kCpz6STjyWckIeLssv063HPpMx3X+raSq814Nt1X2c+3c0id8VDQeDdpUp/itFKTYtro4T7QT0M4ttCvT3HUW+wGujhs47D6s29V64Rn7r2inJkCmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lDC0sHLn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lDC0sHLn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4750C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760136593;
	bh=xvnN4L3IQRz6eqH+6756Zh4dRTh1c5Wt6H10d/l8WPQ=;
	h=To:Subject:From:Date:From;
	b=lDC0sHLnOoRK1RDzLJp94kkdla9b8nc4r5MT8DS4PtTqo7xk7C+Jgb04LWLoGI28X
	 pQDbInrL58dBDVkV9qBQUnHzJCxpvGsUeCczFrJMKe/SeB/NecYijyhAoUxsA1JmXm
	 PxxByhNR3h7oDqKJfs+ghew+bdVI4+Zg9SW+ffhBpVuNK5TflVMTWMJeH04ONQSypI
	 5d4b9euo2G47tfr25mlwagzzV5A9OG8QwOBQPswpzb6K0ryTHL9lxINtad0gMG/Ym9
	 Sy6nFv3O4bBBoZcDFG2CaoyIKzrOsbK2YiVlF/JXaExYgUU4NxkaJ91wtpI9otpRss
	 oa/BJD+fFDyRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AE6CCD185
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176013659357.6654.17743174255005630145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d4c56fea0058848961c2ed8910de687d998e64ea74100e42c9131074b7d03a3
Date: Fri, 10 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760136593
