Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BE73FC2
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764648174; cv=none; b=sQFececXbkI294g4onEYOXJ2g7XCXYttvQWMl18ur8rGiLvGtrxWZpeuvvD/azKQpcEHiA+ddmgrcAHNt7OoZ6S9J7xrRIAXmFGHqYVM+EAum6uXzI/oGvTaQOvnYItt0AFBCJT3sURSxqvzaeNWLi/DiicjiB6544QkO3JvaUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764648174; c=relaxed/simple;
	bh=duKw0r4YZyUmgiFB6Yz2XLo7yLkcaKqeCFX+WNrlDE8=;
	h=To:Subject:From:Message-Id:Date; b=iKhBQK4Mxs2FM3ZbkOCvzEl7+voHbm+xfgS+t8vr46Ds76+3C+7qHinfasPUSAK6AFJ/tUrn6v1mpwmfOMrvAJFQ7rsMqR74bvF2RhkTsErj8l+lumBy9BOzzll8wDRjwk4ALVhM80ZUthvucCIoNyPp7bfnlzqywxS2aiqv/3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jfry+Xw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jfry+Xw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1672C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764648173;
	bh=duKw0r4YZyUmgiFB6Yz2XLo7yLkcaKqeCFX+WNrlDE8=;
	h=To:Subject:From:Date:From;
	b=Jfry+Xw2+MY3XzhxtM+Womg+OKFUC2NBaSsUe1SBlvEr5TAuBqN/ExNDUbErxHRJk
	 Ane+l/305QsvYd9WzeRizAPLKziAQDl/Cx2KvaSKZZWVzmTjShc4MgvhhEzUI1gvi9
	 I66Yyq/0P0AvsY/7nVlhzsRGsXYVV3VeemHgCgmPRm+zmIHBUEmMdApFBa+GzRRKBY
	 8f7PvaZzKgPTyKYFqJWnWCmFmzNhRlVpo4NY9lXxlk50t3GJf0832o5MoHL9yuhvEn
	 5N89LLTJ4oeO89R2GK371xy5dUKuSRvmoTqvp9zanOL38djsOKSDRbO26ogszMb8LF
	 T9Jz1oodN6hEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ECFCFD2F6
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 04:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176464817358.15880.16940304662120858954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d735812204583ce1f3cdd688f356d47645fdaba7dd79015824ad022e5f94671f
Date: Tue, 02 Dec 2025 04:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764648173
