Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2983D274B2A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767149634; cv=none; b=HjjtnoRpWLbvVxSeowErpRuFG9DnqMJjZTt1LrCWoAAzj2TXZXNiKZJN76bxL+U5HXdRZD0luOjObgpp2KS69Je+aNzUMW4lKnE38Af+mwzCLWM4NxTJZ9fcTtqBGTl6KqvBfHTDT/HnAUJXMmdkFOpE+SCtTqN3+hbi/R+tGnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767149634; c=relaxed/simple;
	bh=nb4WVLhckqJqfuFn6Khc0Iy3WnJeSyQzzA0uC4bxRIA=;
	h=To:Subject:From:Message-Id:Date; b=QsvxCmqJ4v7Sut2jOCmaURR5NTBnxLajtaOrhHrmpOvWljaYGFAD/rOkDvkVOmUOsp4E+vkmyDa68LKVIbkT3pJGsLPLkEtHh0k7UUJULonbfhviH1vX9z3PBJkJBLBjeaOEi9++UISDdtJsvKRUitDZjghWNMtAmBpYdrcwoeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5chyfje; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5chyfje"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70E2C116C6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767149633;
	bh=nb4WVLhckqJqfuFn6Khc0Iy3WnJeSyQzzA0uC4bxRIA=;
	h=To:Subject:From:Date:From;
	b=K5chyfjeKVLQ6RToY7pp3KHfHyktMzD2V/KOA4I6lP9SGTEJeLYWH76Ds5AgLEOny
	 C0rhOaFtgV7PFWDqzSRhjJrF69Z/DjfGAwbsYmZ1OO58lBqtPidek/f903DmRblygr
	 EZ0UCIDkLhE0HO6+PUCIjNdOe3iv5tAvPOkZ2bDE8/JA+/9rtmxKbK9Ilhc3oQ4qjJ
	 kJvVqrZxiYmPETrNq1Id7eWMJCE7eoAKYnuRAMVV/WNacItwsi3K08u+ODlMsz+OIf
	 ywm1MJ3Jqbu03xtywwyb7IRdvYz/LggMAiybO+gTZSvZWV9ktnF+PL1+m9YkhWHxTn
	 tH6lPYZX0+nbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944F7EE57C8
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176714963359.14078.10432000329001406606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85336604c6b8042d01dcfd374c1d395aed26ee006d62eaa8a8cec354463f5eb3
Date: Wed, 31 Dec 2025 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767149633
