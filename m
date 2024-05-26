Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613B12563
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716695063; cv=none; b=EBpERhWeU+rOc7FTFHZLMflEC1QNCBTsTWOhVw1+HQ1dWgQ9Lr7YxHx+WR3SJSh7kD3v8x8vdrkDylG4RjjPKmcll5LZ8sop9BLrPXtn/LI2cgTYkpAocwq8JvgtdNUbuJhnVioF9Qmibgg/YnvyvRccQDeRegkgff629NvOuZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716695063; c=relaxed/simple;
	bh=68VzDG61H/RlYXeYVIAcGnuKM6Pm86KXZHnY7K7s8PM=;
	h=To:Subject:From:Message-Id:Date; b=iVHdCcvvtWy6D3XXsw8wvIVhv6U9eHQW0mL/PxjOlvbM3QjXl7ufHDuiHbb8FLejN+szGOZu6V9XWV5pikgZQlGqqNP2I1N3xT5rCmhFy5JtJZBg3MzWpkZ6dVVlCIVHXkmJ/qgMt5QBo3hwPL5yrrz0Ctj5wF1Ae4hE94THQ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afw6e91f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afw6e91f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC8DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716695062;
	bh=68VzDG61H/RlYXeYVIAcGnuKM6Pm86KXZHnY7K7s8PM=;
	h=To:Subject:From:Date:From;
	b=afw6e91fQFsVe61Dwnbvhi18UgByqHKONx8OXcSfVsGgoSDwBxETOB/+qkX0J5brd
	 YKqrMQ9cGnLBAsKsBg2V8aVpJ/fBdq73VUSGt1J06rc+jEmftPnhQIXnWRQ/3UmaiM
	 6ieRcisQKrqJDKNWBnGCB878DI3rCuzAQniRmX5Va83Py88DWIflrrCwONxg9IH9W3
	 wpnVZS6v862li6Fa7NXUf5oECsmQls4ghlsu9fNSWQXLxpaaElh9R5RupJn9ZXQz+V
	 znUm5/fsIDC2GpQ429YF97DRjbQLN+VtBtF+zuU14rSJTQPO4Zhax93SPtkPKLBpJS
	 Wpz+NwdfTXQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9144C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 03:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669506277.20367.5056835340398866360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89b18dab67ef80a644f388e10cabb7105ba323f5e9649c8be767735db4deb5cd
Date: Sun, 26 May 2024 03:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716695062
