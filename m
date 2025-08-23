Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FE8313B58D
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755932994; cv=none; b=czdHXLfejkEeUXwovJWl1ZKL4K+aYdh7ph4fbWA8m3Si8hKm00WR8jIaiSa4fc8DYR4E651BtH+RAfD/5uUuti7+S8sXkf8f/3vl6xOuyjQ2vPLHohyQ7gY5V+rlNxem9WBQnNyb9Mxbuj9w7YZNza3TGa6OPxsWO4w3aNy/FTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755932994; c=relaxed/simple;
	bh=13z1oRgoXZRULvrFCL9Bhdql9EwW9qQdXlQJCtmYRgI=;
	h=To:Subject:From:Message-Id:Date; b=TbpwGY57RnQTrDP17471aWDXHo5MJqd1a9fRpKfq8Rbj6p9udg+CBx6QrV7zTziIMU+dFoAcBhjjFO1Abec0zRgSReXhftRc8Ia7rlqSOApeuNdHll1eK9oCIl9SCLOeRaqfwPWZ3iHobpo46DAtTqW6ChQRF9IjUfoL9v/FdFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rbqf/10T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rbqf/10T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2339C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755932993;
	bh=13z1oRgoXZRULvrFCL9Bhdql9EwW9qQdXlQJCtmYRgI=;
	h=To:Subject:From:Date:From;
	b=Rbqf/10T1Vt2l8sEgC6ZpoN8a+rMrJyfLygxC6FJnDmX7KETb3AQPvXse0ebZEHUN
	 uP6f9BpdG0xpqeHiKeIJVxTuRDvbY+UsR3km42hbWY0DS6eL+ODmP1ZCcW3cdEa90r
	 +RwO9H9+iGuz6+yzi1RAHH4cFNL2HY0Onhw9BgI5J/fUnjZ1ZWDqcJp5QOyHO5Izco
	 hGk4Z7dCUhD60iTTsm3nTNq+AkStrbePCXM1IpjEHraB21jKjizZmjc2iBRvrWzfdW
	 oq73AFuWypZI3/dASP309BezWxO00ExzuaRCcoZScVfKO1FH2IKdGX7TxQrsjYKFeH
	 LWfbJvO4ChLyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91207CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593299357.21139.1466506336704006443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4df96b2f62abb54cdce7bcd71d2203cb16a27ea2aa990e24ddd6b139c9de9f3
Date: Sat, 23 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755932993
