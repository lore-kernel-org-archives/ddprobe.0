Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DCEE155759
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712741297; cv=none; b=DXfdbJDeWBZ4rNh2nlqQqZgZp6PX3tA38+hqYLQNgrZ4rTk41zxmstWDKvMbOlVbY9hQFq9PwIeuurfjopq0AMw1QpiMt2cECKnNB3YH8p110XD1b2n8ZIr7M0nNknkZtw3wtwNl5I8DaFuTHpU1bR1FpyGUdK0kUa5Lc4ORxaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712741297; c=relaxed/simple;
	bh=dqxYmj4JNG++gVo9I+fT3MiPHTifUzEbQlUjJKx6iXU=;
	h=To:Subject:From:Message-Id:Date; b=IzztbhW8aXsVAQsy7mo4hzRbMUKQTbThRGIuChPtSN6P5SrV+cpieueWYXCvdlyIYrxOzk24eqLXjZ7FJdOAaIINTfaY5w/M6DXeSwTb3ne+plalgBF687nvE8Eo3AtTzzvUrukqZsLIsdy8E1JojWPxoN8WLDfj0Ews8perOj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMfG9GUB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMfG9GUB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC647C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712741296;
	bh=dqxYmj4JNG++gVo9I+fT3MiPHTifUzEbQlUjJKx6iXU=;
	h=To:Subject:From:Date:From;
	b=sMfG9GUBD4zFX4pBJTt+VMXh/IKkRpIWx8m5wZ26MuqhZVXC4UbDGb4Ldd83BUVmj
	 QF3bZpjxuPUnptOIQJVkWYxkpq88z1bZwXKWkHBP8/YvtEfV1zGMAGqMigHNejIQ5L
	 rmStSUjyKGMt4NnWsaq1xEn8pTUFtQKE05wuQQqilRMJrt8hdP413bpHVwUPUsVDZ1
	 F6G5akhZ+7VMqp9NPIhRSvOtvlrw+rKszijuCHxz2P4ZJR3UUhb1lIrnji9NbGVPZg
	 S/HZ4pcZMlsw/PWlSV2FSxKBz2xLLee5b12GmSwUuPkPUZWbL3rLNJc8BgsBEidoin
	 Uf6QHcMxA9EMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0F7BCD1296
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 09:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274129661.27673.12604880891185545023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a712cc4408ed2ac90eaf20647da33b518d012e73a280c8d76f2e8c093e0c0bb4
Date: Wed, 10 Apr 2024 09:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712741296
