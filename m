Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3519D223DFB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745390994; cv=none; b=qHC2xkjPxTXMocLLpZ74+xOCzslzrkkTUrl/dUuhoEv1L0wpbmcgA6YBGKCdyvfe6N9WPjSiAw4hqEB365LtxSlk4MIA6W2aPLYnlD7DlBPO4C+k9Lt0LTN8+8cPQvXiSoHItdC3vZMNxFZUQleMsP5QNJ3iY7hFCeEYl56iGkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745390994; c=relaxed/simple;
	bh=sT01zOJjzdspGo4YJZgQiqTYglr3KADesvvRSecodVU=;
	h=To:Subject:From:Message-Id:Date; b=JekR88y6lDzXSlkzicd7ljyBeinwSKqGZ+9YkHFaWbPurV2MkbzqV3b36J4lxv9sJR42X0SCOkOhnY8FfhhW4w7uQYcPdf+0f0NqlVd0XvzfysVS+Fgeqt57lCCtaZ8zofpas+GbaZBz8ZRv76bEc8Cupg2vf9s/OKmLgqHzC5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eNVDffy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eNVDffy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EAC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745390993;
	bh=sT01zOJjzdspGo4YJZgQiqTYglr3KADesvvRSecodVU=;
	h=To:Subject:From:Date:From;
	b=eNVDffy9XcGDYLTl2PaEmfCArd3ERqWqHuI/zV1ozq9Y/hefoLqBiyq48BV4GT7vz
	 B6Y0TopwaIYIdzFptd3OxCLxAfhI02w8cM05lnnNsDPVlcf8ncxQWx1A8B0R5OPRbc
	 n4xvdsaa/WXYfWJpPs2XuQyqJTBu9t7zm/+jINsUKyuEeTHcJDxWN4jHoDacUJONXX
	 cV9nqZafQII0nyCqYAA6qTLsXk/9uE6sgV/reWkHS+jvgxtWPAfjO/jzH9RaAkOC45
	 +MtNQepXQ4UM4jVJ1eOsnvYlTTVJ/0h2c+BBi2ChuZXaVXjsusdlQYXnA9kLuocYmP
	 hOODWwMM26+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929DEC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174539099358.23163.17583307128038773684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 218ef33fce726bb663e5f6be247b9ec809f1d86c05bb792889f645de56294bd0
Date: Wed, 23 Apr 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745390993
