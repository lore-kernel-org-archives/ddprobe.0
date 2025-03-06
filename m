Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474752135BD
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741274935; cv=none; b=ZNI37pXoKrgrlhwRoYhnhH5qyw73u8D2dMGSVsNWPod8zdEXZJLmNt8NAx6geOgkJd0UTVUG4TXzpixRVespJPy/CXgix0shxy/dmRchuOvuCySa+2qOMx2p0mxolu9MhfzIwvIHBLVG9y5S46qpPHteMYVoX9W4OXCUKz9LQ84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741274935; c=relaxed/simple;
	bh=yRWOtdoeXvQ1sFdeW11Im//vmoDKygkcOAxzbQhYP18=;
	h=To:Subject:From:Message-Id:Date; b=SGk01gIKPgyXXb2Ef4OYE2AAW/94m0fw0DevCcRqcW6A1lpAGighA93+OiZ/Sx30OftYvhAZQerw5A6nXPtCVLIVHVr7f8tKlHjUTe2d8/jK6Qfe/XHCGXiWTYrHx8lwf/N5WxT+nmcsBd3uEO/nmuuvr9MN0vrr6zySeyVAPo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOa15iO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOa15iO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9523C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741274933;
	bh=yRWOtdoeXvQ1sFdeW11Im//vmoDKygkcOAxzbQhYP18=;
	h=To:Subject:From:Date:From;
	b=fOa15iO2Li/1tU/m2WLho2lmeLL4thViZFUVgAaoaGY29Oh6e39+trmAErykG/iC4
	 SpDTYAzVmkYcQCHJPoxutkMWMBe/MPE/SErqaaxY9GIJnLeRqueTdtCuxSmGcR7wEL
	 W+8DKG5MJX+ttbYabK3geXpcpTgfUN4AMpSO6I3E9m2jT4qm4xEKXgLLC5IT5kJFbg
	 fExu7u/nkKJHbpqw3Fe5E3d5xkq0+Y+OJ6DXwmmKYKKiafuJ1FsJDUYLmBqkY8RVPy
	 ODMu4k6gZVPpob+Y+ZrUQh5v/ZRuP4SziRC9QZEd9pugOfxWKTi/1AkLjqGiCD/rTZ
	 avrULqjsGgdew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972EFC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 15:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174127493360.10061.14158757626588708954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5949893683d7c448715ed9803106a29c978a28d843018089d6293fecf9bf413c
Date: Thu, 06 Mar 2025 15:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741274933
