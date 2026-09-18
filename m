Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4843038F233
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789763434; cv=none; b=BN5OYuVjfLbDrdZbo+3h3TPVvlV7vmW7AF4Ko+RgETC5pYOM0LrmKW/2y8lm8oPHOKGkiMYBRmMXhAeRoVjWWq7IjZON+dT/Cs5oa7qCV0oX2sh4lUlrYnCV7KfKkkrkWBA1EWlb2+UNLVh1I8pk8CMvRj8iqi/puGOssKuX4FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789763434; c=relaxed/simple;
	bh=EBMF8FM4DlFiTqQ9u0VDtFMQ7B257UwheAU1hAK8guY=;
	h=To:Subject:From:Message-Id:Date; b=OY1NwYzWhNRCiDX0Ymshc1dSy/PH6+1G08oAC9I4I3shgdFelVsGO60aGmDl76opyRKzIBnldPLNraKduhAA+2kT2zRecVJRY9LUN4OMp/x5Y0zr0inoXe1+g0ba4I36d/22JrZ17EJ4SwmflKVbs+5pZI2mqK5Xbxu/YdOqH54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZTwi8m9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZTwi8m9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF59FC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789763433;
	bh=EBMF8FM4DlFiTqQ9u0VDtFMQ7B257UwheAU1hAK8guY=;
	h=To:Subject:From:Date:From;
	b=ZTwi8m9IQRG6oV+hlNP+b/iLgUKAaTxzzSs0aAQGWKhysrwiKVQPfpHD1hUlHHIkw
	 5ZRVzBUfZd6esCRuuAhDKucixpqcrPy6cD0cGC4+mGg972yn9xtWwPpu5+2LGRAueh
	 uZo81U4/wjVog6RGtvCzmFQ35EasRp6cTbVWTz2lzQpDL9ZhJfRZRGQCYkshXT9lFe
	 DR4YDYITABsGytss3saLVidL3tB6Vu84H66umsLfkCC3udAG/N+B/yFXowWTY6kcqt
	 fVZlW73fN2AoWU/tepjeWD+m7/X1gqEb+2HLEQDE51G2zDxdsUXfPVyKDSomML8UeA
	 gwC1sss6jYSiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4CDC982DD
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178976343369.16955.12394077312011069383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb962b87d36457a03a66e83572d6c8c96688e9fcc036614e7f2cce46a20e6e9
Date: Fri, 18 Sep 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789763433
