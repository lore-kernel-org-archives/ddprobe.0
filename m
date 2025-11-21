Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C75634321F
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763721114; cv=none; b=iRTjODtzRT6eNj4SRZv8maMaUEW55TCRfIui7SoL/PBLN9j5eM/7RShvhx2Q7uVpFM8SOecOYBd0oCwetFQcLwp9DrVSzzBD2/i0PFpETzWj8toqpbbsMn14oAhrRjaUxjtGMV+tBCg98r9wykzZJLc0Xs6u6nubor+CN68qoBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763721114; c=relaxed/simple;
	bh=XE9sYilWMS/esqVPDqF49aq8ado/JE0qJXhYbmYUQf0=;
	h=To:Subject:From:Message-Id:Date; b=MlqzAzkmgkKe7WL6BBtfAyfN1aDfMbk2vRmF4RCuKBpfAaVIR4a/miaBrzzbBRaTdGzFUWytC6HjzpjQwafb0pHGWBeJTS9ASqRQv/ZTVLAUNzOrJcPr3Lsk4VXZG41kz5M4MiZk3C17yr4vSQ6KJNNcmps2yQVuqocsT590qK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GysGzNYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GysGzNYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85F1C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763721113;
	bh=XE9sYilWMS/esqVPDqF49aq8ado/JE0qJXhYbmYUQf0=;
	h=To:Subject:From:Date:From;
	b=GysGzNYv/kAr8CQOY5gDEJvaKU7RP03qhmOFSwfj/vUEHNyTu8OB28jjWRIJlA46H
	 +QY0dlsPCMCI1/5KWa298JO1wiY9W11DWnLEhFNiLUPRyYjRqp7dHNZIF3IzFt2Cvs
	 snjGzYWvYrugwA9PUlgCIIl9mDQQeNfSVM6GD5ZpuV7OSLx0iMRKnA7MX2pQg/bOh5
	 DMsKwTjigj0+w+lHy1qHD3Ah/3l1S9V3oQiDq8CweILtvMLULCXwD0LXIGwDUG0wUx
	 0GWtyIiSIbWqoYsq2bHGbQoP+SyXsgChsR2dMx+xvn+gdfKdRv0UaAmME8OErsrhzB
	 PmLx7t8Mch0GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AE9CFA76C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372111360.29524.6589562344487636614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87974cb8973b731c12482abe6ae2219a9b496da68b3965db0a5f5c546112f139
Date: Fri, 21 Nov 2025 10:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763721113
