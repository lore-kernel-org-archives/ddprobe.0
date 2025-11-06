Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EAA2BE03E
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762399194; cv=none; b=RKfJKiZX4r2JSbfb6vg0584mzp2iY/RxUW2kAZEDdRtxblPVrDh8zCq9uScFFv3jpa0FKUbHN88+bNyyziJd7te9ZgGkhix7Ie5BEronO5a0j99N76qoWn3Xg1ikP7KXf9VOXSUEZQPxo1NCMqUZTq5zPge2TTugFRnLOLgjq4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762399194; c=relaxed/simple;
	bh=prnQKIgX4S/G5Jl/BC7iwv3j/uteRhj5BqLQOLbxBNQ=;
	h=To:Subject:From:Message-Id:Date; b=sDDNM9EcrfsGkN6qN3taZhpclcr4tmemVoaXDpGxfDnHoazkoOaB/PRRzTmjYyomsH3IJjYxDZWkb7cY5avuh1P/SPkpUM3oVcVWlBnjSdrup35WjM+80gqCQZN+lrxKetpsoTRUvtNtktgK1hAru+/rAicp7RX4NGF2OTKugE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBFvvRnP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBFvvRnP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1423C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762399193;
	bh=prnQKIgX4S/G5Jl/BC7iwv3j/uteRhj5BqLQOLbxBNQ=;
	h=To:Subject:From:Date:From;
	b=qBFvvRnP5xK1UHg3o47X5oTe/Lv35d3ev6cv0K+VQropQTLjSA7O8vXlgGlXmY7GG
	 xI4E7JtU3urd6YYSSYiXZKp2V35uPv+hlqcDRuc7ZwMCjA/kHaxViAlua7wsM/mYvj
	 kfZL+qBUk4TQU1c2YCZYOsgQ6OuInLFF2i0WWk8ZaYxxVQLRKPt9HL8X6p6iz2jutU
	 cY9hhPnutapNSWUqpt0PJZ86NoiQSELv1yljPDE2QuzpVwv529B52pICyrbhgZ0CW0
	 8FszH/t5T0wq/bfy3XvqLqyHW/s4y94uN2mAGE92wluj5pjtr5Dk3GV0gtWOBk0BOO
	 Je77H9zWk/XQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D1FCCFA0D
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176239919360.24433.15933553022155880955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fddb8016d9445f46b576dc027da2916ab1e430336ae6aed126fc347b72aea8f6
Date: Thu, 06 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762399193
