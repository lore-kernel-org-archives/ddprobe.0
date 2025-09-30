Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276132475C8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759220394; cv=none; b=hk/Cw1b1Sbvu79J8WtXTCWdP8eYsgIRUj27dXICXmZwjE+njayA65fBML0yHiHcePhBdSm8oD5tISqSJIZUkO7UVBGJy5T/Bl+dLOz3RA1+tVt0M9tT64DUzMYenvwLXkgaKryzGCPKdQOZWyB3F7pDUDJ3kHWQL+v3XWOv0gzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759220394; c=relaxed/simple;
	bh=qAuqhP93eYBN9Xo5CeWvBFG/sJOQhm4KcoPTFro+gqU=;
	h=To:Subject:From:Message-Id:Date; b=cH1t+mVlS5CwFy1fBALWW25ZJt6XZebcFj0YRacoE/gGYi8STFl1xWbrsVapybpQ2gUmlSF9n8laMAZi/qQqRYbffKni/oBD4AySGipLJWdGiseG6oQKexTfPwW6paRnFpBVLZQc/AHQCK/S+1LdkZINUtjXC7vSUEeQKnCb+d0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsAQflz+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsAQflz+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE84C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759220393;
	bh=qAuqhP93eYBN9Xo5CeWvBFG/sJOQhm4KcoPTFro+gqU=;
	h=To:Subject:From:Date:From;
	b=VsAQflz+CIfmjz98xMuJ5qOi2W5taVT+WJGc0rNRrS7L0B4lX99fNbgf/rX5l+96n
	 anHXgIi3xLEGf6W6r52259l/LOAM7I4WI3Crp1GDSs+4kxviiUZw4cpVWK1Cthzka+
	 gIF6bh+d/U9kXQWpK/daicirWFeC7g4nLU3x2XrxJxyelh7MZv8OT3ks6JcaAplbMO
	 JCIAXVBzNMHrS5IcDSZdX5he5M9JGS/VC6bP0TmdDj30WBVLSixhlAZfwBfGWtlQbH
	 mR9+rQgBtfoY+SXTuezxJ0Are67lFH0MmR/yuvKxb+Zx5s9ugL/qjdJWk+lZtiEdtO
	 qYoTWoak/8j4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFFDCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175922039358.13780.10304175460789438782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10c037886245eae74f6188742142c420740d5b4f67c456ba62ef7168a518a7f
Date: Tue, 30 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759220393
