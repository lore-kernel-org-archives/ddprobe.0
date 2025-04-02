Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349B223C8D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743603594; cv=none; b=YrQave41oqjdinnI7ABOfNtu31PH+G/OnW/46WSaN7HQucR7pf7VxEuyE05pVq7/Ta6y2EjZSiMqwmA1yXEYDFuOdAkuNLGt6fWH8rvtidW2knK6BsaKn8qozfE4btsGoa0vjvqr4rPqGlGGWjpiGVhNTL/RtcFS/+i7EOZxw0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743603594; c=relaxed/simple;
	bh=oKHzYPmP5Z1T+H/2WD+Y+/Bj7/8foRQLzCBP3MQssg4=;
	h=To:Subject:From:Message-Id:Date; b=My1ht8GaMy2oEiRgAI2eubK8ipA01HLczDkliPu7qR/MjAMkO9xE95WfmYiyhLKNWBBg5fLm80hTPCKXxBcNW5R4Fk2FZwO6KmQItVz9oOp4NwWOTI2XuVffgLTBioISTry7Umj85XTqYgHPTFxdGxrddWLZf6w8Je5yDvEDvBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLzwqp39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLzwqp39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8941C4CEEA
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743603593;
	bh=oKHzYPmP5Z1T+H/2WD+Y+/Bj7/8foRQLzCBP3MQssg4=;
	h=To:Subject:From:Date:From;
	b=NLzwqp39BAGYOifbLuBQ2XlpfEun9WIItD/P9dKNl6uFaAFaDFWxZee6t3qawa3cc
	 /+5TVc1tWJDK07+vFfrwvW5VU2u23WmlQsC/K55aCnkTYbIyY94sJe6B55SBsPtTR6
	 7m2NpdHtRwcnjHxmx3eTkJar6N9Dys8L3tAvB6hjU1AZM2rsL8F5FISCkLeR3LFlRS
	 MWr01ouW4ufQAvHJHEDhTf46ZcQ3ThiNJzegfhLGp9Hoyj3XShm3JlMpOtVVggaSu5
	 5P9TxghCp1fFbND3euqKrDyRgCziz6RlT9C+sxIFSanBRat2au5DLtnUkc3P7cQTyp
	 gsAJVj/B8mruw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958B1C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360359360.11796.12968860912669322327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891d53bbc30ab6eb9d79e7a6a99bd03a199c35c472bf3ada6c260fc4778cff2f
Date: Wed, 02 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743603593
