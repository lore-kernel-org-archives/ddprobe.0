Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E60C20766E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756774794; cv=none; b=Wj9B7/tIhozqWmMzdfQV1wDOX4ikHc8GWik+INlPCNUYg4Si4OfJooORjj3qXHVuRfmWIDuhAe4sACZeKk7oVJdiDWY/eKBJkglbQ56kAD23nc8xPTOrerEyt1MtVpRhx7+4MMSREK2Buc5CN7R+ysR6n+19BGvKBbVHMPZz4pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756774794; c=relaxed/simple;
	bh=osGJsx0+qSQNoPtOU+9XzBUMhh6UZJKHNYmBob2DVFc=;
	h=To:Subject:From:Message-Id:Date; b=MlNFye+FUi/FUZ56PojjuwylzyaDAq3KYE1+Xm9hf2ohuTImalSOFIdCqkZXmyrftC+CVR3iDCQCQsKeYerledxweToB25lQn/h2o3IL0Pd6GXE7rvy2HF78zgF0hx0Nr3e9Sub5t7CxXSBcMA/3elk8RrVE0h3CarWDBnwi/FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1rimsMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1rimsMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A381CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756774793;
	bh=osGJsx0+qSQNoPtOU+9XzBUMhh6UZJKHNYmBob2DVFc=;
	h=To:Subject:From:Date:From;
	b=s1rimsMOy+uX7GN52XqGThIiZgcJ3OiOZwGY3YSCUiMrEj/ry3BVt7d21uras1C3n
	 Rr+5Rmi8mvpzEX4XsvyajAviACOs0KJJixe0ASiBc99MsRgSg0iCuf9P/5TFBbawP5
	 Mt4A0k8i32Gp+VwxOmtrTaZgfc5mAnJn2FB796yYFhnTVWUm6/PmknSt+bINdtOiOo
	 dqonKiXd1wW+0ZO0+gJjHZKwGJvp20ezWqZJlcPrjVJ32ZdUGjlm/llMT0utRNoF41
	 AjJ120lfY2sjDMXD/giIUktBmVFLJXX7WxFctBNafCHNWsaZrj2BhSFWvqwsIxIqX+
	 6l/3Xutz95N0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD7CA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677479357.2853.6797968086895376031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b1530e2af6d2599dc73a463b478c6145484e1b59f4e559c4e9e8317347e922
Date: Tue, 02 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756774793
