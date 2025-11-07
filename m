Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C2526CE2D
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762481393; cv=none; b=D/kkc3lXGU6xmaT8ywxgh2GVl69H5fRrgrWvhxfMDKkt01G6zlaai6m7dVS4aS0jCXz7W/fn8cYAIWP1lcR3YMf+rExCJpx7OELEksgzIO6QHx5TD4N5QECdWXtVSmDZ9PFcK1gMspOVn7W/wYTb9oknlicVtx4UzwhtkC/HCQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762481393; c=relaxed/simple;
	bh=TmRyH+Mosl6bC2vjzWosrmzMZk1zdnOZ5Tpnv9fipS0=;
	h=To:Subject:From:Message-Id:Date; b=si24x1Ha2eTg91Bfkfh2H80HxpVxk0Ym5pt7ZetRg/SG84JdTfyg2jVPmm+3X2DmqeQkbNKu5BDC6ijEZUj+uBx4nUFStEwXSTwRaivC5G3iUXw9NL9Bfg7aUobOiUu5jVDIr2izci2ZrJAwuWepzHsLbChrtLBTm7C6XJhPn+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JGSOvFbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JGSOvFbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84F1C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762481393;
	bh=TmRyH+Mosl6bC2vjzWosrmzMZk1zdnOZ5Tpnv9fipS0=;
	h=To:Subject:From:Date:From;
	b=JGSOvFbMSdh3mcwvS5bJWRMaKBMz3zTOvM5wrQCGCuwFZkEYnMbvTnKMkWsLwv4Yu
	 Mj+taNKV0qLUUHnKhuFu1HZUVLaVGJ6fKHvZ4Z0LFDdkTId2N2AB0dLv3D6Z1iXBct
	 gflT61RQ4FbkMZ2al38NtlZY79KX2fVwVVYkc9uSMHVT+WuSfhWc0cUC6jW52CfOaG
	 A5jp1rOcsV7+ltBmZzSk1ChvH2x+azWjIkyXAxFEl36OHLXKFRFhPb73EUvL/v7Hiw
	 04rtvVCJ/hw8LXsHPpbA4npIk0wUu2qNzw0akonW4vd+Dx0gxvc42J0/9+RU+XQ6ao
	 M5iMnpYuiNV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA8DCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248139362.30315.14815118333947350673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545d2a12b1ddbecce503a34ec320ffd43856e9fa10e11aebc61b597377dca06a
Date: Fri, 07 Nov 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762481393
