Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F40E17722
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712978963; cv=none; b=VPUFTNhouNxpv9RqUINKsjiNqS0CcWnc568eQD15m12PMqbrVhZLv6A3KT3wT5s+3rCcc4GcPsrXyjOowUDmqy/u6Pdsl5hfUC3pC9ASyrR87INucb28jn1k6ejE9PZYCwaCSk+RuGicohJbCKrLWJRqeL+1rF+thtDEGx/cCAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712978963; c=relaxed/simple;
	bh=De3VQxM8IOIf/2M1mxIcp1yf5fbMtG5QaBEOsxQdBkI=;
	h=To:Subject:From:Message-Id:Date; b=koslIvJUbfP6kdwbMd8iOuap3FgDdeyEtIB7irxElErjiYfGO0gjCvH8Q4mOqck8+hGQ8oH0qC+5DK8Gpu4Gbbitjb0o3RtTgvwYdAhboN7xgRUq6FZXy5qDcqY4qFCXXj7qr/JAgWg0JAni3oqa9XR08sVJA+eO7XIktuRBn3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mu1lQ20f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mu1lQ20f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D65C113CC
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712978963;
	bh=De3VQxM8IOIf/2M1mxIcp1yf5fbMtG5QaBEOsxQdBkI=;
	h=To:Subject:From:Date:From;
	b=mu1lQ20ftrjaQFQYeWyQQ0+q1icqWDBeY5e1/ECOwtomD4eZVkWOJAJnrjemxuwfs
	 OzPY00iZtytrJKaUn2SugLNI+cUIg1yYz6JJBh8pmTjpasI35ie2ruur0PcW2H+X2h
	 sl61Owy3Yjrcm2gCLJyqZuCmYV83AkLWazLfgPu0TLQcgwsLJ0UQMTbjgAij4CKFVr
	 RSqB2fCipdCwHTqlIFulXJt3XzlGZ3ysK/HD+uL7oiGU8A6Hg12w4U6zpx2+GN2uWv
	 LZwyNFrVthlo7Q7UkoqBYpEnvnaoK/6iwutVUUWyvSMtdnRE2RnZuq6px9m8qYW95/
	 zxDJNc574tRYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C88B7C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 03:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171297896279.2234.2895624905516919599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c990cefa260880e3ae0ac065e95fc9fe3ba65eab398e3b4354b5f1f0557fd5d
Date: Sat, 13 Apr 2024 03:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712978962
