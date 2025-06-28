Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1693521ABDD
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751111994; cv=none; b=GEq/CleLoqG8UFVLYLqJpKm1egEzvM4Eg6qbn/k4sezcMNXaO7Wx80egEwP6oEXjtaxz21r9wu5h+61C7drjME7NNxbXEKXm4ZQWOCBXPCPZVi+hy/d9c3wU1vT6mF0UKNc0O6EEh8IV56xfgMsfXvCax39rqhngHIb3O4senJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751111994; c=relaxed/simple;
	bh=Kv5DScgdbkeQKfUVisflB186gp+dRuY7DJHDyg2MSbc=;
	h=To:Subject:From:Message-Id:Date; b=BxWF37GcNCfq2jD6oLoQEC4FNevHfOc+K81VHy4pLRpHwukMgdkPtAXWKU+Idu1DHCcvonm5TmaEuj9Mo3eSRe4kB/gJMnnHZm7nY0TqAcFJhOs1uOB65XYfbbvG4mGMIk89sK+rYdhrFdDFbG+o8aGCOUnAfjLGmOzh5IYbpjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rw9jhe2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rw9jhe2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2201C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751111993;
	bh=Kv5DScgdbkeQKfUVisflB186gp+dRuY7DJHDyg2MSbc=;
	h=To:Subject:From:Date:From;
	b=Rw9jhe2kveN3ILCYVpwY8DjZITm1uYtoVMWFEvnC7DYZ9kjNmET/ieaqYiUAZi2CJ
	 S7eF8R6V5nEOtFW6QVvJCAI+m//+X2rpTduBuUPN1z6ZQ8CgSUR+Jg7fLFcEHMrp1M
	 HrkeaMaYdpSD4ctrFphtrNBqbnPZYqm9KfrMG//0+k8SddcMIFkwQts7FgefWcFITZ
	 oZtWv7nu6BYkOJNBCJ5Mkw4FKUbRGMi6s9lVY8FJ9+k+wYf4kHrVqQE9kk7RaBQIKx
	 VehKqhjN2/PVudxrlDajysI1AZ9N6w582/FObZ0yelECwHqMTHIznUbDTCAtcNdsaK
	 w0+m/VpeneYJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F704C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175111199357.20343.2277831748042271812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577de83de75ae2fff795d4ff911a47ca4feb4b5c9967062a3f1b1b1f5dfba4c3
Date: Sat, 28 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751111993
