Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03A71E25F2
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750501793; cv=none; b=XA++XWFsLppiEPruo0kxgG5LkP2gx9l77WiyS+DHlRMcxoyuAFOCHpWce4wdLxPWcwHQtTnzmrGZof3UKvyE4IU2FyaeNJA+zke29TNOqu+GT5BBrwLaeeJEYFqkOM/9YvMtMGq4YndjXAZ2qJyVaD6badV/ngNoVQBz1GVV08M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750501793; c=relaxed/simple;
	bh=pmECPrzFbqB4WtrO8C9qf+TQaFRBp9h77XNc8lXjeS0=;
	h=To:Subject:From:Message-Id:Date; b=Nlbu0kZjRJYJdglGMmLlmDF9CENAnraRsLR8OCyVNvpzTY2ikVA6SyYI+qD3V9UxtMXQr2AzEJFsbiqQMRJq40UeGzc3uw5BPidApWDcR+7rkGp5eqpO7GJDPhYEWF+/rs2p+d4FYcxH8GEQ1PsCbUGOhgR0+jEbPADorNTUOGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djNrQTfs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djNrQTfs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B66C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750501793;
	bh=pmECPrzFbqB4WtrO8C9qf+TQaFRBp9h77XNc8lXjeS0=;
	h=To:Subject:From:Date:From;
	b=djNrQTfsowl0ZkUBGcUwM7bvtrZAxsx4nJ0sQWgqPkoojL1RbUqbIZ9EZHmjIapy5
	 lW0IhCxQADfJ9eUfkRmdxCMAIWYftQQWhXBclvGB8v/2JoytqOu1sTnt5zoo+c7vb6
	 07Me9dxHlWJMBG+JXt+5fCliDQV/sxNeWxTyqI4PpNJFyHLyf3BpTfzetxj4/6sRhh
	 dJkYDaBEXR4Vzfzb0lmhPGyYTo4KPsUr6nMIGNkdHjTM6DyQPAzTjd/X+AEtjFXYc7
	 sm9AXFHLw//wQWet3ofeVn3XDW/7KcsfqIU6jXDp5Nw9k8oQplFfkViq67kEEOw32e
	 FOovEIHYhv+4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9418AC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175050179357.15263.11673737963391228064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc1b56cd56c0fdd29430a5fd20f82c2023a483595aa4204d63dcbbc38be885a
Date: Sat, 21 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750501793
