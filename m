Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FAEF137752
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719228743; cv=none; b=I3ddHM9tkIIestH3hsX5kKJr6VCHtLpRvnTWfc3RtzPB4k/+FeGXyVTty7yQ1APATBUcTt0Iha10gLCqp479cHMz3dXrHgkJeIdN9uxcx4v+WYFG5mNtp3sCB1oW7ql3eeoE0LFRdTzcx7cZDze6dsiaprYtV/3bp6L+FnXVc7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719228743; c=relaxed/simple;
	bh=crq7408vG1bDD8xepiV8o9GnqbO5ac3kLySXW46Rlxc=;
	h=To:Subject:From:Message-Id:Date; b=bN2bAYBsaVgS5ijiUxPqJ9/ArClSioDgOOEyWBQfFOnt09SmIW6Su6bSBLqaUL6lvSk6bpL3KngRZXNZ3FTy2U8Yv6/jXyIxgcz3JHWo3bzYD0rnBKTQP4M0BymFfkqvIY+OndP2eiMriKDvsRP8K+qluvQAYIemDTai/YS5gbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KPK/o46f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KPK/o46f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA995C32781
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719228743;
	bh=crq7408vG1bDD8xepiV8o9GnqbO5ac3kLySXW46Rlxc=;
	h=To:Subject:From:Date:From;
	b=KPK/o46fLHXpFJ6IS3IIvjkI57ZTsshjXx0vI3jfFHMs7g+3tSyjFxL0EQx+0uHHF
	 EiQIZt+Y2cccXnH0iwafQiWfaR27r4voRMH6AU9R1e1XANZpcw7Wy8l1phqWN48QAl
	 ePCJaNe+h5G+NZ/YSIPTuJkieSc4BmKpFAj7VsUN02+F54lwDxBDPexTMs1x7LjWz5
	 qlS8wZi54aQ2YdCH9YzHkn+LKnGCo+yAyNK1lSSaEzp+jUoavGQUKM5ilv45TxQj2L
	 wR9LqbuxXCC7fLyctFAVLIY88JNN2B0BxfUph5+IcpwcnApgFvA5mukuDHjCGCSZqe
	 coaj2zSIadFpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DE9C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 11:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171922874279.13827.9669767353407317338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7b8fde27befc6b2863c3abb2a54b1396a82687efa08d2309ff6916113879f4
Date: Mon, 24 Jun 2024 11:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719228742
