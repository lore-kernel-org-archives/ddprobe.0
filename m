Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0C614AD3F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721648754; cv=none; b=OuYwI6ShDmZF6nVn1DiCmiKaKb2zcwBsIPBwFvQMB5J79FJFs1XllNztp65wOD1OCDxWhns72LxcV1PQTfQt9V7u10CYS50ijqoJYXmxit8sBT5BNGxZg/MLzv2LKqw3eJ6XjlS9W/wmhZ4E/WjP9EZZZufrSxiXfTr76blfL+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721648754; c=relaxed/simple;
	bh=/KMEUppr1QEpKhM5aAlUIQSccugmW4K76FMhxL6zhjU=;
	h=To:Subject:From:Message-Id:Date; b=ik5hckz3IFcBwM/9v9DeLMJKPGcW1IDVPLcIhoNkp6+UwMBYHadAcMVwV1YWu3eroKR+jyX08VJakSV+AxLAY0dE5U+wr7xSij+UvV+7LqqPiM0FOoHwDv87fOMr/kqprOtV46M9WYbxuP+IX9iKcfJSP/Kq1Qvb9RpyQYHfEpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pnXUokB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pnXUokB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F80C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721648753;
	bh=/KMEUppr1QEpKhM5aAlUIQSccugmW4K76FMhxL6zhjU=;
	h=To:Subject:From:Date:From;
	b=pnXUokB7Cay0DDfPtzfrPnEOM1F3lYVZgCbKr4g7+72t3l8cwui5edkorN8+bH6IG
	 sV1KL4T2bxE2icswZWo5fiJl07j5asSSqUFfSqj9R6Bcr8bOoBz4eOexJXQnws2yKf
	 NPZZM/lAaP7B2bzJtOrPqpEg5lAKLxoB15OFbWZimS9HR8ny3c3oUPhuLVVdEkuv85
	 RxmWUyDaqO+GdoWIp6FuflXETFJk6iXwdl68fYAKTvvkeAID5VOXG1SK2oUVgT4lv3
	 gWt08shVOAXOYPIa1pgcV055+U0D4Vtxw1S+9LRutnH0Sd/HIX1YFJF5quiFIZC6K+
	 zYJKFrRFq6IKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7FC3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164875359.712.15677431859551730719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d594e0f8841903ca9bdcf695f202c9f60e0207cd91bef22fa892a7650ee06fc
Date: Mon, 22 Jul 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721648753
