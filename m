Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3892B42AA6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775159134; cv=none; b=iEKAVJEfjiCHqHzz2ZrzRtM5+5jelBUMXu/mwFOQrhR33oEyVIYqhLqg9DScpsXNW2BUEaiXrKO23oe0NWyzBI2hFS6XzflPuluS6K2PIS2V77quWcB909R5Ls7pBylX+A2DwkKOY9vTxU/fscDu3COYfdgmdGbppfPQslhNNGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775159134; c=relaxed/simple;
	bh=9Sid9zVOp1rPXeyi/gau/mpg+9SXhyELbaokRq3qm/g=;
	h=To:Subject:From:Message-Id:Date; b=q9NUZ3OMMDV27HbACP2OX+KMAx2Qf2uwm0l/+XQfSPEGyEq4WfgXUnZZIS/9pGp8MUviMG7TavkldjysbTGaKfWWin4FCf/9XNjZ+yuCcHrVmHq7cWhqTKXoWK94+syAlocPoBLkQeWvm46aihuZubjdlF4dV8W+jx8aTgrVK90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOsZcyYh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOsZcyYh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE94C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775159133;
	bh=9Sid9zVOp1rPXeyi/gau/mpg+9SXhyELbaokRq3qm/g=;
	h=To:Subject:From:Date:From;
	b=cOsZcyYhhjAzQmdlQHgmvHJEbEKv5hsIYfBTHMrGYMOJlkz8DleY7HCNObBvIFBAx
	 SQ6D8UJg7Os9O/wDvee4ZLtOLfqk+gISFdKk8kV8G4mU1/AJCSXnRV5o8IN5JDM59Q
	 HWf4osV+2PWgUYeViDn+4Ca8Vqa++6CzDLYcO2nON8mgSHw1JCEbT3NbumnzDPc0e2
	 NT8e+JjyFE+Nr0rSPOG2QWNM77wILSdn0GLkWi67zh2ItAgzcQ7uCA18kIYmO6A3MT
	 ml9daHZ/8cfif1i+Dro71yWEOM0FV/H62dAP0rIGXuCOte2lUVre6XBl+MKaep9/Oe
	 8UxfS5NERfydg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D5BD6AAFF
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 19:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177515913368.844.7213376306780608918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06268c72361b32ed1bb26863e54199383cf93820d8ccad0f235008a30f0b44b4
Date: Thu, 02 Apr 2026 19:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775159133
