Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085AC19F137
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768009434; cv=none; b=K9NUjd22NdrITSZCXsAMkw5LOh2l49CIMQfBgPi1aUiuv+s+5LhS8xoNNIuVxISn9/86N1Y1oWDZKCTZHSB58P6GBOlmGak2yZBwqR5j3oOnit3gDO6LSqgK2juolZZwCTSFsBeMC8tDlgxCIzm6hLK4JU8EESg2jlGYxWbwfRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768009434; c=relaxed/simple;
	bh=p/tiO4wrRy3TtvMxnIpF8cdld8gUdobHpNO+NOsSmz8=;
	h=To:Subject:From:Message-Id:Date; b=iDOfjaIXU0BP8EBqbOjp3oNhTFo5zy9X+Z/Iyyx3QHZNhIP3ZXEShY+GlHCsbq77SbV4GBQTmwdWxj3rRNabR5NJt7cmpgsyjSp8iFLxcZFYLj0kNEqjtg4fK7+vvqnp1nBaCHgTUYtxtok5epUOHomOnprlQsEEbdgXzY/y1M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nB/mx6KD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nB/mx6KD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE41CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768009433;
	bh=p/tiO4wrRy3TtvMxnIpF8cdld8gUdobHpNO+NOsSmz8=;
	h=To:Subject:From:Date:From;
	b=nB/mx6KDithoGL5q2BbaQu3ED08h6T52j8oICbGE4iK4kRF3L0K2pbzAvVqWunjmW
	 fQ3wrMvBM0AwcfvgGDsT7yaAFoaZPOOiyQSdGRfrfduf63/c/rHbVm61xvONLvKxLK
	 cTMF/E4O2+Gm/x53D695dYPlg0d/M5HQzM53hu7Xgq6XbFUI9wzrwyluqukn61RR/4
	 ZvqQ7pCrc9fYifqWph0t/LqVdOyhyYJIeSjgp9mUv57/xAFDL9fvoENvxqJl7axQ2m
	 Z1QOJo2BJm4S5MWrn4CXtler0cc0Iax+QCZMhiynxqZBl167UYB8xbHJ/yYPHjNnc0
	 ESfTKAGKVFpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F157D277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800943364.14763.9207367935181062332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d71caa81c94cd0ab8ed5978d55668a50cb3853d59243b595c1aea3fd3ac5dfd
Date: Sat, 10 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768009433
