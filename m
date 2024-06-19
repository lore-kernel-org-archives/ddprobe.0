Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74D0215572F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718821163; cv=none; b=F8dRDCjbbSMYu0lNNnGqBuuf0vCl++o8qSkQ0CrekAWY1BlV8Fg1A/Pr3ltC/BbA1vUzDJrYHXwi98IWooWAv8/Wbx6TZ+p8f7ZojhjLnd415Mg/qctR6RP6xI9oDARjXPVGiSvePF8d6W5rmGJDRxcq9bvGt3m5cC6kZ4Ll7OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718821163; c=relaxed/simple;
	bh=eHryjY3h/SB1NBUCI4OHgUC+XkzzeGHNC+dheoqmWWo=;
	h=To:Subject:From:Message-Id:Date; b=VfLlHlnFVwUj3HNCI21Xs/tbAv3obsDrwkzjNxoygqyU7Zsnok/E9zRqyYni5GrjxMOFanSBDXv8ZnqQft0h9CFhnT6Zx4b5OOKJAYJCrZzC+1fOi3vShKKw1ehNYI+EYOVfHbmwUaJmbc8ZSDnX+ut+YLKsg6vLIsLK8HNr/pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PgsaBoOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PgsaBoOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEDFAC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718821162;
	bh=eHryjY3h/SB1NBUCI4OHgUC+XkzzeGHNC+dheoqmWWo=;
	h=To:Subject:From:Date:From;
	b=PgsaBoOXpVPbIAmb/laGRtRG8cbeDcEb8/BqkhnFVRJfw148Ui52nV6luRAPImExC
	 G8ti22s9Tx94Z62oSCEgkRiyf2mCSuwZ/hkwfw69qSTvqmZCQOIEPVWc5ikii0/H/M
	 mPmkSNc36rCmp43kzWUamSQD/YFtzM3YAv6kDSJUdLuv0d709SSk4nzOjG6JjEAGJr
	 /7Q0K+qPciwBRbYNmeMSwg6ur8bbOqA7By6RoPP7HHIOeCZSUfFOqPxDPwpYCyyl/w
	 hngw1BolIZ/12h2VcPncdkWxdxbmL6oxxDvJOm4AAPJ7r9peOzc7k/qtR3mI3Zg+i3
	 XnyZ5G/A0YgrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2F0C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 18:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171882116277.343.16574354591661072450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c74b6926ca61ed924b20301f19fd5e6c8f275eb3906cefb2cb7c96f2183d7b
Date: Wed, 19 Jun 2024 18:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718821162
