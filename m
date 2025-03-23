Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 378391EB5E9
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742693394; cv=none; b=ZpWjER0ZRtk/iYDnz3W/QkZVG5SbMmDjZRCIz5ptuD9ZN33D3+XNzqd/0WcYKgJkJ4vmvlkvu0+8nGUCQEWkq8bpVz/euFKN7pCcg+OAJhL4y7SgRoGPSlFzbGWludYHiQnvhi8eNeFJNatVjq2176NPb61mNnZNlfgHsVoVxac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742693394; c=relaxed/simple;
	bh=MndtS0wZHrWV/1ZJBLgMMSxCUZ36OwmDgJt1v+dYVZI=;
	h=To:Subject:From:Message-Id:Date; b=kzaBraX6ZH1PGQFj/zMZYO7A6RFx9jRkHYt4HJGIWgy5AvaqP6ujQENQjs35sKI/4mFjc0HmQGwwuL4zjwvhMG92OhsiNpaCfsv7yDmbwzrD70V3vPrJOEMtv0WAFlmRZCCTVKSz4yJ6ThPUSM+D0EAV8dBKvGC/aWF5od12B3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S8afjMGO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S8afjMGO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2699C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742693393;
	bh=MndtS0wZHrWV/1ZJBLgMMSxCUZ36OwmDgJt1v+dYVZI=;
	h=To:Subject:From:Date:From;
	b=S8afjMGO+3y0KSx2x7w1jJ/UPnK1BYZc7L7l0o5BnWeU9t+HGoFrtWJA5PPNNgmHk
	 Zl7MpGKltLJPu+YvRf/3UgmGjFU9p+Ha1Sj+6jV18bC2PlVzUDn6isyUCHK1fLxQr/
	 La3qbYkT6+tPjsaQyViiDaO0m4E17UkdQl1l3PLOUUKaOYk15fC0HRackqNZPHS6ig
	 p19OlOgYDllh1kacmFKPJ6EJ5HQ69Gi9V73juXZc0XIl7BDrjmn7gt+wKBXPHggpy6
	 rW+CYzsaMVmXFEmhFkCiwTOXOHV++xSMDDku7iyWR/CAvy1NhQXxTbFMXGQ9vvB4ug
	 I2BOfpbR3lSew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAF5C35FFC
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174269339359.19081.1656365927188875169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e057622a86dfe959944d0cbc1972d9f756573635b1f5860bf5a897d9cac20ff3
Date: Sun, 23 Mar 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742693393
