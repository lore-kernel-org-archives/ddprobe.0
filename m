Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC47326958
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767792234; cv=none; b=OK8YypXwqzMII0BsOpmURVSDKt4UEE3YEGY5jD9j5mipn962VW4uQNPVY8zszeHxmBQIzbIfKozQa3WkS4S3W61CxD5Lm4+MAQmw3EH41HQc/tbAC7RoeMtR73QcxorZeVkY3ckntqV7fNgu6c+FH3ltqlsV1mzo67V7QKqu6EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767792234; c=relaxed/simple;
	bh=7lSv3xp1QugYuK98BGh4vmJboSKflRureYtC/YPkAVM=;
	h=To:Subject:From:Message-Id:Date; b=iRjiWL9AhTMnB+I3SM5GmWVwhTZ4yAPvRacrG+zvEYOxorHJ2V+YCn2GAJsGGW0g8aB/WimZSzYAEfFHJxYGUq+3YeeJcXDN3ZhgCr/cSRpxzEL/40/RCCYW/i9ydd8ua0lJJdWjTY+010HJ2H7LdEakirKmdcOP0InVDcYHeNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PW8zFhZC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PW8zFhZC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF9EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767792233;
	bh=7lSv3xp1QugYuK98BGh4vmJboSKflRureYtC/YPkAVM=;
	h=To:Subject:From:Date:From;
	b=PW8zFhZCym24svWhxHw0zfJ/MVkkjN3NyXxMlMdH5ckPnO4B5zGp/OHHabL0tn0VZ
	 57FDiCtPU5QKsCDH8eNF7pIr7IbGSCZ6zLeyM34qkNSnhJGNGUBmWzS+W52G7nDJza
	 Qw9Al5o+Okzk778hxgtQjRvNUW3qtvTgZyGq9mditaIVBbqkvu5zQtB/5RkMuKBNMK
	 JK9Fo0pCLs4xMBqbmfYUQY6ipQXrXWqnWO6leLKH6jfMapKYBjWQsPyEXc7WRpXoCk
	 92/RaxIKoAUo1S3RvWqbCuWBCTEVHDUTE5hx5QSAvBCXKUCq0ADntR/7Dk3/mgwjez
	 +/euquMLsxShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F554CFD62A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779223357.26763.17018539922026986914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 106d28bba6edfe3ee5a463ae27558735b3f2d3d83e3e10e81bac05703d8e7003
Date: Wed, 07 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767792233
