Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA6A17741
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732999554; cv=none; b=W8NL9V0EPOS+yaqbBKZOkbzfhUPqQ3N6Qv0rB8tX/7Mnb4jOl6dGFC9NNXlFTAJjBEfIOY3Ekh9nSYgxmWIU3mJGx1ISsmfv2P4ktDiL2GODfZfYCIWS0Augop9XPGGStIPTisYiHgkzBpQJZIkNRgibXkM06X9I/e14MZ7Yurc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732999554; c=relaxed/simple;
	bh=SAHJL/VKavuDF2BCt03FniNI7iWn0RoAGe+AVe4RFn4=;
	h=To:Subject:From:Message-Id:Date; b=ZtXgVoUtqrXGL1QAGiAS/d8C1+koYKYa4bRUxFzdgKFUHhPes1WChVKgD5FqDjf76oCfL7gwb2WqOMuxptSPYmBYvFBegFkIiI3Ah1Puk1a1l1ReGZgDvDR1jVkuAeS3zmUcXLt2fTsyicdR+TBJNHsskFBOC2a4gNLE5zQhD3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViSm+aEc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViSm+aEc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBF7C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732999553;
	bh=SAHJL/VKavuDF2BCt03FniNI7iWn0RoAGe+AVe4RFn4=;
	h=To:Subject:From:Date:From;
	b=ViSm+aEc6QlEfDti/frIsJFW4Sr+GOeHLNOPUBvTaGlbmoptFeWQ+nx0T46x2HUGK
	 JCMJvDwbxt0LiFHQRC2MhIsjnTGaAqaVVZYzvBHgIMaIXvkTSVEKmkkxRwAMWEU2+w
	 vvYzEkFCIMnCXXyjypPiR8g4mfMzyPYdmR6swHQSO9fFDnb7qUAYPt4fBcnJlN8DEg
	 m2Js/QnncQSHGV5QuSAyfmXrtWJmOo+irIfeWZIlbZFjW9vS+2h4vXUmNvop9HKBG8
	 U+spD52WJEiz22vcehQ4NEVsc2/krzdBVccRp+VJ/gqhsIF5xP35CmuCClVZURBQF1
	 wKgaYS4iiwY3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAB5D7360D
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173299955361.3520.3349487051393235155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d6cbd96d7ad264b525ac60e622098808f07e44e4125daacaa40e1efd2ead143
Date: Sat, 30 Nov 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732999553
