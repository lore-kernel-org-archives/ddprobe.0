Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15FEE267B07
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758892794; cv=none; b=jssXM3oQKRlQFVVpkKhnZCu2udPMRNy4az4BWzhnxfhgXjMb6+XBKfzjOKwSfPwebKA8/WJhkglJv0vhlOnG7rDhbwtOZWPDUprHGiN97e6xZbOws5BIecg3tzeCUp+/LIbLqhymKE8MLn7Jrk5a8Xz/Z96zREN52F76ZqU8Vi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758892794; c=relaxed/simple;
	bh=GX5p3+srOVfOekMIwj9+egXY6wWS2dWW7kk4L7uDx6w=;
	h=To:Subject:From:Message-Id:Date; b=SgAYqwd01Qz1A5g104ZothwvSZCWeWJdmyP6is2xb1p353s2R4pFNTGBeOx9jqiTLjH4GwhglB6gGLEFE8ikH3f7TRzi2KYyWJRIC4g+1j1P6uIremNhtsZTgvp1LkaYxspZmm36NGRGPkvISC6EhIuUVHAnZG7loTkG4EAJkEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ky5EaZFL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ky5EaZFL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1579C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758892793;
	bh=GX5p3+srOVfOekMIwj9+egXY6wWS2dWW7kk4L7uDx6w=;
	h=To:Subject:From:Date:From;
	b=Ky5EaZFLWwNF7VRtNhih/0n64TpR7FZ8Tsba9a8Cqoi79lqIBUa4jFnbF6mtgoyTf
	 +gz9JQ/RL58KfKg469v/gzzw/XQg+VSu5gP9SdKlMUB3pRloy62Qqev2Xn6w+3ITTn
	 cPVAINx4+bLdcC42ght7RFvY6sEb0Xil1GOCTXQdH9bpbjgRdo0Q/fpk/w3MYsi9Fs
	 /YK2tinirUMpPjs6zvTfI9muPmp2av6zyqNTN2m8R8rCrhTyBCvWxysAE841W88adQ
	 EtVXUq+mbOWvKRB/x6IOlhW7pdvo6svv4sfjuvxyDsANgqz626z00RfF54nXDW19xM
	 QUmU87S5WeZRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910A6CAC5B9
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175889279358.7287.1332638232099937870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e44d230c2e3903d6b7de22af450ee60f825c2c3b5922328658d4dc7ab138ef
Date: Fri, 26 Sep 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758892793
