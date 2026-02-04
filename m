Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDCC2E2679
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770188034; cv=none; b=nvEIrBqYOhkecFDh9ZtN82ZvfDGdWJpbZDcL5Dwcr1Krq2sN7XI4L+TErP5UDEixpwzKL2vF2MoX56E1D++NCFxiI5XzzS1wo2W3BlZSEF14QoV78LkO2hH/dV6xpFxUTz+DPjc+38LVkppx60yI5t/gu28MKYiLciUdAGe8Lhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770188034; c=relaxed/simple;
	bh=DnsiCAEt3BlCzBACYsSaGkGTJQal5bOazFgyS5yh6M4=;
	h=To:Subject:From:Message-Id:Date; b=f7ccXQur4HbwH9+gmJWaYGNXDGrx22ycrU/LMAkQ1lcFham6/Du6hwAwKY6gRTtUZG/I0AXL+DbnUqEzhKSiqhOgs5+M9kUuxzpf3e/jnC0DJeyNes/VHhT0CoCVsIAJvLdQoGJUr+bHIsVE5UVsqCRQNcn+KK1UYCzymcBqZrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIIk8NjP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIIk8NjP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB14C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770188033;
	bh=DnsiCAEt3BlCzBACYsSaGkGTJQal5bOazFgyS5yh6M4=;
	h=To:Subject:From:Date:From;
	b=vIIk8NjPRsHRkEdbW9heMsIzZWvEfnHiKQ81ao9MqBfN2GWEAmbZf22uHr/wI9tea
	 zSqvrtryI6TVJUBKKMyT6xGQovh7dy/VKSHUPq3ceoH3HEJwY4liH1YP45Gr+O82xD
	 QoM3q92h8wXFeYu96550SiZuvKZ6HSB0pYxbshAIjnYed8pMe8k6QIxDVACN3+PgB7
	 8TF8QhgU7AVRuWxJDUmqUm1eyHCIMMktSWeKEB0I5w4FvLkJNoCm3gzIBK6I0ge+Cj
	 v2kGplJfUct3dehye5s0YdPzyykHNDxu+MrR7xxOeSKCastwlR86Askksc5EbTNEoP
	 iAdCjne6Ybn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DE1E8B39F
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177018803360.14903.12208951519817859609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2895bf6bc920ca6fbe1fef084e7db3b8e71fadc2e7649c9fa6cc267bd4d0c12
Date: Wed, 04 Feb 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770188033
