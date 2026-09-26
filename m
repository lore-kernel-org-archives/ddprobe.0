Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6431B3B8D40
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790425234; cv=none; b=LIEtektFobYXHQ1ZWrelRroYr3KAk2AQ2EMEFYrsD6ctoEHwxC4Dr1VhQ81TMbphlcxQ9v51c5eZvfPBHOG0pbNVpr+A/SXaTNbUXCS/ku1FNHV+AE89yW6Liphi4w8RlbdB5TFU1bpKj311BGcx5xm6ETo2jN6pXfLPyjg2LEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790425234; c=relaxed/simple;
	bh=LQej27ASHRBICvd876vSkOZJGz79lKyuNEw+sy/zXBg=;
	h=To:Subject:From:Message-Id:Date; b=KBUtPA7gQynT57v+BkLCg9NCUy0IDCFjhjSAyUGqx3AZ/rjlUAYD4Mw3rGeLqw87wpy3+6xZ6kV1PiY3eXeiy7kWtoPUSwyfyMe9zVvvI5uCJKuoOPWRVDRKVLGV39j0cTHFhu0Skq0sBVid6617FJlRuODyFGtdLbp34oJp7SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIuNA49W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIuNA49W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAA6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790425233;
	bh=LQej27ASHRBICvd876vSkOZJGz79lKyuNEw+sy/zXBg=;
	h=To:Subject:From:Date:From;
	b=SIuNA49WxZXdL/+e9WE77cK5UeZzjGS0fOgRrag72tOz8Sll4nW4nvGhQyr0oCZms
	 1i8rdRQk9EZ0olQsVdS181oSKCk7Q3ShsiW/taEM8bkGm+qFZB7CrTXORd7iOrTixR
	 KwbguuTKWyuB+zyrMdTxu0L5Vk9pLD946jYes5GIeyrJKmRWDggURb5ZKtyrL0iG7l
	 CW/H2BheVnagbDFZMYZ42LZ4YzKrJ5lTHfPN5Ft2lLIlgBJevGempFyWmMS1Y5aMYG
	 m3ir6Mn9qa+RQ5ECU7ZDdOQEJsroAlBk7rosY1LNDdNnTAqBXYo0VGhASdajzRNqqA
	 tHTfk+N/nP1oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB097C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179042523369.26522.14526096262165916563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed472ad306935654792c969aa18411fb3f7ba5b4164ffe7848dec8d249c62f80
Date: Sat, 26 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790425233
