Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093052586FE
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757517594; cv=none; b=grtX6lHxYCv9T8itzE8Z+niEZKODdetKwH3haTurLV85k9d1qFKJbkseyIrBhWgnnOqlioM7j1DcIUBc5FcZeD64btT6CeWQw8LXIgjsMGE3RCJFhut0BAl6v01HkLw5PFLehlZAgQQipy9RK8nc1LpvMLZqQ95LlTDxstcaCwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757517594; c=relaxed/simple;
	bh=mYD1lFH8PwAZfsXeUTqFqZui6r9ZDmBmPVIr1CF7oKg=;
	h=To:Subject:From:Message-Id:Date; b=oGooKWAamaW+GFftwTx3YUbadlPH7HB9M3Xy28MlfMdjMII738ULuAazEZw6A2/dMY9nigumZY9QYJtsv34lLXR1CHGELtpvZurH+8Gl7/TUEW7QYwLU9z4u7YTYvbaBqrOWHEPulO0X8ksTkmrTPjkK/qmMC+qRbOc8XdkGP84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fqtPXWNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqtPXWNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7CDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757517593;
	bh=mYD1lFH8PwAZfsXeUTqFqZui6r9ZDmBmPVIr1CF7oKg=;
	h=To:Subject:From:Date:From;
	b=fqtPXWNPn6bCBF0OA7oFZ/y212GBiwC+P2Y+AyFp1mZlUEi016N0MW+nXk3k9iZHK
	 3JR3IiYo6H4LMHCUdlVq7MxGwIvwpAFWU9mN0DfkoPauICMUmoywkQdoLrsi9qcqMm
	 gZspzP+0Qw6ZhB96HlyUJiAZRNyYiNHLQgGxs7UZm9YRMCdCssXsOSo0aXzlIKywPz
	 9AIyuMXku52QivaPZ9cNHN/VSdcxDoD1qhWJtDfk1l/XCz4wHQLQLTKNUZwry5KRpG
	 u34/Lt+BxoqIZC6WrFJqKNimcQUhXy5mTK/CxNmuWuRXRWZd5+MOk8GnfTgaZ6swG/
	 yvzvMrDf/5b1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F34FCA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751759357.18568.15457902144013291432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4753c94d6a79045f5f06652829bc49a2ad7dee0d3a1ca6e3733701d0ff2d6b2
Date: Wed, 10 Sep 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757517593
