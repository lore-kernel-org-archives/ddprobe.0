Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420CF4B1469
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789495834; cv=none; b=Q/k0abG4HjUWxrRpIQHw/rvxDBtQZFrdvwPCMwzcPxaPq0yq4LuZ3HjVq9mXc6IHjrxccy4PHpTbnoBYqYznKWcVoFdZfNL++yeckzE7HiRKEhvh0vethX8F8SfT95cHsm4rF7U0cJH9OTxBOhgWZ5eRoHBLg6OhAiRJK+sd3Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789495834; c=relaxed/simple;
	bh=/SqKSeyF0sk3Abk1pF3sjD4X45yQAf7cjnV62R7qzjk=;
	h=To:Subject:From:Message-Id:Date; b=NbN6+ahjPWg7LZ5ZuQdy8d4RQ7iX2isp1uUf6yJWKU5vQqw4e8Ek+cDBwa1VnLN5y4k5sY+YgKxGVF0VmJYakYmxjJ2DLy9XQtB6oYKZjTi6FxF9sWfyokDnM4bLYxpFv2A7EZdZnkjIgvzF35ozEE+bzOlqgfubUuXt+jqNm/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qh7MpjkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qh7MpjkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBA5C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789495833;
	bh=/SqKSeyF0sk3Abk1pF3sjD4X45yQAf7cjnV62R7qzjk=;
	h=To:Subject:From:Date:From;
	b=qh7MpjkZv18ub5di1VSd9RS1PjszG0WeqCRfT7N3pPlT2CKcSW8000+uA5abZovVo
	 sRikd7pYAhCSTzgAPpegsTTTM3HmVBytXdZKhTv/6jPT/+3cVbBumZ/l4HeRLwQFcT
	 RVVmRngJgycGgzZdxUqWzb9nzWsp9MIbmcTOubwEOIiN4dH9+1eriqDbC/LC2wj7D8
	 PannktTxErDcqccaxvZFQ5UeL70Lz8k0ntz0gHFpxe92CrnDJ3LkXYLf0IjWcq9o1U
	 72pZyc4RauYLgIvaka1bV5kL1sNhTdkuhK//Ml+KEzIEGkt+1QBTddf3W4uRRbi2GD
	 1XpEQ6/fGssBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98C3C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178949583368.10976.9673060416368010161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3473555cc854902f4a0b87e835580b13cb824b52924dad813e06719f9caa197f
Date: Tue, 15 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789495833
