Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 506AC3EE1F8
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791458434; cv=none; b=GdAvRC1fb8tpudf6rhctIE9x4Iwez7UPTJUY5n7d0XVCRdGNAbnUzPW+h6bGxofiY2DtRMqhG801bpHspTCu6kt15UHT4zICvLCMmQuJAIAruPlsc07vZFZg5E/gmy6X5KkbJX65c7gCKE9AXAxstsE7hWSTYvF1S1u3G/EnH78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791458434; c=relaxed/simple;
	bh=eXfGotoB+bp8iMtinR4KWY2hEbQhb22NJM8dyLQD6Ac=;
	h=To:Subject:From:Message-Id:Date; b=PfDXhp6O5L+2j3IdjYzGbtKGNQhS9rnm2bsZRDVWbrEhUAys8/qjgbs7YaQ3+M+CNzd/qUJDLTUnoZQYM/KZNANk/QDF4vHRbNQBYNfybTduW1W6vOb2AlE0uMC8kEo4b5YKC3C3kdIdsEqLYfrAnaHOBu0uhIzfGkAhuDye7oM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8oJDmuk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8oJDmuk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D368FC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791458433;
	bh=eXfGotoB+bp8iMtinR4KWY2hEbQhb22NJM8dyLQD6Ac=;
	h=To:Subject:From:Date:From;
	b=T8oJDmukF7+Me4kWEu8X4z38ZJ/0bzgNdTZvUFFuRuRB8c1N9w5FNgmpbilJqVOEH
	 4f28Qz5Ob7FoLI+7ZC9IgrYCpqd6wkeFAoxr5rwIIfUQbZ3TIt1ulH8SzYFCnXafFl
	 5OpqZA6ITR8lnNgzJc8Bzk6W2WvFhL/VO9qQHJ2mQ4THlD4AaYJdsu/i6PXXKmAsf+
	 arswrO9qXs6Ynv7MnSSnTb0NIqWXb0dBJCOd9t4i9w0tDa3k/5+UfcHhPEXe81M4P3
	 ThuIOOfqGxvbGXs5+b8jF0RaVTZgsFxLv+1Flg3y5Ubb1cpqdKBUkOwmaD8KhAZoIL
	 IrmVT6CY3iMgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB02CCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145843369.18533.8756210502468606673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f153a4369df7122a0f38f79372155aa1acb37ca1b465e8f83705b9f8373f62cb
Date: Thu, 08 Oct 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791458433
