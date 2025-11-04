Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAF82ECE96
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762239594; cv=none; b=t6HzA0YMVG/OYZQAW0pRUBEG0wOiDnNGdvinVF/aTwgMPq3uderNz6eHxeBIHvk0jLIuutGOKZl/oTZWA6pOJ2jd5lNg7WKTfCDEoINydB13Nvrio3wzRJ0sHJQbyZsmnqVcVG8OY3LWEZy0qtmI+m2YjTYRw7wdedRPpEhhr3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762239594; c=relaxed/simple;
	bh=qPmZn/3fDmJ/v6+L/C7VA6EC7/0a7f4gkoCwOByGC10=;
	h=To:Subject:From:Message-Id:Date; b=b6W0tQYYvV7ZJaNabaSDGGnhHt+D7tQL6EVkoy9fe9ZydUMKCZYrrj28brBf1/8QZY9Zz4XltnGQnWL6xtgf79nX/ayN+6LqD5bYUqdpnvqrS1PptPaW2nf0yTaUquABXzVg5lNcdBFLVFD/kj7Tzfu/U25svbfjDlTNfRQBbsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxHz/2WH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxHz/2WH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D801C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762239593;
	bh=qPmZn/3fDmJ/v6+L/C7VA6EC7/0a7f4gkoCwOByGC10=;
	h=To:Subject:From:Date:From;
	b=JxHz/2WHfvxS3bfFRvfYswea+HgloG0qZ4AalBpzwOnOg4a2K1og9J7wXQTZEkpGT
	 +mGFbtPIX1VLpBOoHUBrlQoiDkmfGPB0Uo2JoT9VP4U6tyDCHYxGXllhaeo0L9jden
	 uEGDRcnr4RC8qGaNS2bNMhtP9NQaFPj6700e5vdMXkZBHdaZFWyU3hvtdwEciGIsiI
	 oZ3FI8UaROwtt5ksdSCBaDLAv4AuX3oX7zsn0OaXrggbnN0zLTAeiHzJ74GK80AING
	 jH56rqz5oKfNN4TAfs6Aeo9XgDXMB3+udHLK8DefUgPHc6zwTNLtHaG9JYx5TbKU7U
	 KCSsHDVlg1weQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB0FCCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176223959358.22406.12741115685832709622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7dfe36b24b1f2e554b60d8a274620faf29dea8498fdac0b81ac54f7b1fb7099
Date: Tue, 04 Nov 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762239593
