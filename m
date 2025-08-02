Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1398FAD5A
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754093994; cv=none; b=PzDga2RaxDjHiSsxDGxH43GqNJcOxWxNZVVbuwZRYrf22G7ZWta3aPDpBac3QzI/p5I3R6LoB/QszBMeuhOgk4SkcPoVRzsX0gBLjSkofNWiBxcLQ0FlfouW1cTUJnHp+wSW//yu6gHBEscx9hoG3ZZrcj1PEVZk7466mOygRFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754093994; c=relaxed/simple;
	bh=5JX+vF4OXXgkRpGEge69K0rWSY5Q2qwVP6xhJpa7DV4=;
	h=To:Subject:From:Message-Id:Date; b=SQJACURpklF8pFEH9PmG6eYJ6hIdxe7S2gSSpZpKX4SV/GEUGhyDECNgxO/nXBGhEeRJJoyAhBEEwGH4BWTBW8fJz+wAaG5Enxf/fy85EaMgLllmS19nNjEv4kLz69xvlvgHBNbKjMSVmeCGjosXOgoMQr1LGepWd3ghs61LKGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QH1JRFv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QH1JRFv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EC4C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754093993;
	bh=5JX+vF4OXXgkRpGEge69K0rWSY5Q2qwVP6xhJpa7DV4=;
	h=To:Subject:From:Date:From;
	b=QH1JRFv4QYulLzfG6lQ7foKE3zYTvMOt1EIM/CrOUH7v4kLuq0NrbloCO7MmdIDj3
	 KDedVd3m6Nd9BmikReUaQP6hBIVv9l7QYes0DgKobMnyYI8yKSRSS/4Uw9E85aHG/M
	 EcCk3yJi/vzUe2GkFdyowxdojyobbWWzuiagn232tw9fu+x7TUgBMqMKmfn/wW4FWp
	 u+GFt9rrdVJxntgFeQpo+cXw9AQ2/kWMID7SUGV+DOw9wx4U8Vpy0wtPHqbd7wBwNC
	 nW4PK5itZsRY9HBhxQiY+5rwU6V5G6KqbpTG7vroxHkIXDQ32UQawNcCoybabDdnFh
	 pWNsU36PNIZow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A8EC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409399358.17586.11735666866953627173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7ec509b9d79ceb2bfbea96c300260312f6b45809ee845195474f95c4972a21a
Date: Sat, 02 Aug 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754093993
