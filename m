Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EF51FB4
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714516343; cv=none; b=pqSm5DSQEa/kQ0wqZNLWi28vFQ8HgPpYgyoza9CEsM4NHWjMEn8ES7DPXrzs4AMBVwua3IoziATCQx+KiL6f7upAyG6N++5o/IiYURwMsXr9eiv6aw3RScBzSIRe0DvlfPAg65tqA+/Mw+sur9MF4heTOdnJ49Vn7RCXDq62G/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714516343; c=relaxed/simple;
	bh=LkUydKe/Y2rmLQvpjjVfoajw0+sq9Kpst+npGexbNgM=;
	h=To:Subject:From:Message-Id:Date; b=XDXTnXqgbFKDqtSrCs4Btm7D+M5xC01OhKIu5ZAKPs+eLIO6V+q6Hg5D6favBVnYwdPYPeFuNYJ4GOxlrK/0uq+Y3h8eQzAFNV7ODDHQuLTJ9Zbo7e6Ap2DjQpJ8e4tUaRTRp/tKAUf2+lSgDvPs0SNnujr92Qn+/wsL8IKcmz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QujbHsqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QujbHsqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB94EC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714516342;
	bh=LkUydKe/Y2rmLQvpjjVfoajw0+sq9Kpst+npGexbNgM=;
	h=To:Subject:From:Date:From;
	b=QujbHsqibUp+PF5I2/Uq43AcQB8pS52h3NehzHorx5MLXaZ5OlvZqTuKXhR5Onbs5
	 qqRPJrYCVnRkovc+ypZZRutpG6dsmsi+dPwHmlqKIvFuSul6uDWyc8gOC/btCv2vgy
	 +0oqTFGJrXtWZdwbe5iTGWVMm8e1GacVGp84k3MsZnUV97jX4eeeNQ9lrZeF6IakZF
	 nvXq062PXw7sbPAhIs2aFz8STCL9uhhNfKdpMLa7xL4TLZPK0OAbNyLiiY6rN5elvc
	 ALhuhBz6Z0gY5QZy5Zz1elTr2/1ESmCj0oTEMc6vQCqB3W5bqVCvtJ2Dmof9e/p81H
	 uUAubo7Q7FWbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BCCC10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451634280.7429.8297739909001567799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 564aa2a013878d6e2f3d06cd755ce5452ed69a722b23f7701ab8abef9d19dce6
Date: Tue, 30 Apr 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714516342
