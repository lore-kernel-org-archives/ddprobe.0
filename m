Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EA927FB18
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788560434; cv=none; b=olQBukojXl44IkoTcKYQATNRZazm9WvRa910qVqXHiBZHgtVNDUNAXoT72UONuZDolRsLkCq0w1fCpuI0CQaoa1ad9X4WDVEwP0WFTQVp5ZjOXP6WRqAWOaIw3AVdGpw9xt0QRMBKmixE+LuHfwpVXevNj0nrg80KjaIVGy8D5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788560434; c=relaxed/simple;
	bh=GTMDX5njdiW4LzJ6/S2nRdbdIVwDkXezUBaHVh30Qfc=;
	h=To:Subject:From:Message-Id:Date; b=RHYcJVqrxQV/Bn1CygIrDjCpN2oYzUmZZ8ZpixYc8RGwbaxvgWkaQoFsGZ8XF1aQo+17DKVjBCpN9SS2mbGI1F5IF5H36gH+7GKHcZ7BBnHzui8tSHrLGSQF5Gq8fEshd5Z85X4TFqK1gAXLCEV0p7SA4dIyA/wlL32GS6YwFsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjNjvqHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjNjvqHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5442C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788560433;
	bh=GTMDX5njdiW4LzJ6/S2nRdbdIVwDkXezUBaHVh30Qfc=;
	h=To:Subject:From:Date:From;
	b=qjNjvqHhvkAuHCAQV3a3UpDt1jZNA7SUGtz+tOUOsSHmxHEk8zVHpbYBlrD/YXRt+
	 pw+rUfHIKYPNXhncUjVLnEzY/eeg6sSDJuLRiquSugBNmn/pmf0as7zQHT4K2C3Fju
	 wYKeqW6k70Y5CY+7bx44QwhllCUfHL3XaP1HnW/HHGd54UHWHunJuYcs1L6cmGbeGQ
	 0wV9rgcxgRM4zqoqKlxASTHCVHayRtpGyOaUegwG8LMe2aBOQuCtQfbXBf6ppzk07b
	 EyPcRLLHQ57Dfgx5KqV0QcPYIB9rV42Lf1Jfi0W/jzGbT8m6hIm38KR7zLcojFL8Nn
	 YjOAqmipUptYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25E1C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856043369.3894.7469557770654895614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033631ef891b63f838a0e6460627e5c39dd6ad29a3898cd1857bc900facbcb0e
Date: Fri, 04 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788560433
