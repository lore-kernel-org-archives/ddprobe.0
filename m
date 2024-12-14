Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277C419BA6
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734156954; cv=none; b=R5ptB4z4vphusXdt3DPxMMe1A5njJFXrwWntCLizSw/FHOwjplqaZLdnjkWBUUo29fh9LnZZ4RQFi3G5OWDnitLSznuQCnpGXVK2/gRndumAeu5IUb8PQqyNjeckkkPxnFRfsFrumgC9ijTDeQcHHV+w4l9vhzvxukdVgbKozIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734156954; c=relaxed/simple;
	bh=uNvF/4wgQYlvkVOwHXJjDO86hNvJADKEWN/k4KRk4nE=;
	h=To:Subject:From:Message-Id:Date; b=uZleUMoXyHXKTdqWriql7Jv1WptaMerf6ITzvD/nM2HvDjCBMfsfCCUcfjd7jtm5TfV9olFhr9rclQ3ydxbAE+fGYnGJW3C18+e/YqXo19r6VSQx9DJJqUX4QhBRaYLjcrG76mSsAZb6ExeCUlR2aoAH8KncNaeskGYnmFPQJNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2hGmo46; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2hGmo46"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A709EC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734156953;
	bh=uNvF/4wgQYlvkVOwHXJjDO86hNvJADKEWN/k4KRk4nE=;
	h=To:Subject:From:Date:From;
	b=L2hGmo46tP7YvAoxiKVBFjomhrcK+DrhM9kgCi3KiPA+8w4LVRoviTv3jYY1xEkEK
	 5bl5G0TbCpeVC0aRKP3j3jysL7zJg9KmphUTwViS+LFcNSow7wwTTcut3lpk9ci7rM
	 2AQQTOCmO66Qq4lkZQQ0lW7zg3wyV37sKQwh4zWsAYqz4KR7XMzbt7bIeeTwS9I/dF
	 rSpL8Q8LEeknQRlqugeOvn03/xlH+76GWy5PGojBge5tGgQjDPkHvicX9PTZPp+Oe1
	 FP7E45MlISzJLC2j90Ye60X9lfudO4vCWOh74VL0tSmVCKjSCQAkTU+7QKrnU574uY
	 VjMGmODUgqwZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BDEE7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173415695358.28746.6625313266211535632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c517fcf5d56cab9b183803a54f25c584fd2ff3ca4bb11dbd17e1ef22c2f0bea
Date: Sat, 14 Dec 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734156953
