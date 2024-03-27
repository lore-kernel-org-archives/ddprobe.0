Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3E41E511
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 15:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711552696; cv=none; b=RpBYy2tLvFECxV8SCjLxc7uneBUSeRx9FQrPGt0YcGPaWl8uNk+FqMVL4oA24r4oAKO1QkkbYKFZsH1L8ihi0i8fhM6HJZBVn9KQYqAI/gFwgu+Jq83eQqssqmJfmNbmpcq509wNBwOP5OkWksvaept3dBZLv9m61bLF8T3PQUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711552696; c=relaxed/simple;
	bh=KwsW4+VbWHOqzOqYeWvH2dZWja5eHxT7ap4maimuyRU=;
	h=To:Subject:From:Message-Id:Date; b=KgcTbq7+fxbijKQNKQjtSA3cEVQuhJGLZPIkyy89Gm8YO7Mi1dSuCYOC2xV4zFI5LHZLQ62MujrIZWtTSf2yzh1imxI7UElTI6IB+X+fGz3+RdLj968jMW4XaJjrFnONgDQs6temcJM+R5r5nUWIJjznPGbmNuRVd7C10AaYxWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kka/9D+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kka/9D+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90DD8C433F1
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 15:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711552696;
	bh=KwsW4+VbWHOqzOqYeWvH2dZWja5eHxT7ap4maimuyRU=;
	h=To:Subject:From:Date:From;
	b=kka/9D+0VWlJfGCiFRoKShTZPalOVGPJNwVSCOLY49r0xZyvbW2UKFHA6redgfGUF
	 uCzZ7/tPAAsioaPN5qOiiqcxJk/ULsSvuqtatiPPH1/b7K7GK6w+V69pLYBMeQM3kd
	 amPpSsdgA97hCEWyK10VGBBMVtL0e96qCGkjeqwqn3Rk8bmZ2XiXim/Yy3J9zHsYEu
	 yoNDL8TvXs0+NEbugZoUHyUMObcqpK5kSUM9+LVqTeso7YJoA2llxwHbtAgVSYL2n2
	 VRltKAb5Cth9gJidJpdEWBZJvBpkUYzaIR5or2bOcybxP7hc00QUvAmGILTPKMMQlD
	 iO2gfxS3S1gGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7973FC54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 15:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171155269648.17472.14273779802614484975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99ca14325d19098f807e1a1f5f3dbb8d60c94b4c420380dc4dc46a1018f42d3b
Date: Wed, 27 Mar 2024 15:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711552696
