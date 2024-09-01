Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51345273F9
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725174954; cv=none; b=Kt7BKrStTJyuBHuaIR2YCmKQaxP4l1l5WKfPnZHlm2z2XyABmD0FOiTKGT7/ICarO268+fciHEyt36OgQ9AY7Inmr2GGFcj1s/Vh11TAQVPcZEt5plK+fAt0ngdvkG/ETQkEDaQgVe7h/FFJaeRVwde6exyfp24fFC4cvGPuboM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725174954; c=relaxed/simple;
	bh=3Cj34Ai4HBpntQMr0LIQjOHKYtPqUOJTMHN0pnknvwk=;
	h=To:Subject:From:Message-Id:Date; b=VpXobuK2tQZB9PM5TbeXuq/Vv2dFS9N0+q5nSb6yJIuriz2Ou8+eSJOZnK/i3R8u0OS4zInnPCXMfUYB6g3TLkvPjKvX4dGN2278+dbr+SD+lfzqK6w2KZfee7nP2f0D+9PXIdjS44dVS/1Pu36X0QHg5vGBWuEHxA8GUryT6YM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OQryc2Cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OQryc2Cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB379C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725174953;
	bh=3Cj34Ai4HBpntQMr0LIQjOHKYtPqUOJTMHN0pnknvwk=;
	h=To:Subject:From:Date:From;
	b=OQryc2Cs0vy2wjfMTeuBc79c/YPRKLMhZ7hJkDYetAyF5rSAXHkMJzWZK79dvvPXY
	 m2F0jazY9hGvxGkxppjTnQxe7K3Fa1EALmYrZElLgcBy1Ok3cx1p3RKQFr0IcQ6sSS
	 8ViNiRU3NvbaR7IbaSJLgT7j+VnlVr6RFCnaQ94wUvJF6fXY5nZ7c8bcxCnGXRQFCT
	 oYC5DTkmgxt8BLnG7Wn9Qake0PZEYEeOb5e4h5Xcf/IV99cHEVkFc7gQ8y+4Ks6XR4
	 9oABI69lEg6ZC4t5BVOADOCeMykw2YBf0jckqPw/EC3vlMTs18QSjrfXBD90kMqUE/
	 qLmaUH2kkG+6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945EBC54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172517495358.13313.10285676061773338457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3305338329656797637e07c26e5c5bf2760c1b2b0e845ed1efd7924e6a119ac3
Date: Sun, 01 Sep 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725174953
