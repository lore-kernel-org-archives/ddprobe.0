Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2A3056852F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789062034; cv=none; b=dlg5NgZT/iLJhKNeXFRkZFd2X+qz0LMgDxbUdp57TaLdWXwBm4rXCl6dppw7s5LwZynl95EyQIF9dmU9X7d2sBVqjtK8SfTtzLrNHi4lf55iSDvIUz9gmDDEBp2jH5FKBuQUbSfJ5cQRlnS+mCANL0o/DQ5xVIAYfsnRzRsVywU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789062034; c=relaxed/simple;
	bh=Ipgzmt9Uqdy/SR+4p3B1jJ2b0sQRHHZBl7SK9mygvds=;
	h=To:Subject:From:Message-Id:Date; b=qUQl/Gv6s/QPfBWhoflcyQVO5qa55SDI4Uok0YHFifVqBHZRgYpdQ5EKnGh/YaPgoYwoGrNe+Mw2GnKFA20FqcXGCeBrX5vqtyI+q4oCWej9Iod0js6pVmTYZibDpt6DE7BvOcOPpdFrISJv/QkhMBImck384Vw4RfYHBl1T47U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jddZPhdy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jddZPhdy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED24C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789062033;
	bh=Ipgzmt9Uqdy/SR+4p3B1jJ2b0sQRHHZBl7SK9mygvds=;
	h=To:Subject:From:Date:From;
	b=jddZPhdy0rX8YFCwv9X/Y6DdaO/zZFbBoHWom+SSrpmU5K1cePO7PeQNF8xpV4ae9
	 REoAG1ixNai/JvzNVz7vLDPIiGW53A1OoJE1sse/Cilnmfz1iNI3mJY5gRENAN2F0Y
	 rH5PeU+niRLZAK6oHXb3TZ93hxA9/AG/vcqcLOvCAUjnENHqUo3ggkq5Vozx6rh7Hx
	 65F+fjryl76d7KGjPeHHFY3+4LuQpkc7EvZmoNKD7Tr7KJ1W7ulcS4MPaeyvtDbkWe
	 qIKKnQKRXIFUIqBaDfescL5qny1DM4frdl65aZ/52aq1SOg/j6hGn4b4rTtKmNzqus
	 aRqrUyGVxOstg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA64CC79FBF
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906203368.22182.13128501374090210437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e3edd494071d5d78b433d54c7e1f373e6ea91075eb090a73b928c2ed4a1ba91
Date: Thu, 10 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789062033
