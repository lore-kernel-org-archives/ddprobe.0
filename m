Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB8F6A33A
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727225754; cv=none; b=gpMz4PX1HiPpJERuX7ri6PcA89KIo06ZIng+/UxFff1qznxaO868IS3RRNYxDIuucHfq27iFo1bhdbCaWOt0e/n5VF1o3hf/QraBFqGX+ub+kriYzom02omFV7uD7e72xGJ4WA6B7eNhTvZ0bM6ex9qwqATog4h39nmPCpngqGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727225754; c=relaxed/simple;
	bh=lmoiJgXuzyd7AV3t1cm8UV80Jsj+Ptc/gLN8KPeDTwY=;
	h=To:Subject:From:Message-Id:Date; b=hcBEhBuYdS6A4yh/37ddLDEAvtlehqZdtI1BGfyTCxxBIuOvUV6OBTZr94pPeyszkcnCUr6F6MZ5/T/IzS6bIQCwQ3XtkBA0y3m0F44+y7ROucKxP9colZrMKZc6nK4FLfsaUcQWm18eod6Wg1RSK0MPV2l9w1Kg7/FNjR9lI08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O+FrwEl0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O+FrwEl0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73ACC4CEC4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727225753;
	bh=lmoiJgXuzyd7AV3t1cm8UV80Jsj+Ptc/gLN8KPeDTwY=;
	h=To:Subject:From:Date:From;
	b=O+FrwEl0hGSDfdHO0E0aYfrDfuOcnYVBhQSQvFsFUuSLlHkJFA2XrPcJsxNHojz4b
	 mkPcekv36a9z5LydnYgQYdA5GQXpDjRR/e7IyKCJiQ5QfvItHZfaTAnFKmsWW1BeEP
	 wYuQ6qaywlWZgTc8qtv9w5qjtyZ6YtTPdgYYY4DXmzphw1o/36pWMYUzvAMS+WYHwo
	 HAYhTxczT6oz/v3PZW/y7OwWtkYSCgfMHW+kWo28OraO9TQ6ZlsjbrdHODn3UuCjSy
	 nXuf5dpzAcGcio+ebW7O1jOCo4d2Pv26YU/WYL9dU7Z88TYdWpFW+Do5Ada7kkiBv0
	 WnMRrjpB063Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B0FCF9C71
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172722575359.24798.9439834438050919330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7959e5d29a029ae8e9d3e911105e088683bf09e539f85918a8cf5269835fe3b
Date: Wed, 25 Sep 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727225753
