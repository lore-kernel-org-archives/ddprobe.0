Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE251B0F31
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747286994; cv=none; b=aNlc2MLnd0yeQBrpRPOmqP0BKjkmWR6eP+ggMh+l4AGq6dlzdgFhPaX1q44P1GviPBa9hwEuwD/GFVehkVIqfix05+3zn+lmR5f5xjKas75eol17pe5CGYxiOfzyEcZu+aHgVom9bdmxUOAF3bQbsukxAx/T9ZaKeNhJ3WMPkaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747286994; c=relaxed/simple;
	bh=dxC9IJpiTYpUy1ahh7bRWkFM6iXS0LIx0rPd4DLavZU=;
	h=To:Subject:From:Message-Id:Date; b=jrVtI0Z6NllmhXOd9/fqbiOXU2Qvkg8e9pglSoPW3GwcvCa+fDUDnBo8kDXfjMhjn1k1wYScay4fG4140vBXCjzDRld3ZGvrEPzf9eMEV7f4oHlxSfr2eyHDHMh+RLL3G8DuHi2saA8UelzEfmhaCGvxvQir11qSWVausM1c8DY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSMfJ/qL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSMfJ/qL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB3EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747286993;
	bh=dxC9IJpiTYpUy1ahh7bRWkFM6iXS0LIx0rPd4DLavZU=;
	h=To:Subject:From:Date:From;
	b=RSMfJ/qL0KRxfFWgHNePubBb5HmDK5RzWXIcvlqtL+j2jw9MaubezrfUsIBeWDDtc
	 cBxdUF/S//Qcuya9l/mk9TBj/ZNf/HIfcOj/UjfA82Qw5ZlFmOZTdSkaSSDz4za46R
	 IuY4Dwa0ywWQurYC/zo+Eidz3M5QiBGSm2hT6B3Vo6xA24CCC3ESnBWzQxmPHkKyVi
	 14Jr/K4BRzMbtcUdEVkcySc6it+h4bHZscZ4EBH5YXdWc5NNU6Q3uEWco2UOhNk3xz
	 VoH5N9ew4GvcBWIiaTr/C7tpvfUQlrJO9wQEXSm+fIMxYHRyZm+uvMSbDCOH2vkwQD
	 ONFqJjDF9PIOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E871C2D0CB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728699357.3645.11554014761658406366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1032f6a6d2a38e64df66e36f0f1c07a399da88a0bb5e19790810962fb12320c7
Date: Thu, 15 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747286993
