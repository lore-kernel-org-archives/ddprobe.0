Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDCB43A6EFA
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068694; cv=none; b=bOLrqMRDXz76b9XunfUzow8WlZHw2I8iwtgH24zdq1ykCK2H5xidDvh6JGo3y/pU8TNFXkmBss3mgAv4GGDl+DUeb+VpWQuSVWzzSz7A/eEpXdkBqs95fZ7cd7jqiiZRAdMehTbiNhkBXJVxLhsGruVboHG7swNOt0t2hOericM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068694; c=relaxed/simple;
	bh=x6T+MEqzY8XBHh4M84WY8qQR7QEJS3ePnDs2TZb/mUQ=;
	h=To:Subject:From:Message-Id:Date; b=mkk9iR9vvL5UmCItkRZtZ4iFvqtzDfAROzsbEcuAY/4LuNqsLWoR3o5VH9s27Cl9Pj6DfbG6M12Vmx9kp5lirUkMXOmpOzM8uga9ucbdbv6DGx5BhNl/3HeHrAA7TJqRYXdpHPVlM3CY/AVHnSp2qSUYhZ83XnuUIa8lcLOV3QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnkTwDD6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnkTwDD6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8F2C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773068693;
	bh=x6T+MEqzY8XBHh4M84WY8qQR7QEJS3ePnDs2TZb/mUQ=;
	h=To:Subject:From:Date:From;
	b=EnkTwDD655vaVzmGkPd1p+xDYK67y9enDi1EN4yx97jsJN80QQiS5sKJWjafYlmyN
	 6RAmGQsi8MPAJTBlhKfoOFwkWRO+SM/i0rW02Giio1p/vIYYxZWfNa/EGLjaxpEr/t
	 j5MClkHi1nUDA8Na6Sz19kYGBX1FqynHGtzMnoJcTVNGhBQKO2EnAvrlIeOmHqaMQX
	 wyDdEjrfu2HJkvqGtoRj0Yb660oD9uNd9ZfnDqoD+rPhr6QsNjSPojJnae94IOuEDl
	 HggUKtIyXGigS1kyI25ULjSzhYoz3jq7ToWHsLwkUEWoRa2d4li+bTzJiBgKNGNaST
	 19tXWKoJVGBHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117BF417F6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 15:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306869358.5000.2863214687266112200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb28b5f46547b1395c9d7aacd56f83a2dd4601bb57b319443e581e22e3166a4a
Date: Mon, 09 Mar 2026 15:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773068693
