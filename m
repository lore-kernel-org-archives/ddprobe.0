Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4E223DD0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747994994; cv=none; b=G2BEXTb7F01o9JvGOY0gDI5V+7/jj573o7TXV5MIRrV/XrEJG92DRSnvNpld4SPhclASkUIG5ejbW7cgf3Q2zip65+/4Rn3Yb4h8OTuV1+2dhhUgdqF0Qvg6OKKWHtTUlwukdb2XdDkV54L6ftX7qFYznSYH5GXStuZVNbohNm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747994994; c=relaxed/simple;
	bh=j/llNiyy9PmksW8KuUbRJtwSOTzvOu3gRf18+HSOMAQ=;
	h=To:Subject:From:Message-Id:Date; b=Y1ibB+WagVbEhCuEr/A37FuskIDYBbXwcxsE8T0saXYY4RrNRh3+YbtKg2e8Eslf8Ev76JZhjnaiuwTvpBI6JK+egFPGMrGbPcqtfRKNY5hpHDomG5s0m9fm8S0OFqbJMY9CUFYLMlClKjUugq2C87SDt+VSDhACKefmHOxccBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXe2baR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXe2baR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33C0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747994993;
	bh=j/llNiyy9PmksW8KuUbRJtwSOTzvOu3gRf18+HSOMAQ=;
	h=To:Subject:From:Date:From;
	b=eXe2baR+wFuFg3G/BBmfDEl1oxdVwiCqD2rb2mGBNXxcclXctAFzsUhK/t8pq4weI
	 SrRqbOQwwdc5eW21w1EEbc40c4WlFpLa1MvyOpOHKW7NTYAN8P4VOiMygUvLVQlzIb
	 IYcfo1VzNmp5OE9GrVKkpXyUCmsZHCcjrcN/5FGsD7jdZ9D3xYPamb5mqi8nQnzgNp
	 kWigNAp/DzTMJo5nFZAE6xjDT8ywLhrlDStdhzMlg21Jw5jYyn3nA/AuLxqAhVZbHX
	 WZ8ERR8X9f4YYDbXi4f6qnmLocYobLrIWCTtX3R5wwrM8Jg4kRvSHGvQTkh9WeFndL
	 n5vssAnqHgVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F19C54ED0
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174799499358.7032.9703627822531663615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2841e8677d62ea1881b37b8b103daa18a5ae28d4cbfcf2d9e02274a08ecf3ea1
Date: Fri, 23 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747994993
