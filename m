Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE4D32863D
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781364394; cv=none; b=kHgPSslRpl3wA6J+hSMnMXUxqizoIk2/whzZUEAY8L2KQqimYYBB61ZIYJDgiH7vWzZfJeb6y9hY+J6mUOL95WCB75LuLsDV0XPhEgByuw4LUcb1WzINDrgqhTuQ9rP37vWmibek2RHvCWUv7faiRmHSseIEq0tBJhPZouV+VkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781364394; c=relaxed/simple;
	bh=cyQ6C1vk0VO/8ghKVmWZpSVCLFuOL0BeJhU0UXGMVOk=;
	h=To:Subject:From:Message-Id:Date; b=j+rcIQvUp37H0XZEjgw5J7/hpf7vvg81fNv1jS74IVA11C+2RS9yT/c4i3OsI/wKGQdHJUhTqrrJ5khzdbq1vrPWq3jTSi7IQZAJWFdZazYXcGjPaHzjWuCsAJXJezjJHFpB0D3OYm2ONorevC8aAbFjbTWUtRXx47rxW+EWLj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VquxatPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VquxatPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E48C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781364393;
	bh=cyQ6C1vk0VO/8ghKVmWZpSVCLFuOL0BeJhU0UXGMVOk=;
	h=To:Subject:From:Date:From;
	b=VquxatPjfKgkHKKEdTXvrlh/3br0N/P+mZQF8Rk+TP4F1EpxrOX+9E0BMNwcYhzZd
	 TFe0USLAiQ7/RyBoD4VrrlyXgCHVAki+DIlE/0qzqSbKtpRwy9I2gf8GnDGJMWwpoR
	 tq0hg/oGzbHQixKVPf9kssOqKJGkbHMNnvBLO+vU/rr73lIDaL5i2UuONn8K9tAwUc
	 kDzHBpPn5nUFuKXOb970cP3Ydu0ZMQd8qNj5EnKI73kr6MvliE7KSiSvj66ff9bRk6
	 0wD69to3nWmyvWRSR+ttqfdj+z9Am16bS50uYHhKsWuJcyBMmEGeUmJtBBypph1F6t
	 EXLurwBoVTyDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88B3CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 15:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178136439368.5173.9681828065767188680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2c3716723dc565b5aba38838e23510a6a9f6b919c5a49d1c466b683b933b788
Date: Sat, 13 Jun 2026 15:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781364393
