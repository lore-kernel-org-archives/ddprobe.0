Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F292D5419
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770177234; cv=none; b=jWzJzNdlqj4TxBnDkzks5Zpah+GO0SYNOhMmeWQautJHJrlGntKVFP3Ec3Or8KfKNfNqI/KjN4SUqSWl6A6cNrGTa7+82MrEov+YE6JEKhA4TkKX86pWes+92lrCIgLbltfvSPM8TteTDD8aeWW3SayacD8OmhPWXwvyEIpJILY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770177234; c=relaxed/simple;
	bh=o1G4zTX6F9Z9mk8TskA+zwak5DNN+9KhNXh985JSUto=;
	h=To:Subject:From:Message-Id:Date; b=sku/YmnGX6p6Fq/Z4SPhETWzpZa+o8w1ASj8Tv0RtCOyTTaMusrSXiW90uq+24jQrWe5+U60TQwEV9VOGI+GZiM9QAF3Z5CkpZJsAbOKFGij9bwz0CMqsM0UAOCOVKJq0k/ZxiI1qXdE1MN3HvMCMq0unnoEA1RVOqTQx7LJ6Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg6UN1VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fg6UN1VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8AEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770177233;
	bh=o1G4zTX6F9Z9mk8TskA+zwak5DNN+9KhNXh985JSUto=;
	h=To:Subject:From:Date:From;
	b=fg6UN1VF2wOKfR4CgLUylZ3WofBXHRrslUBluhIBCZH+z1uxt0ZC95kbx8QrpIHzB
	 +xEakbfzS+0okUdbnuMQN3TYBXHsL7mN9hOKKEO73yM+DvxZxJm6+b6f31rtcHKoLI
	 bAAfU9qV6MbtiWfUg0jlLBwG092TZQC9GidvOcPGW+jEttbHU1rhsTOf+AnK5w1qDT
	 ZL1MvKDtTeTTQ4/AUQKz2sm/axL7ygxG31MMoAJ/DcP5b3iftbEz5vNw236PwQwf3w
	 MShngJKyz2wzyXM+UAXY6DM0slK8n0GN9gfgrSDow7MkMdyfQcB01XQBFR31rYTLvc
	 xWADq5ykkWV8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6D5FE8B396
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017723363.28617.895488957069687588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb8dbf1978f28c2d0e9bc91cab4ad1145cd803bad8a15ab5988221541867854d
Date: Wed, 04 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770177233
