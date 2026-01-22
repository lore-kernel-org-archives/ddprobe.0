Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AC6449EC1
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769066634; cv=none; b=A72+Aw4Mxdwr6gy+9G2oclPMfffV8uAS5kOCchrc5E7eTQKx6QOjQIKeIX36Yo39jHapNFaX6oOT1J8FqZx4qjOx/rRAouIJYs888CWdZO19ZUZ64r5vpx7A4qG30+8j4A7Vl5vdvRULcMtbt+T30ln5BgOG3Vw5sEexcKTlbn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769066634; c=relaxed/simple;
	bh=BmzqoUJvp2FVbvWA+CIra32XmO4KItHSMGve7LRxjFI=;
	h=To:Subject:From:Message-Id:Date; b=PdihWb3rBMOKY44Tbcv5KVSkFSxPr6tPQPI/exfAhIkr8IxzRg1Z7lYZPMblMO8a7peS8pZFQ+i+gONVHB3AFLrkLTwfN35i6o3P4g0V1nX37b/wjGw8FKRsavhzf/RyWiPA8/UdOOxNiKYCgfIme1T9KXqBRdJYSEM2T+ZNIfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ilv6ri/d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ilv6ri/d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A726AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769066633;
	bh=BmzqoUJvp2FVbvWA+CIra32XmO4KItHSMGve7LRxjFI=;
	h=To:Subject:From:Date:From;
	b=Ilv6ri/dRnCn3E63dNj7Jv3vWrheNOY9/KyljWJqmUD9rV2pCjChw8zaINfqT+HgJ
	 zuXWzHgzszCTrKt2xKFzRhpXm2J/kfLroOqohmTAsZ7LBDm0LvWhYtFizN96Hp49VZ
	 eycRXKwLEdsFhFSr2kWH7ltLKsGYGrEAzgODfQ/G3yRfqSRtPNXyE0eDe6gSce4bmB
	 v8J7ueekVwHX4slrIAqh7VFx9/yBHlkhdmQ98qt9T7hepHrGDRRxm5doUMa/bvaEQi
	 jsO1M/dhpZIzQcYjuxNEG5z4nwVrL/tFAF2t6kaN/A9/JGbk15O2s9pOLKBMHTJGbW
	 /ORHTqIdrFQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939BAC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906663358.1324.7695939152173025655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60179e4bb78e3dca9ec40d3c884a405c2a2984cb2a5bf809d4fb7072fe99eeec
Date: Thu, 22 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769066633
