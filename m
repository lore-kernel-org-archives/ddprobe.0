Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C842E62A3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743928794; cv=none; b=XrtBjBxtdMQe4yG0LeK0fnvA+TFGsBdJkj5ibFAJ8ik5gbT6xTSds/COST5EKQOaGxnguZKWT2sdPa5hujKX1kd1jV5CFCekG812SZi75F6ICJ3AIj93cGZOyymJa+iENYKXvcegm91L36JA6/RuI9CYZlUjcOPsV8KAFmNOV2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743928794; c=relaxed/simple;
	bh=l2+ePVqLx1xPONf4sgCYmOL/0m4Mz11A8mmpVkZLSEQ=;
	h=To:Subject:From:Message-Id:Date; b=h4hdtypifNpofrONri47eBWq2PwKjSXuZCNTg94fy+X6XHM7xyp7MotjBn0g4DF0PsTvOYAYxqgFuMDTjvx5/pisxIir4Rg5RMNrBTDSVYUNCelyolQtwjG/s/5UPsoAayCncHHYsQN+Py394XvVwHQmk4yuVeJyozXcL7PeAFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o58hA1DW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o58hA1DW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75C3C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743928793;
	bh=l2+ePVqLx1xPONf4sgCYmOL/0m4Mz11A8mmpVkZLSEQ=;
	h=To:Subject:From:Date:From;
	b=o58hA1DWmlMsP9sgmM5FOcoXxctDJSm0xkCwigkYEH3tk9KQnVimWDjcW5vxQaKro
	 VBb2jSXOqQ6KEaQRschKKWdLPAS+3G1OgRMucNrgP89czuA7SAKJ7eJB6aIpN9IwK3
	 z6vYd2FOJlwxq1oJs+c33oYO7u4Pl3bRJFH7uZzbClwwfkq9Crke990ETlIAwmNqKi
	 pnwzgQSGwagMz98MPnDmNssDNzV6XlPPGYzrm9Zz3uGnPuiliSNMzunbDBTW6DY2mx
	 HawwjUhW2LXx8ElVybOYHxEUD6ZMtz/hLsNiHgIwGcNHchqdhjvpjWEOMpLtloTZI/
	 uqLEi9wIf1CpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94903C3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392879358.26618.11567667011398318439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc993acbe213589abebc0fd445c5bdf80bf05f08abd33e3569c7d529515c036c
Date: Sun, 06 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743928793
