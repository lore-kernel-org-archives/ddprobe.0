Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352233EA8D
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757372994; cv=none; b=Noi9dnOE2GNrjTnOh4mE8M6NBqSsFao/ickpFA3s2rqvEXiIuXWAbdMQFj1LT8qVOS7PZwBAWX0K/OQ9r67OJOMllbAVFi6oHWDt6ZBNlaiq6eTg8Pzb14p36en2LrcKyidUL7/HkM5PZXEqMG5l5DSSlRuG26cN0nMwWfmjrrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757372994; c=relaxed/simple;
	bh=pHZeXwSR1mDLYDYxRJdTmm5SsKWcOSfWDT0l6aegYf0=;
	h=To:Subject:From:Message-Id:Date; b=rf/WDqlJoEHaAkI+zjutjgq2S0rjx5KLIbYvSJYWdxu0W9n8LdxF7HTD+oz3fCHZjqSwvyVbiSZtEYjm8K1fjLkYAst4tJo+QstmiNRhHP3TBe3O+Mcni3i3+LL27lIgIpbNuNA4dCPUL49q4QX6xZWPs32OKQSdOO+t/jvSWbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=giaQJ8j+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="giaQJ8j+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E24C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757372993;
	bh=pHZeXwSR1mDLYDYxRJdTmm5SsKWcOSfWDT0l6aegYf0=;
	h=To:Subject:From:Date:From;
	b=giaQJ8j+FnlEoBXlm2sO55ILQwb0glM4WUfXo4rC/j8s9L31FNb5bNMpFYC3tJvd+
	 j8c7MsY1UJ9c91M/4SS8Pgmd6NDSpeO5jvjWlOkChkUJLOGEKqdMZNWI+ZKCXhjHN9
	 ybEN+YklNEZi5dBKL8DBUjRIhEXvNOHjkKkDCKL16speH/TYCYPViTTQeWa92xgWL9
	 eJy5dYz1RebYcCKkXOgI/2mXgV9jtgX8FELaqkA/sDXDxFCkKjYgTjR8HgdQbBKFHJ
	 FJrEgsw4lwyZXUkH8+DJTJ3ov8AhhmkUFS7WXF+2qiL/z1dPFfSCH3rlf9J4k3YJ9f
	 H4kDIYRRmZm5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA0DCA1016
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737299357.751.381549373813549559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a82a715d79f45879e2317410ec5b36f5c0d64d66912d133e0f7d1324d162bad2
Date: Mon, 08 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757372993
