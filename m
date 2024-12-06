Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC6D47F53
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733496354; cv=none; b=YPwGEQ0OgG5JBfjjLsXhQ98HPZCWZ70NSBx8lL2nIYmj0a7jr2ZsdAb/AIPzjWjgPn1aY7P83Km8MFwKQnlAznn7HU2PNqernx2GSoJeg3CAkEtYX6iC+7UBzN3Pm/jFMnE4F9a9C7LOm3XwuL+svvtPFl++zpuH8iMQ4u8f86o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733496354; c=relaxed/simple;
	bh=Zr8f6NKW1k3SAAkbN5OjfGp/ADqIBcDPrqfRHXnSFBg=;
	h=To:Subject:From:Message-Id:Date; b=TmpW/qmRPSjkl4CoVicUI4EfT+GRShBvsBx2NddNTISzXC+Z3m5moux4cAguSLVOOdSeKeTusIKfp7s4Yenj/uiuRPQD//ULV8tqtuEHn+Gp5SY3NINmWuJEI2s2y+Ikc59iLuj3ypRdVbys2CAnX9goujsPIdsdQP2QmPcrLAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CTAWjbxC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CTAWjbxC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BE8C4CEDC
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733496353;
	bh=Zr8f6NKW1k3SAAkbN5OjfGp/ADqIBcDPrqfRHXnSFBg=;
	h=To:Subject:From:Date:From;
	b=CTAWjbxCfyFOatlwxsy25vp5vZcLbGSPw1JBtWdSP4VAL6oNJr6dNmvbO47Ar2NpB
	 AwkZ4MLF00sNEaQyRNqstBPLVX00TnE1flxYlIz3rTNZvTLxOFwKpggmTkwI9C9M2+
	 n7SqoLpzhRWK3tzbYZ151cX5Q04zfVTelop3zMNwMacP4rCKzxIPquWQoEOCLz/nR1
	 y75rZYhA4UT3pvs8JNTTmJsKaZIIMMSdRtjNRKWB1Vbhrecq7Sisow3wjQHZ4rnAY/
	 BuiQO4duLS27lHbFZZHYYblNVBUsZTRaNBVSlslTZ0QU8JlmLQXof8BvSCdfK3+D6E
	 IZxwXwm7cWSlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A586BE77173
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173349635366.12864.17117831694018812161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc08a5dcc9a1cce6729bc6cfe32b61d3ffc7fd10a22fc7756b4022fa54cbc1d7
Date: Fri, 06 Dec 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733496353
