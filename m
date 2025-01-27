Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CA81FBEB8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737960954; cv=none; b=QUZ51+tTSRbzq0o80CJ6WHMBtM6ELvw83zYxO7lER9TliJrFRxrMlNO8hzgUakS5FNZvQYtDdl4JyUizWDJQdoGPDrgrTuxB8fEAE22g7jmQhhVkNcVJUo/hMsAL3nWlnCjTqiNnrhWlkveHQa2yGMXwoAocVJOATIkBcb+j/nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737960954; c=relaxed/simple;
	bh=sDzICONb6SzfXQHPgTfeFlzuiEnI1+2Di5l7Vf32YNA=;
	h=To:Subject:From:Message-Id:Date; b=h5Kub8MyWh9EGJBGkzR4TzI0bnXYc9PTtY498n+JmGjNgfg7Ut7eXH2iNe95YHtUAti13i0i3eBq9YYoMvKLudN65ytZJpGJSQ7eAtqQq19Lld9y0Ew5UpqXTsnZMWFlUqeNolBvaU2lJEkVB0fCNiSWDkGz5vthEbk2fnLkabQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pb5wtk77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pb5wtk77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E5EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737960953;
	bh=sDzICONb6SzfXQHPgTfeFlzuiEnI1+2Di5l7Vf32YNA=;
	h=To:Subject:From:Date:From;
	b=Pb5wtk778SemC+6UqzXqbiTkgQfDx0AWrHJcj0GOwoTkKX4GXsOfdWpt5WcWG0Ku2
	 bQUPDjXtotchNJIhX6+iY46UZL49SK6JzI5B10IRso8J627fN6afiXNUyAqeqSLEPr
	 D7bTlgf0G1AyFrRb6ZdI9fhqdxS8dcuQCkPik2H+xFC2TUnf/b2UkE0KsoOXwhoQi3
	 03ldct4WJti0pKLrd0Y2ks9QjMksGfI0NjoLZe4v/zF+/9rSrwc5YjRMZ/l1zaNRHl
	 oywVOw6gctuGUBs5aJTwcGzFgXZvwmyLbit+VNVNTFaUOWJS8azHIRlWZhIZFKuVGV
	 nEJTM8KlO89cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391CC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796095358.24195.378583269133256587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25faa9a029e7838a1ea358205510e8631f94f5a327e05a96be5135a25bb5d8ea
Date: Mon, 27 Jan 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737960953
