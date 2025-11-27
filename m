Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32810208994
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764207774; cv=none; b=u5TgQNfaYxjMx/amZPQ9SvZR0OdRCYsCp591bRswvu/KWK+bdJJVXyqddq8PTgz5LYec36x4IczgOEuzgNPDPnpzSuuOIcg4rKv0+KmsMyBGju/5dzvsZQOwEpPpy1mt/iAfbba6EEl63AV2CB8PKuAVgUxIyG4Vha7etyT+++M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764207774; c=relaxed/simple;
	bh=rnwa8i80HS+rCCUo81jOe+7NvqnGOeMmRJlZ650jRIU=;
	h=To:Subject:From:Message-Id:Date; b=O6f0qojaQZH7Ri2jF7O3KikJILhU/er2vhrqgeKI4+pBDs/5CfrXmGWWzNk6wE7a37GNdO8ul2GzlxUbfK47bkODxc9w+HuphjSQSFUDoEP+UEmvlwhxByOc1zxWRVO2C6QBj6zMwTzFgqXzbQyRXljVoIpnmlaaTNYhwK9VPZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YkCGMgsl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YkCGMgsl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A004FC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764207773;
	bh=rnwa8i80HS+rCCUo81jOe+7NvqnGOeMmRJlZ650jRIU=;
	h=To:Subject:From:Date:From;
	b=YkCGMgslHZDE9hPTXGYqete1bh09Ae9Td0yjtPxPBlbMQACDNs2FI+tIXS+dO8I1I
	 urbKlzz73vvA1MUJDpS9EQtvUmvhp4XcuZYZgm7lHXCE2S9kCc09dOBFkAdag5ADB9
	 q1yBLok0+EHnnETeBMP/OoMbothjzo5EjVKezXxeUOG85XhZcFkGnxB0Fnvmp9qa2l
	 xmawDFkQTGA2++fkJqQC8ECgAT2eWrXmsomAoFWGbsUB8EZH9lGT25W4B10xtaTDFC
	 w0E3CMaOhBp1RxZh6QhWrwoJKeGGaQZ+IYw6mFv2JuQ9cOdKnPiDtpe8eMZdzb/8v6
	 AZrjdgsLC3tBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D22D116E6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 01:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420777358.32413.7859132203163178516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da57a47a057c72e0d39eb2c33ea1114bdb2a992f763f01e7f56847db51bfc4c2
Date: Thu, 27 Nov 2025 01:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764207773
