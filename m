Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C03C28D82F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769567634; cv=none; b=dMNynxCRlA63koRkWmrZYbrh0hsTn8Kp8GZUaUWLQqm2bf7P8OwFign1fSNquYfQEnrK6mO+NYrMY5is9kYZ4Tvc0euKPiaFBV4Tzd9pT0hn+NbxnkRrXP7Lx6WlRl1hYBfN2PvANyaykrwzZ4WIHq+aacv+VaecpzwT9FM43xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769567634; c=relaxed/simple;
	bh=Ao8aI2QICBkqnzRhak+Kvlc7JTZ3mxgRetAkdmFGXSI=;
	h=To:Subject:From:Message-Id:Date; b=Lzf09etO5RO2eoB9/942X4GHtNPNtyrpTHn7WJMuc4/+iqBYXJTUCy4FiYb76S72jNgB/W7pUDLWGSMLMtCVqugQRMy0II22L8+1Py2GTJdd4IzL+hGW3IIxYusZg1EwM8LUaCs5GQHvBEyeXe6U87K3yFzsdaC2uLsvKVbszBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/LezEqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/LezEqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ABFC116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769567633;
	bh=Ao8aI2QICBkqnzRhak+Kvlc7JTZ3mxgRetAkdmFGXSI=;
	h=To:Subject:From:Date:From;
	b=C/LezEqQbKYFcUHx7ukf6QRzAhTYtMHoGbBSQAFzeQusdcB4yS+10ZLwPPWcv/yN9
	 e45YKoRNZPbb4n+vzKeRp1CfdjGNrmY8iEWrJtjXVtC3VjJvX3OyK35YHlmCYFNaIW
	 6HmdMF0B1tZh6VPT4IyU7oXCMCvL4UXjmCn55AZ6AIe+gGn8kDbEH5sPHnIMnjuV3d
	 rKtcKKa5TUdL1aw2WHgvxWikryy8r3Qb5MakASHraiJ47pAVlFCGUe0+xSPvN0F6YZ
	 7yZrB5efWuzL1R3pfCQm5HUqsfHlpK3RlKCrc2VnYB1tukoMADDFsR5SNZ339A51Dc
	 GP4Gg+mHXEjmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A50D35666
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956763359.2423.9306637896135522349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5e7d0984802e751ab9cfc2ba493b1ab540a713ee030f9c536aed161d0e814df
Date: Wed, 28 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769567633
