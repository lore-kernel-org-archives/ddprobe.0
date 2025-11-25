Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8121A3160
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764047574; cv=none; b=YD+lbZEMsFkfhVA6ZeFCPQKtk1H/olt2FtosdoXFkI43XB19artae3RjBMZpFponNU3qGXiFTCtpoJY5n17fqT4oPpg2EM+HoPImgfIagyV9Xll3b6I4c/WY4BvJB9Fli0wO3tOORHzU+14dvcMJTmoLsbW3+RccqEp1qhKeSV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764047574; c=relaxed/simple;
	bh=+qLmvqkIJINE77ULQ8AYsa7BoNisQxmvRO1ci7+edM8=;
	h=To:Subject:From:Message-Id:Date; b=LwSmxbCGoM5tsJOoJan/7K3xs3OZ3stEajP0smYP6ZLi567h0mpK7b0ZD6Nxe4UtiC06hkrdtl5yXA7arsUtLzGwM87zjw/PkzxgYEmeeA9eYqL2tBAIn3fhJJtH2nvo/BpBM7pwYwJYFkiXl4LW1C1cGEf73iO0DjMg2fjFMLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J30C5D9h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J30C5D9h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DDDC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764047573;
	bh=+qLmvqkIJINE77ULQ8AYsa7BoNisQxmvRO1ci7+edM8=;
	h=To:Subject:From:Date:From;
	b=J30C5D9hLC3P1kfdDUxbWcW0OPPJJ00ce3CWLqm1zdnmNoSBnHCIKci2E6izVswGY
	 rLgTPcPh8kqxlkAEZa6/vA4Stw3VUkvd37T2gDGbL6hbmSovqdwZSQFFjXjAvISU6M
	 HVpcrDemDU0YPrFqER2qt5jWQsh0iY08FUlsX0RpyDuOQ1ogqm3Ke/JJAAviayA8Pz
	 A6b3hxYcR2TttEAoqbf2jeCM1dhcUBgerkXyjftR0dUUCQzWNIi7cY9O6xg1ZCsOjX
	 szsFCLjx13RF/zjICfpJDAnuW0fi4pYcqmDPqkUF/6SYBdiUCZSxXhKY7pt8P4sGKu
	 +B8s5jz7qkhJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C30CFD36C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404757358.19185.12594507128428639648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e240fedb1a2775455b856093c7c009026adfa6e8c3835dd2c45cf696c1edd7
Date: Tue, 25 Nov 2025 05:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764047573
