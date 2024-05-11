Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595891BC3F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715454743; cv=none; b=hY1afNcfy5kSuZ4mqAEiJhv8OvwDAnqGUHQLYjRS9lPYQaW39p9X6q3MbCpvJaH7F/+KfY9nzpSCe2P6zSWkSx0J7dyxNtS4gntuGNuNJ75jy82GHeMdOl5gx1df6k0zv95RIjg1hKFCeTYieiKUMux9Jb5YuiDLhvdRHmUaJ8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715454743; c=relaxed/simple;
	bh=x92zpli2ouDA4O0K7xQng4kW/zxBZdTwOQWzmnKrssI=;
	h=To:Subject:From:Message-Id:Date; b=HOGjHqCoWj/XzTuqgBdA2wiSrWvnmuTL501yqkL7F/ep0F85L4DkP8mDqwD7EDLkcEMLhQLSCz/N5Ak7JfNWDr7CYexo/oYJtnTkWo/GbnXL7Xb3Alp10xkHyy7fVDi/xkHQF4HYDpkNBYsrLn4FB/j48283gV4h6lxpU262KcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGtZTwyb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGtZTwyb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E21E2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715454742;
	bh=x92zpli2ouDA4O0K7xQng4kW/zxBZdTwOQWzmnKrssI=;
	h=To:Subject:From:Date:From;
	b=IGtZTwybANzi/tCjZ/wM8+VzuO5O8LwsEq+0aPi47Nu9uuQ7WQ7ptzRHT2kajAajs
	 GSuVwYpTXjlPnRS/Wnr14wtSB5/wpkE9jQ9+aeghyGQrzlCau5tmxj25esG29rcxlD
	 Lk/acY5FIN0lj3bhVOq1BCMKjpnT1L6358P6A7bjRbNCa2RzmD9raCRUf+olnquAem
	 EVF1nvcl9Yi4jLqNo/Vz0ynNmH3m9+Y9PolXXL1Ou5M8fcXmQVOg62qLu3I9LqGOyL
	 AxonASZ4bGtMSTm0SwMo0UVzZ/xGYDWV7jQp1NtCoGqY0R0xkp4JSRXmUGp4TPGgmv
	 saRKES+9eKnlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD175C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171545474280.29650.6353517330592022624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca99a5c540e8e6b68d45203cd71364893136d24f5204ebe99881d7b4f949a52a
Date: Sat, 11 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715454742
