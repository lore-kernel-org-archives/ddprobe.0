Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A6F612B73
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 01:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740015535; cv=none; b=GM6x24j2SmpuVQdak3ER+qo2vodu0hr8adSzlntOXIL6xWfdCBvz7y1U/3o3PuwIFGtJ8VEe0/Vjb6SC3vvoJUvOskhjucVREnzxW0sErb4iciAGNC1u3wunDAzCM/4suNbj1lZJ0RuqfEb+8vdnXbPOk368n5lxX2dZGkWHf+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740015535; c=relaxed/simple;
	bh=WZgxQkEL3Mtlp+XoaQfK3G5Ybh/DS/SL6xClnK9KDc8=;
	h=To:Subject:From:Message-Id:Date; b=hEdOCrYyzXSOjXu/2teP/mlvFhzWFpHFCOCMMxLqSQoVe6hWQbmqNDdjUIOO26m+0/okTDWcEhxEMWToO/qvmbi9abAbntMAjkyOLv9S6dM67tyyPkYyiZf2MkePDhe/cQQExQAIJMUxrAV4D0g8Vq7zooUKt4FVuXJZ8mwT/K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdhOB05r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdhOB05r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4274C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 01:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740015533;
	bh=WZgxQkEL3Mtlp+XoaQfK3G5Ybh/DS/SL6xClnK9KDc8=;
	h=To:Subject:From:Date:From;
	b=WdhOB05rgKv4yUg9PQPayHLad+DjT9HIO2W7VxfZ99ekhGqxtqEyNgW806C/JNY14
	 XvykzCQ7CwWfIuiLt2U3y6dthLnb6gsri55r9DMssE7kN7zmYGcOeNl43iEFooXPI6
	 WN/+J/u7CbvHTjULIWXWIvaRX30auS2tl3ZU048RWm78EyeDWZ09n2Cg0Zgt9lPXsd
	 r+LB7FYzw9PH0n6ye2AOyxUxhEyNJ12rGe5Ccw7MbUbNXiHjtLylFG5TVoMa2ybFAj
	 1yrtPWlCwQ28LsxWVHz0VNysGII+gcWN7TQ6oYZ26V9f4BvhaWhmQ+o7KtmQFGd5E9
	 FM2WzfOySo7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4539C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 01:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174001553365.8265.10919249841782685769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38244288ae4fb2201a239d04eaaaad3c413da35abec8e404d4dfdd7d31e80f6
Date: Thu, 20 Feb 2025 01:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740015533
