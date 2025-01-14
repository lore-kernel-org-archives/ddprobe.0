Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F2719149F
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736874354; cv=none; b=cLN32Ym+/OPyhUkWaXtqjB3ETdgMkRMxBn28SP3tU/cwue2DN3dcowgC9bN7Rndu2945WIF7AWEDqrnh96upmwRHQUiuoeHplIAViJqxLY0g59taiyjQ4V44V/Bv84IAqueABU085quQf3BRTf4qxSw/wVaryu7gu9dtWwKvB2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736874354; c=relaxed/simple;
	bh=tsQ+Iqz5ap9JvGmQ6G82c+zkFP5P3pa1CWLrxoR/Eck=;
	h=To:Subject:From:Message-Id:Date; b=TA2hPfjdN7HxMK+IZOJyb7gLAojG+Df0HKrmnXbhGS12arFPicotkOm4t6Hrpyr5UdS4PtqP3Qop56UMoTTalyCQSZ2FCQB3rqaA+agLFGZQ5V34a+Qh4quvxFu/OShUsluHtZ6Matn31PajOZN3ATtvzOso8APqZZLh8ozYLrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEwpdup/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEwpdup/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D1EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736874353;
	bh=tsQ+Iqz5ap9JvGmQ6G82c+zkFP5P3pa1CWLrxoR/Eck=;
	h=To:Subject:From:Date:From;
	b=XEwpdup/EHbZXNNkspt4jHVG38Ks99ne42hsC6r6zI9YBk93lgkLxHW0JhFE0mQGE
	 794ORNM2Urgn6logb5wpXtEw05keI960yf6q59p7cC45BnwlzB+AeRxCC8aCYSGcoq
	 yAlvQBNsWGHifTEzdmdLL7iuDaoUTqOPi56/FXV7MxEKAuox19vpq3PTeIgvaEk60m
	 v/6fUOV9C++1rMbAig42gp0CaE00n4v9whML0sUKQxCQBYMM9oiPim8T4+z2FIYrax
	 rfviGOhxL90pbEWqTJd14oL9LCuktXc30JRIMqtPeyedJLHppAkoCD4uEc8EzsNJ9f
	 XLEBO7DrnzAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBBE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173687435359.22998.9251077543729267492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed98d247a4ebc497b3f721a8e3859ec297015bcb734366c7b838b94391babc75
Date: Tue, 14 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736874353
