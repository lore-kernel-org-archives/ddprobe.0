Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC951FC8
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766480034; cv=none; b=HbOAtVI3DP24oS5DQ3uw+Ygmz58swpPZ8afQLKalmsyyOfxO+zv11nTfK6Khf6iS9XAxS5HyMIKE3+mggdxmdHnVl0XujkNrxHJqZ6992vtKQoTai66ZT/MoG6r6ntimW5MuGrk5oGFxNtbqoGaCOH4U3fRsADs6djX1Vcxxu3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766480034; c=relaxed/simple;
	bh=NWQBxwh3FY1/otkzVFJPOCLqySyN0j5rQA8T/gKZVWE=;
	h=To:Subject:From:Message-Id:Date; b=cweGn9n/YhZHPIs8QOJr/lmyhtZIlLBo4OqKLYqQlCgblzfNCSuHhHEj4eXrOvcwtlb9Js45Si0oEAMG85k7xllGLdJqfb1JSHlM/2dhKSaqQthzxqeQ7PpS52F16c/8tjoH1Q54oACP3B9fEg79g9866w9+wnug1dz9jLSejJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HK5hqpnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HK5hqpnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CC2C113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766480033;
	bh=NWQBxwh3FY1/otkzVFJPOCLqySyN0j5rQA8T/gKZVWE=;
	h=To:Subject:From:Date:From;
	b=HK5hqpnTwOFKCcxC0kd4QgJ8qTQh8oTFgqS5aVn0GEjUmOgafR9QgsS+/xNcVrWz3
	 SJVYbTNmIBPaG6v65APzIRRHcFa1X51j4ydOtE4Y/3SSDFjPQUfvgjm7gUkkhaQiZG
	 cdQle6uPpvo9nELdbQOqMYuGurbeMeDpeoGheq4r4D4KmcWPkBgj270ID4rMn8eC4R
	 gY2j5b6cVRQ9g8xoXt7Wmy1T55fiCVXyyaROB9JgpB0LocDZJLAAzd+m7Okq/nZ/K7
	 yF1d8MVeGXc9HEsrVQ0Ho96Z7WPGxj/xYDn1QLTcLyKoUNO/83KnLWBlc2wYICp/a0
	 wfRRrPu83c3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E93E6F070
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176648003358.19823.10538909208851225987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6901b0dd8635a5a573e81ba6debc9ad0faac578850fb30d8ca31c7b755b603c8
Date: Tue, 23 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766480033
