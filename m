Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BDF12E7F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722057954; cv=none; b=Yx9Q9gljYzjDXxSrWxgfUeiUkhhK5Yvmi1vvasdrw/cr23AI0jpgQ3DtaplewgP16AO0t1GqPIabx8mA/dcLCfGRMUVb/L4+glHOSLrSOqDJXoaLVoR7LFWfmK/tsIUWeam6Ng9BGzrDrxukQVDdjcNzh9333+rJhsXMuEp/tDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722057954; c=relaxed/simple;
	bh=V4c2nAFCvAflQ1W7vqV5FvXfmZfYvj7dUymgCM+83w8=;
	h=To:Subject:From:Message-Id:Date; b=In4JW9XkUH3AEuSOTBWpq9INFRNv+lOIEilSwuVb/dV+BnO+zJKsRC31rTac+Ytd0gyi255DyjqV9ym6PMlMcbS8pYGOZgqRXWlxZLbi3j+Py6Rd2MvEHu51V3JKA/fWEMPK+FxabR9Uisvp8QKERG91jcjj7JO1ifKIfeUnfHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLVmF5Vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLVmF5Vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5857C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722057953;
	bh=V4c2nAFCvAflQ1W7vqV5FvXfmZfYvj7dUymgCM+83w8=;
	h=To:Subject:From:Date:From;
	b=nLVmF5Vba9kTJbDjiArMx/1fnu62rBv5oTIXwO8j1HUNSd9xzL4fEErNw6USwjRMA
	 Nbu1kEG+zp7QxYZM2xxWpIRhTPIGG/DRwtzX+y0R9Y9kpvWedpqx2bkWy4avHJ7EWO
	 2Pb6uGjCvU7BHwvUXBfAJo4ks7lhdN+rdH51CE69Wc+dmbz32geVebBQuChmjC+h3c
	 lhfua8YVKJmrOcgME0oMJT/Sa79zn6NPCpE1MNY0exn5lQoSx2QaS4mMtPnXAO3ZSa
	 zBlMBlIq3OcIFN1qLNPxN8rvCIsVEIB4hyNUKPO/xEJxNXHeAwYijIAxh/JcWOOdW7
	 JT717rUzAaFBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E2FC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205795358.7027.5051156760083188695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83c355ae9be11374fd55c65cc86b6403a7761bc4ea5582c393e7e91fafe4075e
Date: Sat, 27 Jul 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722057953
