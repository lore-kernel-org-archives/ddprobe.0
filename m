Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D82C5B1FB
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731023154; cv=none; b=aajV0w4R9pSbZorM/cghjS5SxNt0JjIfhLYRYeCsGp7bxRV9g1OWSmzVP+4SZc9R2SCksbx/u9wdohXwXnhHwgCCitSFEjZxWE5k2Rza0tbQCBQBtmt9+tCLciGwawNWqdIU9g/rphbdavv0JOY7HMN6J7yzYWF7qogsGMYM/Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731023154; c=relaxed/simple;
	bh=31dCweA2sJX63iQkt0aGhYeVoEHMdD7C+t7VFOfC2Wo=;
	h=To:Subject:From:Message-Id:Date; b=eDO/CIfSg+YmxkZq6nRJaZXVbfiU46qPZgBXBIeiZ9M9fLMV/uFkMIngMCLgPavpj22CTXSpsMbRe31d2/17jIh4c0s9KHeBJo7LH8th9tmUEsXyEZY7mzGZHtALcuLU+cNt+M9XRTTryfBGcwFHS5CdOF4yEG9huTGvZDLCFgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bXCSzpcE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bXCSzpcE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7171C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731023153;
	bh=31dCweA2sJX63iQkt0aGhYeVoEHMdD7C+t7VFOfC2Wo=;
	h=To:Subject:From:Date:From;
	b=bXCSzpcEeJIxEjw3SjDHdo4rns1vbumdlqQeaV5Sjt7SESXBlj1xBu4ZXEgOkQCM6
	 8QJrYd5dNMcwiOYqUNvw0mXjWHHIAcyvkXYlCX3B/CXOqsHQ6/UjMbo1lNbUfov4Jx
	 huslwd750fM/+ni/tT/6uL7c71xB0wAcQTRY53xRg760SMEnuFJzA/HjqyEv+qHf6T
	 b0Miy+xITfx8TIZwuxY7/9ak5RZxnAGGb/zsmTBTiAM0BZtSDYLKoIrzB2zDd7F6h0
	 0EFqV9szPSaYuW3jY6e+0DTK5iBkt14yqHecZ767Clj6Bgy2tPqD1onuT3hfpdn08B
	 W/82ATIVw1Img==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C8CD5D695
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102315358.2075.16443767194824161853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9082e81defb3e65adf06de6f359b41ce935528423109ac07a5a1987151920cb9
Date: Thu, 07 Nov 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731023153
