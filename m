Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDAA3002AB
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787796634; cv=none; b=tmncOi4us2chDzgRvn6opJgNfsWIHhOZ2eeNqo72i5hw1htAZMIw4tpXRoDWN2M1X6THfY/mVFg4Uq8m8/Dmu4KK8CUQv/6qTR/1dQeA8j0bYyb2/Qod+1uFBGnCRB2cvEZR2ECpJh7PXE7+AmzhLHQZnbtSzXsSlopaMGEfi/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787796634; c=relaxed/simple;
	bh=fu8WOeoy9wbI70B8srlskHL5HLKVh1agNxXyBYCcbWo=;
	h=To:Subject:From:Message-Id:Date; b=CJR9RWRmnt+Gvmqi2GiiS6sN3mTF8ODLJvmrUfVk4KKXW8fawEysgEPfXR0WX54gLnYozFK/kUiLfhbhsMDQiGMqu7VpklPP1x0VEPY9d4XgrHbtzYa7ahIhjKB509+5nkmMYMTq/P5ZEULDBbEDRnBLbSZs+MfIZUI99DrpkpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc3/e+Zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc3/e+Zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE946C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787796633;
	bh=fu8WOeoy9wbI70B8srlskHL5HLKVh1agNxXyBYCcbWo=;
	h=To:Subject:From:Date:From;
	b=jc3/e+ZlWrY0b2XISZkYJYQf9gjofXlV4waSN6IZ7CoEmXmiBOTTfbAuj4f1MV0Hu
	 NVd+FCe4A4wZLoFEEM8hQlYV8xva1r7lxOBwRh4Soi+OTmvkPzFOruSoJWC4NFkDn+
	 f3jfyk2o8uU4V9GVeFaETxhL2cLgo52utcAdtMc5JBwJQyqXw+mEOJq2xHzNGql1m3
	 HAViP6F8BvThWfGb/uy1rS9pk4Eo0AIDnHkv9Jq378HeGIwX5onMLF2yPgl4BRaXwR
	 5jFUwlWmj7UYdI5Emr/kec5JuhcGk93EMHoWZEet7Yk5JJopb7pNVcv5NfkZrd8I74
	 mLmWvhE05Uo0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA490C61DBD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178779663368.11993.4409173591154754100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4485ff15ffa1803b98ec321d46b28af4f0d0a6f15ea8c3b22e373766705b377
Date: Thu, 27 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787796633
