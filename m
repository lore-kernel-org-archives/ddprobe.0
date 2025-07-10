Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C511E515
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752107994; cv=none; b=n1PnGYO+OEceXeg8SMIAQA8hAXORkYFAAKPJBk1Ky08Eo8HNrZVUg2ohHox4bxnwVFbaLD1+9SLJ896aKFOpEO9zaeNIVIesMsxiRN8PVjsNQLeZlEfNnm1Ak0ZIOzIs0llX8cYs3cVQ/VeV5q7dgj3t+UPIonfcAMkau2X4Gpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752107994; c=relaxed/simple;
	bh=drlXu8TMRcu6STYcQBPjUcOjMGT4qDigpeH5pmqs6i4=;
	h=To:Subject:From:Message-Id:Date; b=FDb1Hkl9DFy93PUv1J9IlNuipwzFREI87mkSHbvcWiuq4mYD2Vkl9Dr5tTa7XuFUdrmLGEIPJ087DnhuAHB97sXu9NINoPx8136XlbeA1Jf1uvWP7L4T2OldN0KKkp0+Yetomw26ELJE6GvREuiRHgtqDkuIkA1lI0Q/5QTNupc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rDCSngFP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rDCSngFP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B34C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752107993;
	bh=drlXu8TMRcu6STYcQBPjUcOjMGT4qDigpeH5pmqs6i4=;
	h=To:Subject:From:Date:From;
	b=rDCSngFPH+ovJn/6YAEebY6lvRIpf5WYz8wkOBvpNNTYe8tcTfJzuTtLKApJXIdHL
	 N54xD8kZ6tGW3QnkAevd1bL+/wL3Ruvv3BBMwQkXkZt+7TZJo0zVFxIdqdnFMNAsZ4
	 RABoIv3o1+KO2U6hA/2YLY7nq/KUl/sMM7uy7jYPf++c6kVoDBBUI/0CAs9cwBQyJR
	 yfAIHdxGvJ+VkeuJ6eamTGcG3e1k+4yaTNJtaMdy1TpshECTCc3lpJqIVDPzWmi/MW
	 2awAEWC3i9w1lPRSDgBMD1hkrp/3VtWlzu6thztgaTT6q5txVEum+8CO7X/4PDpJj/
	 /YeVM5uJeg8aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92BBAC83F10
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175210799358.5235.18240203857275949487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd5eca49e8d96ad02be38dfdb851605b780b9b4e285a883a3f3eb419a6f67687
Date: Thu, 10 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752107993
