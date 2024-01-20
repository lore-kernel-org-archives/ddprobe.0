Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBC8839F
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705795097; cv=none; b=l+pwMrTVK4feKVE8xNh6R97dmQDYeUMP2Ey9kByQ6L7Hi6ttPwkqoouWHRTIvrVe/HwE86k3yo8eDoPrbLAbr9+cTsOuTwxAq61rNFNU6TmtJzSRJ0L7u6YygR221ugdK0GXw9dX64pw/6P2PiT6XkhWMEIIE2NCOdOdEIPg0b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705795097; c=relaxed/simple;
	bh=w6f2x3+9DJf61vi7eksuqdH38B3J/vJnAQzqZMT7mCM=;
	h=To:Subject:From:Message-Id:Date; b=rQ/HAtHi0IInrX25sk1cA7XMdhxFB61rS5vSMlnYKCCG2TCMPsnOwDQItMiE8OjUDdJOryPFd3KiZWqhBlBZdXRg/y5YK4j3YGILDDJIpOx8K+YJnx8JNijYADFZ7ddOfMRYqdkMBaj/QgpxnfUC+FTYOJufbRwd3eBVkCy2c94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTjSHLzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTjSHLzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74AB4C433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705795096;
	bh=w6f2x3+9DJf61vi7eksuqdH38B3J/vJnAQzqZMT7mCM=;
	h=To:Subject:From:Date:From;
	b=tTjSHLzxoIn8r6CxVU9aUdVzZ8TLxkgCG3gpI2XsnOzrhVdNYfbqKYAA+HQAhEQrd
	 y9K27GghnIVkoGdATIrqzVTS4IMsOMEBqIkfdTeajiJnFsx5rw+HY7rrmsr9fIyaJb
	 YMTg7y2WWheLcLBM3GOV6kLlPXFMP+eX7zAi1dr1y3lEBgqkBYKtO+W0lyRR/TIHyT
	 L1y/jmrfddnNskX7TEtoZwL8BXiKfh6xJz26yDmFcJ57Ylk+VLV3ejEHXvVXMmuK4Y
	 hybCnYWbXcVWU977fQ/rWyrML3irOy+s2858bhxE74g2xb88Ijtiuf/EYGl3acvaBf
	 c+sx6gKYJpr6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DB58C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170579509636.652.17936471290789284286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95552c34a9976c1ae1b2c979390add857f6c98b589257d7d0bab6ef0a5826be2
Date: Sat, 20 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705795096
