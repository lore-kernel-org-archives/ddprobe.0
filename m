Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637867FF
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 04:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713156563; cv=none; b=rTH6lPk9L+96ZVp0wt2eocAZcm6THLdfdEep8+MhrWm4mzuOUXAJYmJzGUxPMwBIAiGIW9eYY6Y5cRvWwUoE6F0+dQL0AVvc0luJOxpDGMxCK6+Qw46gpdOUyzxQBoUBrs9zWMqn8F1c0zQ4JaZKdYBMpQrGCu6/WVs676pbUe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713156563; c=relaxed/simple;
	bh=L9agbT/WMHMciaVy7K2Iq2itl9F5fLV5Xfyv6C1BAgI=;
	h=To:Subject:From:Message-Id:Date; b=IPPsVVh1FcQdlxHnnNgILD04b23OBExwXJDyLsqckRIxzacoNXWEj9dBX2seJW0FSeRNbwD+wJfdTRqKt19Cihm7mVNEJ0kQ0XNeqcZEpGXXyh1x4PC6EWoR9yGtROnJF8lFwJ9OKK6YVuAdMQcVIDw5oCvcqbM0VwIbu0C7snU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JPBgUWgK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JPBgUWgK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D668EC113CC
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 04:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713156562;
	bh=L9agbT/WMHMciaVy7K2Iq2itl9F5fLV5Xfyv6C1BAgI=;
	h=To:Subject:From:Date:From;
	b=JPBgUWgKlOjGD8U8BD2nZvB17HqhD/YgkzPUHPWuhX2f2f6KEq69J51Lb8lnHzFHB
	 XJweW5mfUWkQ19DhoBrZhiDpnUE9YAXCaM9eI7nfNhF+xDDPKcKeRGOf7gZk9QemX0
	 P5AIRDHTUjV72zDsAf6oY8FXQL6KglhKyRHFAVP8BUHTMGRO38loaa52hQLRKEGZ9k
	 pfj+G5CeHsIV62dATy84Ac4Hh5v5g54lqIVBrOE0GnFomLqqccolHXWOLc8MBs/9Bl
	 vkSncX1zfSneibeJ5ynOLVJdT5t8Q4s2zsGV8IrrVFWb+Eb+mUsdi3A4Gv+1nuEr0D
	 O7XbYm27Qj11g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CAAC4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 04:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171315656277.23831.10920531305633464985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5681c35dc3ece43d4bf4e13955e982326999c5d0972d48f63d9c9502984c3984
Date: Mon, 15 Apr 2024 04:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713156562
