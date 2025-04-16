Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BE4214A7C
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744825194; cv=none; b=mxNaTljk1oAeScHK9vZ5q33nYB+x7RTR4HX+WshR77wsot0ga3PKrn6WyrRsEn6TQFpKh/xj/6ESa/5LptGuQw5H5MXsVFHJIgCqndeiiuF+KIS7NA8rIJBAIIU6xV0QmtNiF503HQ4SYGMmtGZ9T3aiHwY6resU35GaExQ9CB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744825194; c=relaxed/simple;
	bh=mPExpQkZYY4NwQJCAX5+Hg+lFyzL4lBmNhg+aC7zMKE=;
	h=To:Subject:From:Message-Id:Date; b=VZEDlHSF3g1h1R+7i/YoB4zNUJh4rwXnh8Eb+Z2gpYbZFP8UVTCgua4/r0gAevSa/WKCzg7mYwovjP+MqnTBjUOfMPtdxH/tQIxx8fNgZpTwol6j2FNn0GtE4nKp0r4uCXvESyjRTwzja0tI8R0NE+Z/+GF4hOLU6rmq7LbtdGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwR1rNzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwR1rNzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF567C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744825193;
	bh=mPExpQkZYY4NwQJCAX5+Hg+lFyzL4lBmNhg+aC7zMKE=;
	h=To:Subject:From:Date:From;
	b=cwR1rNzTdWE9ChtzHMU+CZ8gEV/Nkev1yCgT6V16plJoTGuN7zD/P/rMtSiuR9X/d
	 7zAXs7lTIzfGk15/Gat9eN9ZN9yWx/IxcVKnUU0O2aedK6cbJ8v6z7icbNoxh7XJkG
	 8fTxdyeecOI2Hm/RTmVpgJEFrwhserKkbnAWXZ1pXbrXjhwoxao6QxgKnWEMy+Lydl
	 mzcFUo4F5RhEEdKeTup4eyVedNzDNLawto6hzLyox6Sux9gI+hJN3simeFSP0MZ2sL
	 wuCeyepQ3jiCDiaOK/2MdUZDkbwgxhIbpx9iotqxJYkV93CMOPPM2OA/Q9uXMn790G
	 +iTmE7rGda3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A890C369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174482519361.5562.4431652283828581516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0c73e239517b5799df19a06ea7cf197f157e72a06d093f5c72cacade57e6c4
Date: Wed, 16 Apr 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744825193
