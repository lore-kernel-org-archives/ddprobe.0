Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28AEC2F1FFE
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771482294; cv=none; b=HdwEXt6bOi6+7oc/rrzSMXXJoWF5aW+Uvmo/IOxKmcS+mSXC0/inFgyrjJRr4q1A2w5MyV3XnqskEag7uP0OtBd2CtK3DsgYllnka6O2zJSDzWKsWybVCVND05u7HK5WpJUTyLF1ycbj3Pg+r7oW3naRgm8FfY3i7G/lpOVCi10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771482294; c=relaxed/simple;
	bh=X0e+Vo1Ot72kSGWPiMqF3SdSEH/cqYjV8AaKGTVUwPo=;
	h=To:Subject:From:Message-Id:Date; b=YohrPy9EsEB0pMa9qx15+aMz7TEUAX0kNrucWfhU2uCGQ8lEtwjS49d1xUiHp/YNn6ANHH9AdPDo6dOd/+qYRgVSUXY+nLl9Pc1syqQqyne/vblsDjd4Ky4fkTjI3VGMgyszBDZN+VVg3TSa/AYFoHUN3ORT4bTfX/rlArez+lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rQrqHlVk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rQrqHlVk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E7BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771482293;
	bh=X0e+Vo1Ot72kSGWPiMqF3SdSEH/cqYjV8AaKGTVUwPo=;
	h=To:Subject:From:Date:From;
	b=rQrqHlVk0oWrI9sknvQ2/T1Ajo7I4H0gPEnshi26RZlbHQCZc9mCgDl67dHiNgrCS
	 5e7XgtbUbBUjvQ+KYBZnk8zx3h0PjuLM8TgIgA7kOz5v/yMfBzLGCGDfVsYKdAzG45
	 EnN3MIaV5Z4FY+rKQuHHLHV9ly7RNWnld50y0gb4qYXEmXjsfaEesOkGmw+DrTsCiS
	 boMp85ZPZIlCYYmFo880u1HDQPXT/TdCvDRctpzeAD9oC13f6xdLpotw319DVk5Jzh
	 wSPgnq7/QKmwG8Fe0aH1J4rMWCA3IAFBTqD4/vGDYNXQTKp4Q8mnHsTgIgEHjGmQI9
	 A5ylyZkCweS0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5ECFE9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 06:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148229360.7811.15222034484599188551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eea37e9f1c559e46939851c3d8e5bc2bf024e6341e56326c112e686cc7163f0b
Date: Thu, 19 Feb 2026 06:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771482293
