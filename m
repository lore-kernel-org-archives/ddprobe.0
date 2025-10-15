Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2557831A569
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760523594; cv=none; b=dFEL1ItLP+EZp9KVLTp1lJDylEE2p/Pu5ekBI6CI3HC0woi50gxnFMyjy9MYs3zD6HqPawRzlsIgJmGpC65TL+uoHo41iMgPWvG0cA6tHlsxeobkY6y3yNeK7FcVcH085c90YV3Ra7CUeEuU0eYqvA7vuIuKiZo5T5IzB2eU6eI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760523594; c=relaxed/simple;
	bh=dZ9JyUsVDNaBt5F3QK568SQw+a3t1K3ZBikqNmhEW5Y=;
	h=To:Subject:From:Message-Id:Date; b=Q/pIMd67kac3EVxmHOpGWOO59+FWhKgA5cplzITDM+IHYvgXq5UwjSA/o3eEUmf1JBSyDW9VkHw8XJVwty2X21DVCUNvnpS7OvTTCl/Z8wjiwRcxKivfBK62mggMzDy30Ji0C+MrX/0YUqIIOllZmn7uUh1dbcmEVXY/p3SsBNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYNO5Kjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYNO5Kjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A562DC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760523593;
	bh=dZ9JyUsVDNaBt5F3QK568SQw+a3t1K3ZBikqNmhEW5Y=;
	h=To:Subject:From:Date:From;
	b=qYNO5Kjg14HuA/256VqqeOVkTjY9kmBcS7gV+E88Y/kFy79542UFTR/PrzfzzT4Wn
	 //byyshQgKb0SpQn2z0D95oMJaPM3vQZjkeL58yz3NzsElqj1rCnZa5AwIWZ2MRpiq
	 9/4WpmalG91iacqBGM2zbsOIkfq6tsHDji1p/wGuOAwzy532X7Jj22qp2w04pzC2Aj
	 gHiWG4aTnex/u8xH6L8F94hAA8g8stWr2p0Ps9s/jqBGJHvCMvd72fn4wtM1vEZuDY
	 CsN+E/BfMINz+D0p6yXb20FFfm/yC7zWJ5SbMsiK1+UrgkXq2nu6bAZcYfRAXg918Q
	 lZGspLybcn78A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905CACCD193
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176052359358.32746.8768780127700888850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509fd69888bf6082e870aa79e669f984fd76d90fb04e37059c4f67faeabc0290
Date: Wed, 15 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760523593
