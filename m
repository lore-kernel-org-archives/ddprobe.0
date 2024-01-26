Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD211B81D
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 13:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706276897; cv=none; b=cfy9GhQnFWk6+DqPy8Ry/Xey/UI8khu6wDo9odZvDHAVnm/CLP/xF3rhBakaJlrFE5iT3qPzXjnhvm6uiNbe4p7rnD5kYo1sykBuYl6eHrJvtW9bU5O/X6KTfWNAlvpuryd31AruIj2NCBK2h8QL371sIcMD5s1stdCG+pIU7uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706276897; c=relaxed/simple;
	bh=ET9Igic4Ae2YTJhDlkKyMHK5S5bWF4KNpBWHfEDS/7w=;
	h=To:Subject:From:Message-Id:Date; b=bXf89QwhJQGQjByQJbqjc+0BXfRUh65Uz6nxEP3ciAWSYFYADMVwrsEpoFVxr5O3jnWaPz7c9z3I/ARLq/ouiBNICtAFOFsFeXL2KPBlUHudFaQ5xdWDW/Li5rZ2XvS13j8xTkUPczGKsd4NxXtMrOfRQK0eJcXntCbaCk43pjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XWlIz/h8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XWlIz/h8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 741FFC43394
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 13:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706276896;
	bh=ET9Igic4Ae2YTJhDlkKyMHK5S5bWF4KNpBWHfEDS/7w=;
	h=To:Subject:From:Date:From;
	b=XWlIz/h81LasbB8z42krTNkBSb/7ECzqyJlVdC9mrqir6XggRSHimzUeyJ9M0EOlA
	 f5q9umqQfJfWU4P9glZbzHh92cfkMfFanGvaPjwiDKPiOXsuWdbuAVqn+F1qkE55Um
	 98CdJTQ4BYWUxhly+zKKeESlQTxquIHimZz5h0xv0RZy8ToJzqq1Hf2gqWlqz5vdXq
	 PZuzq2cE4mYeMe4KWIGk/vKkNXCOYIYvj6v+3rVTdF/qLqsgs7UVIhzEOb6+xCvt1Q
	 QFNYnOkqFdVBEhUUjYkcpZWPZ+58Sur2cn7JQuc9//Z1xB3rp99Zw5MkqlRhc8tDJs
	 +lfJBt21wpDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6EAC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 13:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170627689636.26109.4063151716125309204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5b8f051ed43d54d80ee23425c4bfb4e49e188b301e42564f5f4e43cb570e192
Date: Fri, 26 Jan 2024 13:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706276896
