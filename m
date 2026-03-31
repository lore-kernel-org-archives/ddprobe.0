Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59139A7F6
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775000694; cv=none; b=h+RSk2rfa9/K1WENnNb2MzbJKfIevq/VSQ/+H7Km/zBLcZelfKa9MYqifhkEbr9AWSEVrXlb14miEbIadhFZVK8DQ8lG9kVaAWinYf1lYyfbR5N1fLDh6wtG4bqlbYDtV6XzO5nPaeiwJPcJuMDXQ8avMTFoQPMNL4o8c8tbT3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775000694; c=relaxed/simple;
	bh=ha0049yuxad6uCsNNkljjZvF7plyx9VlSz9RKPOqU/c=;
	h=To:Subject:From:Message-Id:Date; b=UhE1au7Zv6juJG6SmnFgMtXDvyoe+8XUvCeTp/twZlGmiph7s8M+Fg7tVeOZCCVgtzwmPmybgiLKdEY49CMLfoMt29aE5C7VAjDjHeI835jIDVID2W32roYPFARVOxodqu/nC0gT6c9S7ZW2fcCZHziINNN0Z78lEEpRWR77ZLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQIjuSTc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQIjuSTc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B42A4C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775000693;
	bh=ha0049yuxad6uCsNNkljjZvF7plyx9VlSz9RKPOqU/c=;
	h=To:Subject:From:Date:From;
	b=iQIjuSTcILDXYJ5+a1WX8ph7H/7IGrrEQqAWpmG/WftMAYDU3APhFBOGcCEi8kUd9
	 4CAmeWNyG2AAfqezL+/0rBRE6DvI9AjbjocEKg9FxoTGzMyCo78M/f0j9WU23tIhTM
	 RczhJQ5W76wNeP5E5R7yVssT8swUnJWL+8sK340JfG0z6RyVt32L81ulAYWqX1nsT0
	 xv8YT/nc0LHtPXfAAptahYQjib36a+xPWIY9yYOLw7kj1SeWU/jij0ruYzxVlFgpi6
	 cQ/WZbE+AMHVxBGIG4aYfn/8hE4MHO2NlJhqzh4z1KpyVXzeslzJit9a1nuGJMgNCv
	 bHO3p2pF6TaRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D48010F9307
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177500069360.19961.9057099552627079926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c8efabc9bded6f12bafa40cf0fa9b236864037811ce90d3955c78081b47038
Date: Tue, 31 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775000693
