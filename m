Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C697757FC
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720287383; cv=none; b=RfWpMQNiM4jhoVqB4JOazJJqlCXrV0UVYiWH9CRvjfnjvrmrRb7LIeJYPRFEN7UVn+wCCrVMVhP1CC7LBIlBUebvUMI9hu/AqDDj04412XC7kdG267B7VmmK4PK3UnjidY0PtqbwBT+xbajpantZzzaNP5NZW2bI0kExOTjJEjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720287383; c=relaxed/simple;
	bh=s2a1G74oETAeKlTmIOnZLBAAYdecFyKCAhiPzmds05w=;
	h=To:Subject:From:Message-Id:Date; b=aPV5FPnTPe+VvwZw7zgesx4Rf/6vkXdyboGbRpW6ZdDWgLdstchIIpe05mI5VXBQyaHp6FY4nJdqIkNzYBajU1m8fHyKd4+pvCXd+VMSgjlVa7qp5lcQ9Gpc5JyiAHxY75vk3/yZrc+wRV6O/4JlR0JmJB7NYS57tz0VInUmH0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ND5JVxXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ND5JVxXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC7BC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720287382;
	bh=s2a1G74oETAeKlTmIOnZLBAAYdecFyKCAhiPzmds05w=;
	h=To:Subject:From:Date:From;
	b=ND5JVxXK9YQIB0WjtEV9fHl5wS+sqdpnYFbVE8LpXO9d/yp9ahPQ9ukt37q0ZTde5
	 LA9zASnQgT6UKbV4SvsXbWaOJdtxnPmpXyYt07wIo5f0s8YAjt+GhdDgVSjTNtXyhh
	 OV08WbPd3erGVEm8TPbZdnsJOX8N+86IrGdoJhf3vGfRcHwuFP0IiKQJA6zfusdbj7
	 DCtKkj+58shOMatrfWQWOLjsSPMWljFW7nxoigIqljb/rRscHzgrwwIwhDT5m2dWyw
	 BQeybvlw2+1/v98JW+mvG66jChgj5E0upJhuldg3806AFiz7X5SU67NOPo1avwsBot
	 556Il3yC3wFog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C313EC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 17:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172028738276.5313.7177349247465830939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab2a12aceb6e5f806a925d714e0ea3aeedbeeb16a2342adce1f91c91806cf1e8
Date: Sat, 06 Jul 2024 17:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720287382
