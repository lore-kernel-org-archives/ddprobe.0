Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20AD224EA9D
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757139594; cv=none; b=lkU6HqTfLIY/Szu7XfNaaFBX27yi7s0nDUNwyKrdGZgkMucbKnFCc3XF1zCSuMVnnQTK2YzQAY8i3ZNlFFGcKrphwDEp8L6wh0NGwzD4TzWqgIQ42eK5btz0Y9M0kVbUiCju/HuNe2GbrUymqmU+DcG5dci7YbgK8V7PNQ3vEOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757139594; c=relaxed/simple;
	bh=9NhaLrxCl6+23ZCN+kNsTgbydfK17lm2PPXAkEnR1vY=;
	h=To:Subject:From:Message-Id:Date; b=AbTNufFNmcBmjcFnvIMOPdIPoX94SjUB81UdwOCj/SppQ4PSHbDSKXG+86nu/FhQgz3x7ZMho6l6vwkQX9nDTk5ZtGCc56tscvBee8mgaagoOr/CB6fkfl/zaOyg7ut59Fj3s4hEH9fjJCjhzuGf7peuz23ZSUvfaL46wvxjUgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=djyCfkwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="djyCfkwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A707CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757139593;
	bh=9NhaLrxCl6+23ZCN+kNsTgbydfK17lm2PPXAkEnR1vY=;
	h=To:Subject:From:Date:From;
	b=djyCfkwCHaaW65wV1MJHqUfys33/haUcp6plIxRc4RRg5lrAgtuPH3kYL8ORChoen
	 5Yj7otqALtvL7eyflPMNySGUrXDxrZPsZ2HHweWcdU7ZfDy5eSOh/btP7RvXtjItn7
	 plpflQHolohJadgitS2XCTckQ3wGC81C+gtG0UyPtYmyegscDlrzW6W551/HWk8CgE
	 LDFxdmDI8ubQ9vJIF/MDhfbdIbgNZHqJHtPCVTRg86HbC9G5bwgSzzUKsltDkk9O62
	 TranTjJ0YBJc674Ky3r1YaXar6oQUizacBGvcG0V3iMyBb3B1+EXd1vi6oXTD80Mu9
	 U4lL8juAZj5/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E35FCA1012
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175713959357.2976.1158324380135966538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6296e0b82612e52c587b34bf5f5a0599080f5d1c9c21fc813fa86ffbe69ba8a
Date: Sat, 06 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757139593
