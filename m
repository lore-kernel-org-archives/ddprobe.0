Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E07F54645
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724587554; cv=none; b=lslUKTgvK7AOjLUQ7V8yHDiieVZ3m/axC9Fr80fTfLjq7pmf3EVnTnSbbmEv30oOEz8pCB3ibKN/tWOuDLDsAFgFoShCt2WvBkwQIZxXtIjFnRvhuFAU49RwGyowap9lz5TUksZwQlJfI4l9H7W+NNDYIrOPcZzBwHeXoLoAHVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724587554; c=relaxed/simple;
	bh=3ATYMGtMSibr54x2EFKHE/JlPJTlMMiP5J2zag98aUM=;
	h=To:Subject:From:Message-Id:Date; b=XyiWmF2W4jy/RJjpOHzK3g2CKmKNVM/ubSJ05l9Sydrfnyvsvtvtz74A16oaAPXLPJO2DDC+2ovh3ySzB4Ofk/XzG/lipGxeFwmwP5MJnLJqM7wTAxy+EzcxiiAQseX04ZsGyXlkvS82XB/PXawNumBK1nDljK0n55sj/DsZdOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OsRoyE1r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OsRoyE1r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39FAC32782
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724587553;
	bh=3ATYMGtMSibr54x2EFKHE/JlPJTlMMiP5J2zag98aUM=;
	h=To:Subject:From:Date:From;
	b=OsRoyE1rwNs0lm9uho64uMOo30CBs+n7fp2hkD9KqbgKQ3H45ep6IMZ0DJt+GhqXz
	 kWiP0vXtqUfbcIp1ZDbBuhOnGSvEw6wSZN5L8F1wi4s0APPiqjR0ZJvahg0jknOl5b
	 c2344Ml9ipBy0QaKz6nmF5kAxc57k2mmu4SOvCsNEIauURRYPzp1C+9zW6TDlLN/CL
	 UTYXgDUPZU8NSfk0X9W6HPgKW0QS7SjCt4JrkvOoufqhNU0oAdpm7ew1LLahAfzz1i
	 uoBM8/MF6cFm9yp4FFZgz5gI01FW+meht+8zi5amSDoeCv3lLqg/htvhLWeP4FsqGx
	 z//YtF2mXfUVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB29C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172458755361.28758.5990463762798762866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40bc7f051cb2c086e0d5ed9d1c79e6cfe255ff7482d5c306a84680a2d467903f
Date: Sun, 25 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724587553
