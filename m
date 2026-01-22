Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1425A3D1CCE
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769084034; cv=none; b=OOwbvf3v9RA+WkqULSjFxu1itSSsY091QXdP83T90D2qQmMs5rgrZQMFs0CiH/62Hdt66AJ6BtbeBVVjk4Byo8Tz3VbHLI4fyITkqR2MJUP6aDX+qgC0A7YYlRQ2p+QfHaup2vi2m//lpT23xtC3/WUtvXlsHjhzZWm1fveesfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769084034; c=relaxed/simple;
	bh=bne8IkXJbkLcncme0tKtkfhfaggIX7mECQnv+sbR1Mc=;
	h=To:Subject:From:Message-Id:Date; b=HL8mGc/D8A2GqINHdnY4DCIPHRC6h4ke09WK1fx5vJmMmoZc5lglxkf5i6YWziA2mENB9t5sIvmTQShkC7p0mDUof2m2Eeouixyk8mHkmf/7PsRUyJiKZw+mI8xPNO2gFo/LWinkzBFJL6mHPKdbbDCVm2OBKeToxo5x6dhIGBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY9isvfF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY9isvfF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D62C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769084033;
	bh=bne8IkXJbkLcncme0tKtkfhfaggIX7mECQnv+sbR1Mc=;
	h=To:Subject:From:Date:From;
	b=EY9isvfFyA4YMT3ouKjOzGqzheNss9ITNA0rW5oXeOaLSfLHne0bdwOemabG+Y9Wq
	 LZNr7wxzP91tsrcfuIsdrsTJ0LbjCsUzcAONpt9tne8PDboH5ABr+NJwAvyPunTcKi
	 GPy8Od5nOmrgCFQ4ECqAuLf9CKWuVC19lQfYyCtDh1V//PvaSmIysOAaLcd0Rz1dpP
	 EpFpVgjDinduCnXh3XCuDgwNHl6cpx6UQIVKQszjkFkagADc2vMtrG72HDADBqocCr
	 3wj8SaMe9J9E/dmZcOPPa/adwb8rdeuYEH7O7Fl8RgRZg7dCNVwsD+35xHxuPJHB0K
	 yunpNOiY50RiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9614DC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908403360.26500.17984455525390602437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5af938c55112d57638ca6f3782bda42b58c2998224ab3cadb12850dae211e2
Date: Thu, 22 Jan 2026 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769084033
