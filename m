Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359B01862A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763194194; cv=none; b=gcv09NwoVWowL102Wzwelh2DVQysKDCrVQHCPxan1yFHsOAmmZMeVa3kvuiSvW83DblG5nk/BhfnV4eTYEO61bsUbDQ1evnxLz70c77KDfzr28AI9rXU7/bxGdGqzjIjZTs2hSL2Q3q6tKd/ZjlLUli+oVc0fTuTty15mrp02/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763194194; c=relaxed/simple;
	bh=R8vduV+OpgFeR6QmQ4MdTfFe8vnWcfieRcUFGtom2OA=;
	h=To:Subject:From:Message-Id:Date; b=CTLIHA9PtPssdVMBaZoX+ZwKpjapkKdI3ldX9BINj3X8w4TKouLnzJ+OHM9F6RmhS7ewKx8KZWOiPcae5sx/L1pqWdBohJlEhOe26i0ounnQR+8SuJ7f6KiOSLgwFPQqKTxMgie3x8+pQrfQXu+kNs1+0H9MjPTffz/Fn8XB/u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UpYeLVtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UpYeLVtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA94CC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763194193;
	bh=R8vduV+OpgFeR6QmQ4MdTfFe8vnWcfieRcUFGtom2OA=;
	h=To:Subject:From:Date:From;
	b=UpYeLVtETQmbFKXx0BVCo+iles1gRJmfVdHjNmgcJjGUxFZotD6LNU72W6gG7HERu
	 YqQGWE0mg5OfG86eMrOsAJc/+LFkAMMFfDm+Rp9UeavPNFk8Fyy3rR8Mj7EcSRXkNk
	 YcqJcfge7KLksBxCnyE7VBZLaCglXykNI2jwe+Mh6xIxZgIuHPWWBGI7zB0QoRDM7Y
	 HHvCenSAOXxeqw20nYFCHWZIvay7TJdK9PWwRC+BIB8GlZk+Lg1ggdod6Vp9d6R+8g
	 2AHZQNv4Hekbu1ZKrMoxWM8gioytMVdKnUAu4oOglc0/qUBUbB7PORyrnKmnmEs5sT
	 tb2KdkNU8rBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE62FCEB2C7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319419366.4817.11178258726743878062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa31031d279a0172b1f8bf55be23297d3b1f2aff6a6cf331bb9d1dd4c3f5134d
Date: Sat, 15 Nov 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763194193
