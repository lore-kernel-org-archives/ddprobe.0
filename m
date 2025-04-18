Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F9A21B8F6
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745002794; cv=none; b=cPHyZA29H/+/hnw39r6nz2e093Ng4vIwQZn55TsQU7qYlEwF7CVzmt7EoSMVSsOysBWD+Snsa6YMuv2V/0hzR1WweuWDtsQzMVv2R/UPCCdidsGk57AZR3fRGe3ambr/HcZD2X/HL18+CmYQGQecYukrCWSF41eTOMT2aosrOpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745002794; c=relaxed/simple;
	bh=I6KMMbiBHAq+g3NniYP2E+cUJqESXxzJ98O5pGTzUvU=;
	h=To:Subject:From:Message-Id:Date; b=VWgWYOYuMa0zXYXAVigEU7fkSbsyQc62ytQWzthv1vwm4bnhJ/AzH0MVVUMXV6KOKoeyHwQzQnwIK0Q6KCdderk2LsJLVdv3TLS7D7F7my7m8CleaeqrNIjjxEQudERASG37zAHbaF/AVNLCQesev8i5oZkx1ajrHnSVqm39UQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGsc0bSU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGsc0bSU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A838EC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745002793;
	bh=I6KMMbiBHAq+g3NniYP2E+cUJqESXxzJ98O5pGTzUvU=;
	h=To:Subject:From:Date:From;
	b=AGsc0bSU7vEeh3YNrGS73BuCFnuul55HB+BJ+No2/d2egbmPHoBJLM3l9vePVUFJo
	 cof282+UdHCe04txnP+LZzSDCfXZUbhda9QJqt2iVCm5Ffht+McvziJNcdh6WD6TNk
	 eX//Ip+tQUZkDmdNVu+12EVqWj/Tg9kkftRV6gv2Btns3ETJ75GT2Ii5me4dq8q4en
	 IaDEUV3iI1tCNd2t47A3A/20GNf4vfs1VIl21PdtfyceweMO9jGPTclqqOtNRbPNuh
	 x24VEurIEmSfbcGXOKU34xo69WvS2R+2epVVe1ZFpiccyXLf7N+1A2ao7txTiswkeo
	 ANFKYB1npQsVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956F1C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174500279360.23994.14876641747671258847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f12e67f4c42b73753fbd877e39f8fe2d581c61dffb92d55986f95273bade1779
Date: Fri, 18 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745002793
