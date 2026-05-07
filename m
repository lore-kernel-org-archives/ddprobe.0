Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C63C346AED
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778196454; cv=none; b=m9fZFFH9Zn3P99/Ncl7e+zyhb7uIV/Iw/1kUd+SPCn1fhZk/50OfVYYJs8ws1hNIZSwZePn91Q2LLT/uPqX6gIIXV5RATLMJeQLuNjAuBsvlPEqLYFuP0XZPpp5NQ9v3VO/mIg6zsvxCMtO/i3LeLINl+/gSKWmsk65ddsoRNj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778196454; c=relaxed/simple;
	bh=5r5sGWbhNPj6ejCsfccrDsEJ835NJp6m+Hyaj99/kQo=;
	h=To:Subject:From:Message-Id:Date; b=jVvuHrw+vgURZSqIQp25LLERm9kFykjdHT9sOyLvcugFahN/V9aGH1KxdWJsNIMylTjBEMM6k4l6ZZNhN937BPbtjOLpjRaN2vM296ZbIe8CVkTC4Sp0Y+F0aFczdWY2haauEwVGp+A1u54EOPQC+KTaG0Mc0KYQF1Yp1CJa6xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJo0whdi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJo0whdi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31F1C2BCB2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778196453;
	bh=5r5sGWbhNPj6ejCsfccrDsEJ835NJp6m+Hyaj99/kQo=;
	h=To:Subject:From:Date:From;
	b=MJo0whdi92DITAUvXYByhf+itzJsA+Ev4qFGTiBVddqvE0722pN8PE+kZtlX3MjQ3
	 YJzvpLMzmR76qD1vPJegYRlReCYGxyC5AePtpaoHww8wMijOlJR4qT33WfD0S/g5E/
	 KLjyLNKuw6aYqQOOls5GA5gu50qvtd8S2BdeNcmnkNJQKBhH6WcwdPOEIZO2bCk1F9
	 j9fHSSZFeHm3xcZCUMjBF1KY+FpBVbVhyn+5PuY1UZgdAuH3YcWDbonf+GonPu/EHY
	 2qb+tz5fbQD6nbR+snLTa84k3mk1dQeN34A1fOTLu9WK9aLbvTf9pZ5dGHJFJxFjQU
	 WaywmXInx01Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1DBCD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177819645370.22731.4171987598163129595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f85a92a718c01a78b42542051a11baa46018772795c20e0f4812b3a5b684e1d
Date: Thu, 07 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778196453
