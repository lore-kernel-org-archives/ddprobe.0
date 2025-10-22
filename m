Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06947224AF2
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761102594; cv=none; b=nJW+WKqPwKRpb0DuoRIfrI0YyuPi4efxlE7eDyD17lqqQSa1tZy2t4LKm+5Lnf1wAGVfbY3Bv2/RJynKlH60dzj4cEa2ZvDQM78ZVquXTLQV8+Fzu8MhR7YlaLFJ5v/KndaH87tR3GxuA3UBVqEh45kj8OcGXXFilkl/pcF/jX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761102594; c=relaxed/simple;
	bh=nloi6yQiArccZZSi5Yu09pjNDAzVzm/v2I1NsTeHgew=;
	h=To:Subject:From:Message-Id:Date; b=j+aPxP4rP9sf5x/SNkTQy7ZouBngca8pZ5xR1CAjLH1a56a1u7LRWOQj/ItlsJv8dPxYRv5UWCaSDtMP/oDXY2aaS/1vi4DYl017Ol9xzwZgrWkum2Qj/e5inafzBhlF+1aIcc5LH7btnIK3w12CTbyilIfQGZD53WaoYvPQAXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCYF9ku7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCYF9ku7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99F14C4CEFF
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761102593;
	bh=nloi6yQiArccZZSi5Yu09pjNDAzVzm/v2I1NsTeHgew=;
	h=To:Subject:From:Date:From;
	b=dCYF9ku7j28hQ4uSkG93QdWCHt0rDHCovDITNcxfHwwzHE2I1js27WwdR02m3Bu32
	 DtcFyyvBQpTxdbaNx2tELb4m55pEeIuThjrmoalw7eFn92fvZzS5f+G6H0ERSWtbgw
	 y5K61FcnTpqn4VdrZo5HaJo0HKaSlCSRJ2Ik8gLnHRzxPe1bJzCIpa/Ppt3rgzu0AO
	 52z9P2YOqxC4Qov5kmZKN7Jzti1SIjpLJVeEFy/eEeRqpa6SgpzCMo08z3OVBaCscK
	 dEV3mILOvh0vaqdyE7Hz4IqrA+HWbD+j4lfa24bttQbxjl+/u28VOYbbVFtimJZihB
	 J0vaiEb2tNyIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F28BCCD1A5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110259357.26469.8798513303329693913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdec48009e911a098285d0d34ad92893fee8fee6867bf670076748820eed24a2
Date: Wed, 22 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761102593
