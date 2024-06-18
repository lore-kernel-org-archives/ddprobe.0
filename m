Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63122225D7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718706563; cv=none; b=nhFEDG3+eWlrfdbKeBNGrRFr3ywqBsehl7FxcETujTINkLy8wxzsLZw1P/zBxjawh5kp9CRJbpp+TN+Z9KxCmKjP7pp/j5wV7DPXYqZyk8mMcqrEwIM7CJv+L2zFYT07cUzMCSgAAPKlRF9iEpHV6r9gWtvKN4TGeZ757cFNn9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718706563; c=relaxed/simple;
	bh=YOTwhduPTsHmVsDriK38/wPb6mTvaxfRbVv4gX3wzr0=;
	h=To:Subject:From:Message-Id:Date; b=KN3Nr4TjvVZaWlEfkMf/v2BGNUp9gdG3C52/qNiSC4daQ2dLy9MGb/OVrJtlU1L1aB1qMM9/o0CcB7qELzSvrzY7sxxM6eya3zur8x1NuMygMfXMwJ+Bn2t06EcFQH6G6w/7IEXpYz68rLK+XYQpR9hSao0FUVA8nSJNFxIYRmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBYAPPsr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBYAPPsr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7A85C4AF48
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718706562;
	bh=YOTwhduPTsHmVsDriK38/wPb6mTvaxfRbVv4gX3wzr0=;
	h=To:Subject:From:Date:From;
	b=gBYAPPsrKn4ismPbAiDYRpNspNJONdy2UkwK+uYI1yOWjZoVu1xmEE7mcK+/RQq6b
	 9gIXLUb5SiLmbJS/XGsvJMxvSxSwt3iZENNQA0G/5ElzSmsa97QFYSQv5+hKFn5npu
	 vCoBQ9eYC5rO0bGVQ9MGU9QI6Rb87+lRg9xUx7Uxli/jLbXnYlzhSDvivY+HvAzXT5
	 gAOBDzLiQZv6vIH51Alaw3CG3vGSiTqVOZwf6PJ9v1UspDtp/+WmZyAOfwkQabSmlN
	 1J4UrKT47Uyg30k62Hi7rvD+sMfs94GRP7jvmP94TzZrVGz+bHcZAv0CjBQ91yrb3B
	 W8dsF48v5Hz7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24E1C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 10:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870656276.21304.7338721964914660082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5320380b235eb7819e701e17bd6672a79d7e7c4a36a79b699e22d6b7789e0fb7
Date: Tue, 18 Jun 2024 10:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718706562
