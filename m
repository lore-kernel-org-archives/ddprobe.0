Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F25618CBE1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765931634; cv=none; b=UfJepGuAEEv84ovdGHlNjUxH6D//T3tg4NG9Uno0PCEuLD59xRdviiE4D3xgbJdowONsSBouVzXuneosdemgF5HF0qHN1Hz4co69baBaZjdgCrzBKzH9eRQoLzA7vc7V6cEt8yHSGvU9dyoTpWQ4iAcxxtxk2dPc9mBrCE4FGQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765931634; c=relaxed/simple;
	bh=0oN/mIWF7K0Xu2IjwenkVcVpPEf5Q/4DoCpojTOgRb0=;
	h=To:Subject:From:Message-Id:Date; b=GHJb/EjhcffBKhjS2EC2qYxqnAA/jxLv8OEfn+xEfxxJNQDpArFG9Tit7okVQKFHycpSO5nf6TrYcD5hECHx4luQgvNap5GRIG+XoG0ORdIB0leb37VHUCu9YQBRrC6A+LZjBVuTFrPmWseeXQjVd8ptOXviUZVJLUxLBQG1J0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dV/qVDGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dV/qVDGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2B0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765931633;
	bh=0oN/mIWF7K0Xu2IjwenkVcVpPEf5Q/4DoCpojTOgRb0=;
	h=To:Subject:From:Date:From;
	b=dV/qVDGBUPXS+fz8cPxIG98A9VZbwIoO2Z1nN4rslrJkXhe8u0v/0jahO4+WGRWrf
	 j+uoiUJhEnONEjk3Yk/oAUsYV1CgMItNS09OBXdSjEl69FRhivZ6fIYW17p8c0yO4g
	 OHBcD9Tu5BUYd8eZXmytuj6dET099LJmKYzV0Hltp/8rje9li9bG/cMuqIp3XZFalG
	 o6XoaADEWs7zKW7figDvNW2o7F7rNIIjrIxoHOkBl0bF1EDj1hHHMmgDXjU+AQprGg
	 NFXg5GvJeze8Qoo7hNuqOzc77QJ0QnkJrdBF20sDZkLn7HjSonwj+TNEIQlMnJ8W67
	 jSURDSHLturnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C063D637DF
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176593163360.11172.9715456271820560120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7ad4a87867331818e7e5f85c29aeca4795eed01d2a638a01970215b296d7716
Date: Wed, 17 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765931633
