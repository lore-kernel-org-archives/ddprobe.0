Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432BE3C2F
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749093594; cv=none; b=LM9aANNj1Eo2M9B2GHBHDtvi97TIuVjiqpBYM9YTh+/nJevqt5oMYc21Ce8oWpSbYDqayodNj7gAOIrCl16i8RZdETAHgZz7TcAmriWnALFMPZqFm3E236QkZymS73EuO3xUQO0l9++URXZSxjtICvEIpgibI1fsdJagGvdwhP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749093594; c=relaxed/simple;
	bh=snkYcQlei+sajrJMdfqCCdRH0HvhLyfgKDOD7Klca0Q=;
	h=To:Subject:From:Message-Id:Date; b=ZbjHBxelmuW+9uI4+XRJ7zeLegfv37HUtgddwJ2igBFZ/GywthGalrG1Q8qY0yXu5JEp/nbQMQo474NhebMbjUPyf5gVbrDeHDCbh6vWN63Oxfp8E7R+08CSYk41Yi7IabEnmZvGc3kci/cBxK6BfNZZOybHN+R1bd6r4o03n80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYqcyrXe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYqcyrXe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEBAC4CEE4
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749093593;
	bh=snkYcQlei+sajrJMdfqCCdRH0HvhLyfgKDOD7Klca0Q=;
	h=To:Subject:From:Date:From;
	b=oYqcyrXet/wboUZ39xREqaJZpk/kb7QJ0M2d6uVMNRZqHyIxgq+2FJzD8/1HsDC4m
	 etWMfotEPKt0TxfJgw3z+NQqdYliZvQu72Vrr9uTc/UIUMj6acGzWJePWGcD1ToaC/
	 WGapOZbrVLqoSz8SnBjDCSO8ql+YELw30s9ZyZo4GV20KZnEJXJqc7645hR4buVNaW
	 bCuo3p0TPWdZFUddWLJ3uv+ZVZRrpM/XjbRSj/Ih0UxtmsGOV9bg5bGK31XaPxrF0P
	 1DdvpBdhSUJZe4erNIBsxJAekEXtZ+pbbXrLk2ISmWhhGkcl/+sr6YtWjVPXf5e508
	 80TTbyd03V+jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9D8C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174909359357.12776.13300071925541888039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9200e5ccaf9672091d0e126d307bc05a50460a3226fa335b2f5e16f479689b4c
Date: Thu, 05 Jun 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749093593
