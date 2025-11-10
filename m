Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A728000B
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762808994; cv=none; b=EkQtYA6DBGeUbmy1kpMYvHby6IE3QhnLTBI9K+6yGMUzRUYXlu26aqy0svO/7NKFqMgUWmne9sVws5sGNu3/8cUJFC1wH5DC5WUXFlELWuxc/OZeeycFTWtPRWAAgcTYaKs3Nng7lIW8j87wZ58p7agZf1ximeGUBouTC2Ba70M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762808994; c=relaxed/simple;
	bh=yCjU9Fnvt5/Wiqu5Wagwlsz+0qj/Eda1GXFHq/FCpvk=;
	h=To:Subject:From:Message-Id:Date; b=D6aOgpMB7t1ZtlfmjD2r2fGe8rdc9zQ8Enw+bLs/1TBJqa7k+k/hqzzGEXdY+SbnuRlnHW5aohh1peSpf/4pJLd/iOutofAk8TuF45QLsAyHuW0XYjLsKkrl/TT0sKyYFXMVp6+YV/lSRFQQG2BFMjvJYUQZM4000ocmO0wUF1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVg2VpaN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVg2VpaN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39F4C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762808993;
	bh=yCjU9Fnvt5/Wiqu5Wagwlsz+0qj/Eda1GXFHq/FCpvk=;
	h=To:Subject:From:Date:From;
	b=OVg2VpaN+Yrz5d4tjzLxJslJitK6Wb+AUM691uf5iBJW2r7kImGkyQXDLLaXvbNHN
	 QvKhVbFZT4RcNXNDaXcOGt6Azr7uESuY14HLijTLywtkDJtdZyHOjsQvdlz5TC/sXY
	 krZZD5Pv2gW9N4BUD1KNtpP5cyhdQDv5J4vW/5fa1tIKzIAyFBtmAvTIrSm7KJlpj5
	 WJ0F8JOHO6k6eCJt7Y5v0icfHMjgOOaLWsZvTQ03S3vYYPcNOuQYtdYB3bTat6ozWh
	 6jOW3RWCDPwpx9hzuRLyCEv1wZh5ttBbzgXHWTt/20MnJRNZ4MXzNMo8Ui62tFTKGa
	 FJNfhDFmv5Atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97179CCFA13
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176280899361.10077.1198238869447013896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57a74d49a79b60f9b32cf15ec8ff01e808fa0a20e8a155e63e14cd1f02dfc44
Date: Mon, 10 Nov 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762808993
