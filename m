Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1473290C4
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774478094; cv=none; b=LgIZihNV7ULGB9DPV5I6bRncQvUBCBepBrXd4I40DpgxsgfGX3EYUKtRKKO9ZlmB2JS+WUd0g3GpoqUTYgFWUSDTjAYryaBwyTgBSTG9qrIWadNkjE7kPkGGJ5FxScjEl5KWLUN3rDwSF143FtlWP3iCruU2CFewpKs/0mmH8ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774478094; c=relaxed/simple;
	bh=hONTydbQXbKAJB7t2mP+Vo5hqcq2XQ+/0RqnT/QHnqs=;
	h=To:Subject:From:Message-Id:Date; b=Tr3Ei2Dkhnz0kX8uH0/yPeO62559jldwHu8o7DElfnjPNUd8To724k1b5IYUiEIsOgRy1IjzaT5IULICJCYAQATzOrWtlNlT7vgwGWI5N4kGUHMapN8FkpU6BtF5T35m7F4HnPSAMUVibZNFS6Qv1swoLJ/lJsC7sOKC4Mv60ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKbQBmq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKbQBmq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F5CC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774478093;
	bh=hONTydbQXbKAJB7t2mP+Vo5hqcq2XQ+/0RqnT/QHnqs=;
	h=To:Subject:From:Date:From;
	b=jKbQBmq2SDM8Dg0II8xrNl6PTOJaFu5hfSxZokGPMFPUWYxLvrdkKFg+x67Yg8577
	 0Fw/nk+7GBwuHAO0l4NtFWb/htGWV/Ry0huktOxqptRkB8FidPD7z0C46Uk4wLkBjW
	 Ox6xysp8FzrAuV8Nbgx463K+S8I0LIDTQyfhsItOoEpUFNSHMhl6RyOP+RVt7k5FsC
	 DokkU/ozYi7B5qRQ0coTSnbzBuUspBmCe2VAegKl/LMkZQot3dzBdch1A8lJVKJWA4
	 /i8tOlSU+3Daz58VXHy4gApGPkDkS2H0sc4bHsF42KauBuIIsLoUyQIt+CRWa+6piW
	 CRtUs5wMS/UNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D892109E527
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447809363.26571.4153520181006098783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e869e27cc6cb64de76a03f1a4cdaaf68f66ca6f9f95d46fcd1d1952a22fab46d
Date: Wed, 25 Mar 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774478093
