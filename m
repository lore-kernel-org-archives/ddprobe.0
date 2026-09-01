Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E7CA313543
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788300634; cv=none; b=UuaLsEDwxZIiuL0JNqQ+3OUfgvxJdrO/Dna1Z+hJ2hFepHE85r0I9MYnwGRIRFIxWJuV4dGlJJiLUN5nCAESsUymaQcEp4ytH2KvHykhIMLAh8VeViWIxl4lG3ujzLvm7iUSSLAuNMji15sFgvuQftIay6CqT05wCZv2dMhTOuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788300634; c=relaxed/simple;
	bh=wQQaPMSbU5ZX8ujqOfkd9GOt8poZkjhlqUXUPyqhqRo=;
	h=To:Subject:From:Message-Id:Date; b=HAfS1iszK7RtJFB5hnj6K/62HXsAG81HEPLLKCsRnqFmnBDcWWIWGYOjGVXyrYSYkTz1c/2ne/2kAOT6Ra+IbBY+DEC2rrdo9ddPzm40jxnshmpF7xXeDDMZMX/jBxDVBY2k5dI/yzNTanHSPBM4uGgA+naJVOMZJTfmdCph5xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meB0H6fp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meB0H6fp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9CEC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788300633;
	bh=wQQaPMSbU5ZX8ujqOfkd9GOt8poZkjhlqUXUPyqhqRo=;
	h=To:Subject:From:Date:From;
	b=meB0H6fp6/3HFAPsQoTOMmJ1ZwPFbsjZmdRHFFsmgPbh+2OqxnNGea9OQ//Ba3JxU
	 h5NoPbXP9hWbPA135w2YY9hLI/2l5J1oXBMae9epVu0hOKl/48eu8pgxZfYfhdGVm4
	 MJisjxC5k1FOOCcwJWEI738MixePS0zJ19QV4TJR+g/S60SbLuVgotOeRektmlv5ub
	 IvjcJVKU0ZgGiUkcfwX3HE00eAhua53wlgSG/sOJO/cmbzZuYEbHYut2dO/3rup7Rs
	 1DitL14nrzYV7oErvfP48I783PC8vsYfgtnH15ihMoxm2K497B7rOTctk7/fOceu6E
	 nwxpfdIjIrfaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F7C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830063369.32667.8651905703633211935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40283cd9733679ed12ccd94cf6ce2d0523b5be98d1bf4f816bb0840cd3615384
Date: Tue, 01 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788300633
