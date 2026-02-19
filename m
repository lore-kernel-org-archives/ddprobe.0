Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3845830DEB6
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771532094; cv=none; b=FrONll+vTWGEKSMEM36XCi41M1qrEBgNikI53w88fNLUwZtt73CT3F7KvUBi0D6NxF416lKuvFre2i7jHA0XvFrJst1yZ3atlf/MZQbFXM6XXSqP/CtfLpQ4+AsWh/r07t2miIuH6PFAKI9nu9Q6oXGmMtyR+ny0+ibqsEKdZ5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771532094; c=relaxed/simple;
	bh=c5w9Syp2f/xXnMS4A7vvoHFYIYgtNI1vEAoydfhtasA=;
	h=To:Subject:From:Message-Id:Date; b=NWR/eJC9FNmMLX3/9kz8KOfwst1LfA6ocN/keZpLwsyS/2Kmd2gucqdbk7jTqWYctg8xy3rvtw+tLgacfZ06pxfVbfGvxsRCqMaFomTbTfOzRamno7EFJCGTZWb5yiPyCMed+YtNyo+hrte4Ab7NjL9ejzoxiviCoPjavHTmX7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLxjh9aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLxjh9aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC8EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771532093;
	bh=c5w9Syp2f/xXnMS4A7vvoHFYIYgtNI1vEAoydfhtasA=;
	h=To:Subject:From:Date:From;
	b=NLxjh9aMEYn+QYZiwHZ4I1WCqg30h6SA1eRKSNqMEA2FHcL5+TDTfAl2WD5UbJVKH
	 pBUbz5/nm+S4Y5DXmNnY+kE0Tcfr9pZo3WNG62e3zOscSxhA0P6MV1JtrGq4JJgo9n
	 6fGWklYPp/Fucxn+VYuEKnT7IGAHuOrRIK0uDFSpXHwI5sPNqRtKBoQnUWotHj9I2c
	 XmrSupy38gKaOvBTGzTPRJtfoKYnMoO9xOs2Rpb75wRAoGkBJLvDzzX8EMrgn9E7mM
	 A2cuElRDvQj93allz5bo4/zlH5+VKGZ5mQYXImoOiuXwQiDbuyUd/XzDQmyYr6Csc6
	 XsHsAEQ/7m1zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB6BE9A05F
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153209359.19784.4171783730173210804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5121f5baf917c1d46ba77e702b57669a9d0cf058edf0d3bea389a66f2c8ae040
Date: Thu, 19 Feb 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771532093
