Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246D22D8DB8
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761109194; cv=none; b=um4jqt7kdsGhxWpl9tomJ7acFgDjfcY4NVx7VUItiXeaDm+KEDBwNiLSJCzpjWvhuU3n3c7lBhyqrst9kqvIRqRIPd4NRZbjlKGCl0Cg/ju0mbUkT2+gf0K2cRTpomCJWmMnHHuXC45XSNmvi7k3CX9BsMRd3Q7nO6aOASyXOV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761109194; c=relaxed/simple;
	bh=ieFP8gteq2Bz88ZRad/tCUtB/SXQB5I2X3nQ3S/Fzdg=;
	h=To:Subject:From:Message-Id:Date; b=EfFBXEk6FoeJme7ogAxWTrqoU2Wt1bsLev96KIQKtwUlt/lFEy9eBUZeMWv9gs/06Taemq88iHlQ3sq1WJA3c9CJNV3p4hhXYBhBAiIbrvnfcN3FMQAC23n1AgA0lQmKN6EyME8skO9jaHOwM1sGSnY2tFIs+jouHRuzJrTJdSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bn61k44k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bn61k44k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EBDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761109193;
	bh=ieFP8gteq2Bz88ZRad/tCUtB/SXQB5I2X3nQ3S/Fzdg=;
	h=To:Subject:From:Date:From;
	b=bn61k44k6lualfnlOB4cAebZH97E4CVChIhGnHs20qS67Uw6vaz0fI1iV1RA3wIcK
	 GBeos0i6oViYyA8+UsgWFcpFmjzGM5idmxmAp7WfjGiDQhdMXSZXb4/tx9rrVE6u5K
	 3hsy444CemyXf+RqqKIItr5jLOkqlM3w9kkVtvkRh24eGJdLSviMb4NYnLL8FOGV2/
	 08N5mNsz1OMMIU3eBAqLAF0I6HVB+KK4xyrhrzjFVTee5BUYdo2bpkbpiekJle56NW
	 n2BwFIN7IIf/okIp8HJaGjlg+lfmCjwMrzbv6kAmDBG5s08P4c16IbQWrFAf0fjc3G
	 VYpcF7UZEfJdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C64CCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110919358.28801.15791837722014349066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 723815d3c06296fc797b822dfa30c5ea557e8ed7fe3eec0bf88f2df5c292246a
Date: Wed, 22 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761109193
