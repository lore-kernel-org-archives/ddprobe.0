Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0491C6BE
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743916194; cv=none; b=NnWOVf9a9Xzp4aOP2rQkeswhCJUGOftkyQEriv1alJr3cSCDAAaWZ7zUeS1fCUnsgA1sOEcBIZYk/9S1bn9V1pgKa7xEezjJVxpCBns/xA8Yf++UwsxnUvmD8T2AkaLX5xhKVgy5AKyUVatC6V6xzK/R3NuSFn+fLD1Zxzizlu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743916194; c=relaxed/simple;
	bh=pvc/G3mnpQgySG181vg3rNXerj0f+kGMHdvDy2e0WY4=;
	h=To:Subject:From:Message-Id:Date; b=uPRG8f+FbWcyN87Zq/NLeY2VSvruKaBShBIYuMTqRFkOySL+VlUwk3xCBk9E52qz25jXoZC0WB5Lv01IOKXQNXfz209tCOnKl00S6W8I9mztjKOYQqakwWRCGaFEwpsoshpj20Tdq7Rv88Y4TCG87zKWELtp7YdfajYD8UU2dYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1nOwzPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1nOwzPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CC2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743916193;
	bh=pvc/G3mnpQgySG181vg3rNXerj0f+kGMHdvDy2e0WY4=;
	h=To:Subject:From:Date:From;
	b=o1nOwzPH++iFBhxCy6Wl2dH7HZ32UJPBkBayufYcZIsdpf6Q9OX2s2vWay6UxRPBS
	 MJPSqXNY0atEWonx4naCcaV71T7qex/T14kITByhX6kVb3AcZmIwkC16Tu6Igw6D9p
	 XJgHBdCUQ1XacFJxhWZfOv5G+op8RskPjAqEsxPojNVZnRl25s3TkLXhlsfn4Mmw1B
	 YWTOkiXnZdZY93HY4cSqOthdwhrDVqjhmWyN91Bt/Rdhmarym3jbgrnoWjp5l1/dbp
	 0/7TM9Q4XYGn3EiFWUvm93BJjrW6X4GIEYEEpgNz/XcdclAGv6tA0OooXjJ5i+Y/Mg
	 xjhWAtUp0MfsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECCC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391619358.2975.1345633536321244327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef3ac8cdca7d343375d1db1168ec750cf104027384ef91aedd89971859dc0461
Date: Sun, 06 Apr 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743916193
