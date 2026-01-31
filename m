Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB7A827A92E
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769821433; cv=none; b=EdMn3hGHEt/X/CcNFI7nxiLkNjh67iMheJbJWwsP6JggKxkSpDk++R0faNBfhaTQ3QCXC8Ak66GQwaxDQQFX8l2wMFslDE/x2HJNuHhlUVuacCojSuGKOl34G1lYN60IyR2E2Tgj1+Bfcg3fA2cZJMEL5GBHPQk/aVetxjyPUQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769821433; c=relaxed/simple;
	bh=GZSdByf/mSCF6nkrzYbNUzoHByswfkTcKQnKK5ZL0rw=;
	h=To:Subject:From:Message-Id:Date; b=cGyzRrAP4NPfvqgVf0TnULzloyiJdrBDhe1UsPbawbn9EWvIJwpZ5RQEUWRDOKiNv5tHtkEo5HRjko5SL0aiKUCo8mEVefhhAlFBTDDmfp5Rj+5k3r1h+ZpjQT7poN69MAKQeTHFGyhSI8+DBCdWp2yPh7C+zB+ZMk2fLN8vKuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GChAb6zV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GChAb6zV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7516C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769821433;
	bh=GZSdByf/mSCF6nkrzYbNUzoHByswfkTcKQnKK5ZL0rw=;
	h=To:Subject:From:Date:From;
	b=GChAb6zV1veug3cheTlwpknF6JqboaYrXTBHTV1qEk7LHee4G7e9GRUgbQ78sLyZS
	 N4gxI0KUOuUGlpddOG9ZybBXhR9wt/5zzGCZ702RQKqgrSFwHqEcAsRdXnmg1SWnh2
	 UANTUc+yNQjLb5wbpPxUbKaBip2O49q5wCOS7ubtzx2/OHI3WmmJLLXcFWd6UC7zV9
	 6eyR51MYcfPwmGyKBjC1L1fEyIR75O83/uX9DaFQc16xgR6shHoLiBSmeCPzixB+90
	 Jq9t28MAcyX1R+J5bpPP40IIady/cVmN5b2hY23KhnmD2yKyvbfr5n2nZq4068v6cw
	 zoEfG9IYKap7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C7DE6BF3C
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176982143358.2125.11972777962756043678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a770541cc4cf3667b4d0b6e839030d5f5c3645a9fe94f134a87c972bcf62a1d
Date: Sat, 31 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769821433
