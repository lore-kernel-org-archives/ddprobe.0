Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF5217736
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727562954; cv=none; b=Zq4WfmqxMzEXDumZYLMLuPooEZQa2ktiObrUcyXYRHHqdO+fZbttrAczjfrno6FZ/5fa2FJG+cThmaShFp3yA9HQ0y/wfoYiwqojjx5lCo4bFLTFUk1Nip5TzH+qiNgtHT6FYKzagc1A53neT0PcEhbS6EQ2MPxGUtEZKYDPJcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727562954; c=relaxed/simple;
	bh=DVHCP/MCBrFw2ZLVh2f9UDjQ7QOdL5iOUmEP3m0Xmds=;
	h=To:Subject:From:Message-Id:Date; b=QfmOfV3Oc45hVjr8lH0Bt0sJsZQYKuvnhbhbzhCUlBGzrVSnnV0NXOV+TFiayhp1V1BvUvYEWfiBn+jYEKkZVR+CnCitP4qkv8zux74C/+0W1K9xS6bwt5cFA96Bfe9rV4/2rWxSJWiX6sXzMdIT63r4XGlRvvTusEAJ8pBX1gE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6Qcdhbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6Qcdhbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9933C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727562953;
	bh=DVHCP/MCBrFw2ZLVh2f9UDjQ7QOdL5iOUmEP3m0Xmds=;
	h=To:Subject:From:Date:From;
	b=c6QcdhbdNZeqqOGLIoxeggb+m+9xl5FS04wCCYrqKD5Dmj0xxOSvPH2svBF6sPtx5
	 XBAH17ox+/Zu6cBtutjm/EZ6qClIZon0j/rdYtgBBy+IM+fCPGKyhXSsMPujOHdr/W
	 Om+v6mdN7TNTJBdFss12s4MZxnKdTtr0vY8V7WDUWQ4COs4rqP/htKyFY3xwBClX7x
	 1pobGnL4lzr0050HD/Wy4CmPDwH3mb8nn4p4u81nFEjHLd1/qfeDtSaGgDajpScQV9
	 u7UHEHxY3lIfxCzUb4pD9BB/2wmRHhmvD/Tibr8ID55xtZB+RzC6oQwubOZxlRU8pQ
	 shHill1vspVMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E51CF6491
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172756295359.18014.8585425845610325225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71235c8c687d1d5414cfc23128fffabcb66a8c35628d507ca79428adf504cfd6
Date: Sat, 28 Sep 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727562953
