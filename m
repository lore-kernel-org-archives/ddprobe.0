Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BFFF51B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720385783; cv=none; b=ZPLpYA+/tQ2PAXs3MYOJVRTre904a1XsgWwa42f1K2oj+rUCp4D1JrB7XLSCLiMHe15ezel6WEI+QAo/mZsB9dPC/C9t+he5rTXfooeP9XYJhOxNNtMf0unilCUygwGnnQ415iPxrcz9SNud91XD8PcRonSkLGKoTrfj9ZOzpcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720385783; c=relaxed/simple;
	bh=ZzyjrOAVAjiPiCUl4+OuDdNtSf5C2SMzD0sKdTpAMPc=;
	h=To:Subject:From:Message-Id:Date; b=q7HQy4JHOLHTAAyhz2TnRm2ajcChfF4hRNnTeHKELre4kETvvu9IBKkzHxazMsJmGCjO61eVrd2CfPrr0QAdK9gYYYespn9wWTvzThFWMLD0aqc65K/MvTzWdqbJZKYqll5tbNQRpuy7691SQO6CyjaUrBd5DB7IvwzGSH/unk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEy1u2YS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEy1u2YS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE354C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720385783;
	bh=ZzyjrOAVAjiPiCUl4+OuDdNtSf5C2SMzD0sKdTpAMPc=;
	h=To:Subject:From:Date:From;
	b=NEy1u2YS/YkJK0+3U5dyRvjxRe9M7L6pcgtsAs3tetoXZVaE/I2y9tJoQ/FbsUSWh
	 pWi3GX2+hUaWBoZivyWTCBxvDU0LU0xGevY8sNHkgW/IYi+Kco4f8HvMn/u/GyUegq
	 /s7z8Qm8kjvxsgmzaKL63v20u2rOvsossqyPf1H9R6kHxGE2IhCcGswnMZ/70VEGe1
	 gaVbABX1rQIQfVM38raBFU3t35914NOzsDulURsuTCJN1Aadht4Al9kWyNZ4A9RFwG
	 787+1/Mc0zCs5apWQw0qfM0pRAFv8zoLdPd4vEWBBha0RFJEScz+KH6AY7CsvwVly0
	 orKDZpeMCEZyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5135C3DA44
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 20:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038578283.14867.13644508956918887946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59b3834653e69c768f25752d20b0900aa485fafec15d4d2cfa3ccb199a37997d
Date: Sun, 07 Jul 2024 20:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720385782
