Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD011E0E14
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785384034; cv=none; b=WFmjgHMm2BY0ZQDkNp63WBhIyo0IN3SuAqkirhTPiZa+ZHGksypelMU6/0vVgxPAYd+d+tojhcm7XOttrw/PEdYY1dK7/QcbhRkOHdITuvHKOijb+a3LvaYJGps1LTogKWw/muEocA/hYt6VUxwaCwPUqYq4CmaiTLvNIgPbfGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785384034; c=relaxed/simple;
	bh=HeUURYI2kdH1HIyMy7sK38PFAa6JVnMKr/calDtHusY=;
	h=To:Subject:From:Message-Id:Date; b=abO6wEvqB1rDmZu5iJYqmj/f5+dIJskYwgbOs8DyvmlSexLg2/XkU6gisme2l0sePea+pc1GctqXF3SJp5I4dYj+9Q6nQT3NvO4X49LHHD8DBBT5/VsVhg3HNIf5meyYTbFNNTXKUjMyuTDR5WCjyVDQs6O8cOTpRE4GewW9Qxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9UHlPZc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9UHlPZc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B49C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785384033;
	bh=HeUURYI2kdH1HIyMy7sK38PFAa6JVnMKr/calDtHusY=;
	h=To:Subject:From:Date:From;
	b=H9UHlPZcq79SRpF7isz7W2b7n0sYuIn+GubM7KgsauwMutJc7X8l54WYlRP+A7EOb
	 zSfHZysusDaFfG48A6mKU9pdiuHJHCyyM/bxpFlyQbqoTyDL1kh5UlXe2GbQMuEy7x
	 c7luIuL7wY+PWOG93VaePLecG9DXkjCPsZ2m8UTPKHkWY9ZLudlUniWNBnFL3yvMLi
	 YydAS7GAdTbcGZjZaZ6UfftGWxSdSzbBH7Tr/JsEAu6KOCdMGuKFWW81gjkE1mXQFJ
	 6sljoUUP5YXRYkq42FVMYWexRAU0LeJdQkz5VQOGuOIPbO0w3xE6WW0DvBfCRnJTdZ
	 bjdyXXfhb7kZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B72C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 04:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538403373.9827.13854821064639619694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066208ccfece7bc3b15e87e8408676fb548e3224fbc002867ffe717d7dbd2d9a
Date: Thu, 30 Jul 2026 04:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785384033
