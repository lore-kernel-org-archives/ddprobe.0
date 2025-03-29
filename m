Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3957513C9A3
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743285594; cv=none; b=q8HbtgUsw4NnQoZ800PampCV+HNhtacAV/st5BJ5/ku52bnmUHsH7GfDDB931nXQm8dJfV3awiN4kJgA+l+2BY8fVr5aAJKTqYmr4Ns9DC2diheU16QgvdyOr3wFspqZtZcaJr3kYIjm7q3+aNlG5uRncIpOi1pO3KP3rg0Ygys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743285594; c=relaxed/simple;
	bh=nANUA90zWrHzJNvwrtctoct1bVwIqGKrbv8KKLi0FdI=;
	h=To:Subject:From:Message-Id:Date; b=iunWS7J74uXzSuP5zFn8Sy01M/FD88bMAp4kXEqKGQEhVntEGobdA9D7R9Bk1HP9DUNK+epdW6HMFXkbD2DRCFwYsIv41T1TjUtDnyXJD3QJysUCo1/Pp/aMNBSedO42DhKhZyMsLVM356J/raL2VfysJwWZ1YpS+uqvRuetGzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzZo1y/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzZo1y/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83EEC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743285593;
	bh=nANUA90zWrHzJNvwrtctoct1bVwIqGKrbv8KKLi0FdI=;
	h=To:Subject:From:Date:From;
	b=qzZo1y/reSgWfT9XfwuLmjCrwjMZRz7B1GL4KXSYoNMXklfUgXS4B31wBz4lclfMF
	 /SS8tF00magFgtMpONvzMmqAaYH9NvVp5/ov8cvZnsiFEGF5Y0sbkPSr/zmm/BWyHI
	 H37eTPoE9bGrPA6n7Ox0wnfQ+e8XuHgg+z4KytN8um9SiJvA1B/aiGpblgnzrLwV1b
	 2jYbiAGoP0/aCDODZCaI7asvRuCdcvkzPeyglaWDLa5o1dr+LcL46oIv7AjQoptSBc
	 aG3ACLolhH+sx0zKmM+nkgboGxmb5dAnvd9O42PUlHbyzgdTr17IIMVLf+uHQPSgCP
	 HNnPvi6vbllVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94847C36010
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328559358.31173.8632300742638735722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c91a95fc27c80abb7138144f884a1e6c5f40bfbe0bad2b1312c74acfee52308
Date: Sat, 29 Mar 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743285593
