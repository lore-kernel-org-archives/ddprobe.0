Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2D914AD20
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780532674; cv=none; b=sO1/qlJdNuBITuRSPBG2hptRvYlqERdkWTeklZgTqNH/bQWSO2W1SeJLbRoksz1Tp6bpTzG9rZGPXOtipuPI3EroIBSzyC7Z/YzNxJmY/tl5Pb47CkHrFTP62huZZGeaJF6Vll0yGa+np5FkxxFE7+aoy7rv1e4YaOB+22/VSgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780532674; c=relaxed/simple;
	bh=6DDRBDId6eyxAHch9AZ2q8D11ZUaBSaeDd3oNAqT4i8=;
	h=To:Subject:From:Message-Id:Date; b=W7b5JdZtbAL/ktqeAR3ajgw0fEDrXWJXZ/ki6mX9yyc2xEtLSiJMl+BlahS+MBef8nY57ag1Iw1056A7UvtJwWOC4sLnSRF0bmCISRbiVYFlYd6WjxodYZYvMIlaOHEPg5RUgjtUxb3mHCAPNhxr7J8VlzvngrPz9Wjm9s5ANR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UTfHyCAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UTfHyCAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFAAC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780532673;
	bh=6DDRBDId6eyxAHch9AZ2q8D11ZUaBSaeDd3oNAqT4i8=;
	h=To:Subject:From:Date:From;
	b=UTfHyCACZpKTL5pfOLpLHG5aphXyCyvWwUYrE4aP7Dn/sWWSAJ25aOt9MIBWOc2Fw
	 AHAYxXkOV9AZFMHiE0iiTm1Qo4ew12dCu5DyexSZfuw/et2F1rSF5NOLG/IEGKWNVB
	 5PCrxsKMI8+FTO5CRFg3nBtQEqIwU0FQXb/Ed5o/dga4ThgKQXqXjISCM+b/Vrzs4r
	 bcBvw7KpZ9xUFPwZmaIDHn9SztY9voT7UBqMfGtoAfBM9lUiSzKxYwKO+KC1Sm0sNM
	 v0m1fFaSlTg+1/MlvH7SsrAXpLY6WE8BJcx5iLeTAttiX7N/6TMACSta6x8a7ppQLd
	 1sKiSfPeBtjZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF498CD6E60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 00:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178053267368.25393.8698118779244065044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edb79adfdad5890045d9b3dcf688a351446b650761ac44cad91094ee6da0716
Date: Thu, 04 Jun 2026 00:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780532673
