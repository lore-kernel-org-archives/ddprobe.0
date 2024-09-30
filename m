Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312731CFA9
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727708754; cv=none; b=awRAfuZ8YYW8H/eoTcZFxPVuOcLXx/0dUi0fdebeDxqd0sSokc2Q/8ZY4b0uNTnK/S5u0G0hkJgBCrsWDM+zZ5NVJWP9uw+FIBN9+sS+HQqUdZ6RKsYB+8u+H2ydX9XC+Z8GufAYFl+D5wUOB5pEZPzcghSvA1uRVEl6/D7gzUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727708754; c=relaxed/simple;
	bh=RC1H8a7QtwkJvj6Xx5iLMyLtrWozRPWpGOu9Dk6Wlsg=;
	h=To:Subject:From:Message-Id:Date; b=o29RXhLYPVtwRbZC7JwLzP8vq30mA+/WUvRiY8hwUsFm6mSbl6utpojHK4ZE82fFF1cAdX87mrIw5bgk7uqcFNB4aMxCmVxJT+6N8MY1C5Vt0svifPWtQIBH8exnBU4YRkNWKL8cuQSpDkgn0oxxzYq9AQPEdlF4eHcDLF1zgDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAfBhKvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAfBhKvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB182C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727708753;
	bh=RC1H8a7QtwkJvj6Xx5iLMyLtrWozRPWpGOu9Dk6Wlsg=;
	h=To:Subject:From:Date:From;
	b=mAfBhKvd23RTxRiBuP6S/4xLhM6miq3c2v4UCFLixvJQTKCepjjBKEIWrdZdOnAyq
	 KsfrOWo8CsPwKZHMYSGqv0W7gvPwRaKCtdhTsjX5v9b6Mthm3J+J8CUjVhpkFiz5qL
	 Zz+l/mvlCEK3l20vC2L7XPR3uLd1NR4r9lct/uSbhGA+85ecZ3IOJnRUhcrGCYrAbD
	 TdvMTT34OTnQ6Zz0uSflUchWBETPWOCzx4XGGHvvv2ob/gUSeVgRHEbxyiNrFuX77b
	 wEmfyK4okwWuU+EVMnq+GVyy2K7jlzoqQq7dPoUirKZVXVTkJDzol8chrGwSEuKyE4
	 R7UqiCD6KASuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C17CE835B
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770875361.31501.3290546274323464532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be419eeaf16af36100adb000ffaa57d1ca33087ab6e17547155bdf5d9e9b0ddf
Date: Mon, 30 Sep 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727708753
