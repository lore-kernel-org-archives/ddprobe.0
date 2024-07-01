Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496326E2BE
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:04:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719817463; cv=none; b=qujBihmKOHWhv4zvENW3HcI7pnZ5T2TIpYAvfrpVtauDx7UTF0MuZmAZskKq6TF/jOcBt8bkH2M/WrmeeFP9+UojXy8aYWlCbEKepW87MvAxo+ijR+dMY/bqLdPF42kiJDVC4mlHfLzP3CSKNBbWo9yEa7R7+v605nwlg1ogwvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719817463; c=relaxed/simple;
	bh=wvZg09JDEJzseoT05mCVtt3nxpjQQn1vHVbBQAFSk6g=;
	h=To:Subject:From:Message-Id:Date; b=J2udb0oVsICElfbHl4+85QTh84QSRej4MfYvqyTSDe+6VCzC+biMecAw9viyxyNFPrENYTQvu3h4ocBDfBKJFXKiu6wbOtAIw0nFbM7W84vxaPMN2Gqc3ZG8BRhyD0EiTzYpSah9c1e3HXSIp7Ub3V5wBF5g3agA1bkqkwxX8OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWv+bnWn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWv+bnWn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF986C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719817462;
	bh=wvZg09JDEJzseoT05mCVtt3nxpjQQn1vHVbBQAFSk6g=;
	h=To:Subject:From:Date:From;
	b=BWv+bnWnc9ovl/OJyKY1f969VWiKfAozBZw7hRlbiqVzC1rqxQvjiPN34oE7PQ45g
	 fayCCyN9ZfpLLnY7rL6ZzFT+IWV5iCeOlpZodZWKgWkf2q1htlpEC8DxCHFV45AW+9
	 nvJ5+W8zwajE4zW6YoD46jvJ1UV98nL49DdfSx+TKXb46hmBdbVz7f2V/mRN4xEbcN
	 szsYP5zYRMzbzM1I6LV5DruF6dwxrHk95Odk1hqAvC8YDWWqmxCbiIL0oI6GqxxOCQ
	 CIzrgk9ZFhcx3tg79MPt0FIfapcoF3eY8DWSyR3nDpGikLkaydOy7pFiOXZyVfdI5D
	 XNcY0MFonhsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF40C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171981746276.24375.10770300682684747135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c67cd2df6372c08498208b9a2db8edc1b43a23c74180b91beb98f7b7f43f7a7b
Date: Mon, 01 Jul 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719817462
