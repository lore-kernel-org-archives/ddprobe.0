Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A77653E11
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 22:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706048297; cv=none; b=t4zQxNju/DvB3IwuBm2bm1V+qQuU5Rme57Zp4rp45NU4uOytVPXR5nUkbUCbL672vu8bSo7ZLfsdaSMUsAE9lxvHQwZDjUyrQw77945MapXxzuJ75lR3dZbKUWpZGoDSw0QOm+msecvMWCp7G+mll5mB6klreSaKHmnMjPrQdsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706048297; c=relaxed/simple;
	bh=70iMWKRoh6g9hV6KMWxWYTWttKdEcxQ3WT15ReOVSog=;
	h=To:Subject:From:Message-Id:Date; b=LitVt+lrmNwtvCLw48ekHQ2DxJQtQRWxf5rgtKqZS9kMJqf9Xu3fVqXMl/ixxPfsw0CWbCvwjRWyrlmn7i42kV1s/0iqiOB4t3Kw5tLYmHhi2XmUpgSr8iamwrXFGGClx11el+jCL2sAyIvijC6ta3uiOBY6qdXjvczzbVGsr0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNxBMPTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNxBMPTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7557EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 22:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706048296;
	bh=70iMWKRoh6g9hV6KMWxWYTWttKdEcxQ3WT15ReOVSog=;
	h=To:Subject:From:Date:From;
	b=fNxBMPTCiiyflfLyVyTtys4lYltiFcxvohYruH3sADAYsndP4FGtwHS50GAmyCxTr
	 X+9ohdRPTZK5EVw0gB5qaDKRePBDd5EUHhb4dVBsxSK5jvhuBYUl1VcLbhn7rQmIGU
	 YpqKSiFvlO+WJbX020qldOEeo9I7rBTGvoybb+5EEiN/pN99ITmcrS10zflqIrvZ2s
	 ST6isyHXtOF2qAoJNwbzf6wI4HjE0DxJ0usGPMDM/ynw0xFpLsyK466+EmEMGiGpQU
	 pSx5Sk8GS8I3EJREjkHJ9RMpKbJxZq+kITeXMWxXsTlgxjfAU2X4sUrLdcQu257CQV
	 +QabGNmzVghPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BF7EC47258
	for <ddprobe@lists.linux.dev>; Tue, 23 Jan 2024 22:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170604829636.15970.11040324315241247507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f5ca52bd5a1f856639caf890298b3630bbba0da5a4987f5fd5b7ad31fae814
Date: Tue, 23 Jan 2024 22:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706048296
