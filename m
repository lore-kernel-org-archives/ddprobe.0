Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1A8200AF
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721961354; cv=none; b=g4LnDlgu2NY+CqorS1Vx6SKJByywvTw5fUkP8cvCm8QpfqJAGeqqnI94Kj3WD5VswADXUKHHfDD7qGysS8vcWXT64mve8V++LZ4iVsNtXAJjEKbRojFEzEzIXRXUbQJvgfXiyflfEapOQKgOY6nUJY6VrYNQDfQP7hVthSonExI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721961354; c=relaxed/simple;
	bh=DX2NSSuDm12Dak0Kyet7SdIIdKKWbwdN+IfHMSqJ+Gw=;
	h=To:Subject:From:Message-Id:Date; b=WvdS694gxqS/pqDIvkOJW/J53uNulNzpvptC6c0vLLngfV6IubfLDFUxlLNEnyjimgGZRwM24mE/+NgwkKMGZIKuQJ8ig+PQikt1HPDiC3cxafJqTiaETwZ+NxwKPgGeWcrF5YWnJRglFN1uYa9xsvNEfzG52xlZrBrYCZ2nJoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYly/cNd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYly/cNd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB95AC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721961353;
	bh=DX2NSSuDm12Dak0Kyet7SdIIdKKWbwdN+IfHMSqJ+Gw=;
	h=To:Subject:From:Date:From;
	b=aYly/cNd1ejaW1zZyQGeM3Hz/26g0Ak88eoUQGf+dBhd1XkAJlj4tYhqyXjb2RCpo
	 /FsMfJIfpBJI/0xPz0y+/23DC2tu91+V6AvX4O4gTvsczlZpBcPe6HO7g7FfNd0rNo
	 l7Vo0r+PwoOOqXW1GU59xRhqXZz5tTuFoSoxFq5Mv7HZjcusR6GG7RFGBUsNxbq0Ue
	 op8Xq0qsW2bGy8OXQbNBu90Nk+58pk6zETaLB5JR0nnv92yH2npRE5NmJNmzGkD+VM
	 7GWqJSICCsBc5MKev7ysxaUL/hjlsWL9qzVXqhnNWE7aM4eDlnae8Ebljxyv0fg8Vz
	 hsrooL5BR/zNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9304FC3DA64
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196135359.7549.17415808504034838924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6607035cd1c3e20bc35abdab6cc156502e14e9dc5d963f0937e276e478cc42d3
Date: Fri, 26 Jul 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721961353
