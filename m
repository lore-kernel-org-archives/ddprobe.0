Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A4EC2C8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735837554; cv=none; b=WM0cEeqZlrJ+Iii2lNx0jBKOmSGME6nCvF2bOktxYqeuUhwgLDJOtlis1ZbALm1XHjSA7jnquRdC5IND0wuiWyxKrqNpQHiC+g+c5C24omrH+HAjhyJg1a04mZOR6vb5WDSAPNsujOGstwBkly6Kc00Mg53QHBQludIr08r1VqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735837554; c=relaxed/simple;
	bh=qA19h+ikLzBdWf3h6YY+32nmMYuCu5ft1nBCSzT3J4k=;
	h=To:Subject:From:Message-Id:Date; b=KIHDK9BGpcZjqtMd3sKfJyrYa3HeGipeDwlyHdTHtMo9GBrGIp6XlCHkwM5h4VV9YlCVfGel/TyhC1lhdcX/kHmHsnmKqFpMf4jk5B1b/VrmU+xtQxP2ZDvGyeE8HEg6Hv72/LkfDD2P6R4JCtsK9VBGz4hhS31HUij2/VgUmmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gyg/Wzqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gyg/Wzqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00ADC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735837553;
	bh=qA19h+ikLzBdWf3h6YY+32nmMYuCu5ft1nBCSzT3J4k=;
	h=To:Subject:From:Date:From;
	b=Gyg/Wzqq/+WxGIEBAtwfxb6cfrdyoQ+5Ci0WzCqHtl7fUsie7C8beoSDHp7Lq9a+7
	 4aAHKQpqOFRlV6cEILG/cNF1XccFT1BHTb2NX0CsEWZq20jByGKisQ7zDbJuSC/HvU
	 nMNyBhVjezNUgb/CaQckCH4ja0t1zxpYugjTD77xZ1ZCglsXZ6unvvA42JeW+0JfKC
	 FY2yqYn7PoT9t+1Trp07PuijLSEBUSWS0ficR61pY94i8t86HQtrFC5lYyYb5C1DO7
	 QDmX/EmDMO49dW1dKclUrnfwDkdwczbU6JP9J1DxoO7MQ0KZKSAb7EteL/FfhmQ1ky
	 Vq/pfsr1FpS9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90629E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583755358.2918.12715137681809521677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65b9c63b04b2bd1e469c8520000efc60e9899b5fb45908921dcba0c7a42a3c71
Date: Thu, 02 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735837553
