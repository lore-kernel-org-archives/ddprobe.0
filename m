Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19781632
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729379754; cv=none; b=PL/W9P+Gf1QEK+FaZoVpuhH1p/7PHKUWxQAt1sjy/VRRnBgKm7cgmpD4YlsOzz92/qHsfW2EssH6xoYVbC4X5Pv//udg+bljJpCRDlKqavB4phgJxXwoh2QCqdPu9VW4Xt7Ji0AfeWahI81DRCukD48bEIWIDkS7yTbBYArb0Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729379754; c=relaxed/simple;
	bh=R7HKSZGfIh5BvSkycgFfaUZpK/kk1PSdMdHj9U29XpQ=;
	h=To:Subject:From:Message-Id:Date; b=lu5GICSOl/a+WSsk7RTShQ0ae15wqEFz+FkpqEEQFvT90uQqvZXeOfSxr6Tjxcn8+3lYYNTHTNz5JcwPYVtCKQxWE1eOsALQzxWtBxChudgxquysoSmReqD6MJZ7Xr2gsF08u8am/gi9rgd8Sa2Xbeii4Lkh+ZuS+nMf5c87X7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGs3dYB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGs3dYB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD9FC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729379753;
	bh=R7HKSZGfIh5BvSkycgFfaUZpK/kk1PSdMdHj9U29XpQ=;
	h=To:Subject:From:Date:From;
	b=QGs3dYB1UWJRhfLltwUU8OoMH325zFH3u9qmLe/OcoPKZvpbaZ6nJ0mRIEJ6RXruI
	 deHZV3xNWP6gkVDo2glnelxbDhvr8geGeBTKPbNfagtyihNgZlrkw7eb7l4VK4UtqK
	 2d/8xie/5EBR8C32eeIVepdUdAYxmFy2jBOh493t9lZgA7M7kfHkuuBeDmV9yg9xDq
	 AOuV+Qe3EXIGY3AmDcFHBNXq5+tCUjRbD+VGdQOJRbYvNHxkAQ+A0f5GiZ8G5h8KCz
	 kVqP0eQ0Cw/2nPPaFcNl/ds4iNxVq3DD4CGgRrAAR6vi5AqG96fMMnFDv7qDQBKRRF
	 ktDlO9mBhxrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97017D3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172937975358.21655.4258811056239749845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907cffd7dc14ceacf4141380176bac156a94eef007bbc2e3faddc9231e0fe21c
Date: Sat, 19 Oct 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729379753
