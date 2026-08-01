Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5146A2139C9
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785592234; cv=none; b=dpUqss2DvVBmKYLoRNCpU5a1CiROsvgH9Qhry4VCnH8N4PlAEHyhOxKSWtIWWrm0JK9n0kXur5Yx8hfgWz0NA8t8xKkRBremlrMUEhpKhRVRaH0QHvp3dxKdOAQDtZTMWhDvX3FfE1Yv/RWJkl4ChqcXahYz2kJg1eHFw2r09UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785592234; c=relaxed/simple;
	bh=FLM6swgfchnKPRRhgZnIBj24nzNDc4ignc6lMdQQFro=;
	h=To:Subject:From:Message-Id:Date; b=oanP58/IWV9kTT8ih+9SrxzIqb/8rL0+HUW/IegSjEwSyZRwaRt8PkB8hvq/zo9MPq0JXn+vHonC4igpHRSnT2+mZM0CDNMkiUSsYgKWl3gOG2CQhnReB0T14vy2ce7X53bp8FWsKZzf21FsVK6fjU4n97kjvnVgIDsxYPwmjDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ko3ja2OM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ko3ja2OM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0841C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785592233;
	bh=FLM6swgfchnKPRRhgZnIBj24nzNDc4ignc6lMdQQFro=;
	h=To:Subject:From:Date:From;
	b=ko3ja2OMJjciXXMNcsBisFrOSqLXACibCwmEFLn5apJN06CGW5CMkA8KteXiocaJl
	 AIbBq8NDND0xkObyi3V8uLyUf4NVw6wnUB+slzFX92iL3wxJD4qSMFQC64bIG3PSND
	 TtTz2sBU2/fjevtnX8xgnVvNlWFbq6EqGyZas5UK6AudcqVcyqj6YYTTZDV6B5xuvN
	 27Ipjc1sGDPe/aQ+gBS3hGvAWt9Qpcjl4lQUFy4yvfCSAx8DwlP5IB1K+ypK7SuyY0
	 dbrqVJUyrfYT+NNSdhYwlpGz6EGhB+fICbFnK4DkXkDfNGU2p9M9IVL4QTapx74r0N
	 mcrGFcu9WEhKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEC5C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178559223368.13876.4442798541850190371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcd8b8f4c69cd208c1a896e1e321077f5d3d21cce58578df4502f106810ec61b
Date: Sat, 01 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785592233
