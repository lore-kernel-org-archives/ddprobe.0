Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8182265192
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782343054; cv=none; b=MMx0wAgijSs7q7hcPb3hJcETLmH6TeH57mKDYBTl1WUAcodfnwAlTu/bZFJDaAYiql+FmJALUwP/781v9YP5fJriyw059hjRJlQ7hnQTFxIU/vUnImoDY5CUEDm1zDMEakakeUBY742K1stRU5eJxqJwSIlkCuWYV6YWtjD8+os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782343054; c=relaxed/simple;
	bh=lJtD9JmoLhtT24ppfI+mkc5/x8SJtdlkVq6AWOI5K8U=;
	h=To:Subject:From:Message-Id:Date; b=obK1WzEc5JJQ1kunKNeC0REbVN/5slmU2MNKSsXvDS7GE/ga+r3a2F695QAn6qxdhfQNF3UTl392QYpigOqphcYkfJVwaVVe3r362/2w1lcywNrL1Icg3RRhKGSskzlND3eWBQJ5Gkx73bNX7qqfB0DSUzldae2vGhdwEydV77I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxRek5w6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxRek5w6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22F4EC19425
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782343054;
	bh=lJtD9JmoLhtT24ppfI+mkc5/x8SJtdlkVq6AWOI5K8U=;
	h=To:Subject:From:Date:From;
	b=QxRek5w68kSf411oKwoRI+ehtt/ZLUO6OBWqDLQVwCn9PSFYMJvQn4NA4oDRu4yst
	 AmwIxq4wl1wtmkHof3TLzE4Jdh/S7eiG/7Ylzf7hp8NhED/SwqsgmMdsEWOfvVyoHd
	 ZxwFwGubqxWvC78PamdSvDLvOy8Pblo9pkr/jOduhTfCEiulPHfgUOURiT+y8b5E8N
	 DGoyAkFTP4wf/YVn/m+LCSHBUOYv84a8nrixqKl97R9vrdbS7lTUbVvjmnS0ph5IQU
	 x9FzYJepyFqEfSbeyjxor+JNn4OFQYjNQRicXZS/u/OaKkzl5ykEfn3HWdT7S7/PUJ
	 ePi4RUnkW3i2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD19ACDE000
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 23:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178234305375.15190.5027179830665086669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f481ad952076178924055d4f857795eedafe3b714535e8e065cc390e0821d47d
Date: Wed, 24 Jun 2026 23:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782343053
