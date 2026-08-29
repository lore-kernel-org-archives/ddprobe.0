Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677EB28F5
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787962234; cv=none; b=AYMErPYtqP/DhmcqXMXPanP7ZbhXWzl9ZSErwI76oNrlHzmrstrXWa/9BtjWbsfJNy2/mY8CFCmxiv4o4GO63VmuB66/shDmjAXUORkA1V9Ke+WOsRSdA/49ny4qVcWlsgRDwfI/RsN7Q6FWyDc2JZ4bxR+YuEYHdJi2zBsuQ6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787962234; c=relaxed/simple;
	bh=yhhEtr1tKDgKEgnw6cUuKT3OwtflbkdL4BR+mJ20yaM=;
	h=To:Subject:From:Message-Id:Date; b=spK7RehEYnbQB/mcQOpt/nIeJH6PE5j8dopoFL1cyXz9SZZnAQqvtrPmQifdAmOaZKPHsAe8HIvyywc8s2OkZPO6fPKpmRNYWrFsbB22Hu9444yBJFay0jxfWwekWoyqa+zqgk55bZ+g9WWnX8ID9KlmMgKxuD4ekwo6jzKFZW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWgM3Hfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWgM3Hfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6FAC19425
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787962233;
	bh=yhhEtr1tKDgKEgnw6cUuKT3OwtflbkdL4BR+mJ20yaM=;
	h=To:Subject:From:Date:From;
	b=GWgM3HfmQmm2UaKneRMUCDdQPdxQ7hbeOe2jlSuua0Or4Z5zHDmsU3xUMAEtjqxQi
	 uTeie+M8GoyTWoyBsm0eIm12AMlL63iNQI8Mvd9OpRclPvlQNM7WUIGeoAx8/ANEmV
	 puk7RtFJOMwJ+SslfQlQfuf1UcJwhLj0vof4CihIPE2s3CCW8U0EEA/sIDRWbJH9kU
	 HuJZ043WyyQQs8y2oUUlpoL172Qt9hXl0+JROVzzau+iDp4u9VAxLnp34maVz1AQvq
	 I/8QFlTbk9wgmZpuAV17tJA4QoEJiKwod/DlgXpJVfYtpmL6ngUj74iZHdH4o8J1pk
	 qY11sZnk0CmUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD758C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178796223368.19727.198296916241588536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8110c34bee77c5c4dcb67d705092074dd98f353cde97c5b8ecf00d18efdce25
Date: Sat, 29 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787962233
