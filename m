Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8F01E86E
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736957754; cv=none; b=CagMXI8OtzMjWeO6kdC9wpturMXPcFCK4DLFYFZBmUl3pVeYiEKbtTegqm0AlpoKp5GUZznSytbvCbh6ZO7yAqyAtKdQofaik/2DOC0ljuuD06sEZcZztOh2m5fZFrDk4w+ZhZxmyu0RUYjkMcOoKEK9jdPYljauwmmd0bIGQ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736957754; c=relaxed/simple;
	bh=Hjcf8/CL41DmChaUw0zd+P9WqwwHtDBpyjyQ8P5Uam4=;
	h=To:Subject:From:Message-Id:Date; b=hSaIFSLb8hnJiNYVYH+L7SfZsVtR2L/+KDD1OmpEIYbxlYHMwBIrf2UdmVDtdUg0GW8FQohY5cIBUxrJU7xo8ifZoGgb2nTubu6y4T9MWNn8Gl7lRZcpD/0KYjd5VUT6zgYhrkfMsyHlC7X34XMUmQQM7CGGWkFQJeTmp0vNPY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxJqjckB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxJqjckB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B093EC4CED1
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736957753;
	bh=Hjcf8/CL41DmChaUw0zd+P9WqwwHtDBpyjyQ8P5Uam4=;
	h=To:Subject:From:Date:From;
	b=ZxJqjckBVS6BpVmUuPh7Vp0FzKgLS6ZfuFr7v9B+7YQhQy1dOJrRDubvrYc3LBsji
	 tJBpVnXi+QAaSpKJch/HXhnO5N9dsxg0tkxF+qn2t7iDVwbcFeN/J6djxwrlB8XITa
	 h4GiOiHwuEHwe4R+nf1NEsBQYyen1qBFWyZmWuhutg3eUw+4o6lPvpMNz8ZLkC0WfM
	 hs8zFitA8H9M/MScgIiQAt/r3z4qZAbnnzJTu7cQC1NjQ/XnpwL+UBx7Mhjcq0jrmg
	 HMSsMlYMlh7p28jkcmLyV6JOmYUzbUOyHDdHe7d49dq5So31fMYZ3bbKEUGL0hdsE8
	 G6diOxAO+I1TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC5CC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173695775363.2521.5700386924403034874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbfb2e7d2702ce38df773170dcb187bbf538c049e7c7d5f1d4f1d2bdad14f039
Date: Wed, 15 Jan 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736957753
