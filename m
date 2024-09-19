Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2383CFC0E
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726735554; cv=none; b=RaEFvan3f1Fn/4k4bxLxYkVgi6ygvDuaGQ4+cZHtGntwonBukvPMNJxUbExYA+2XLyJtaLmD74aWcfA6AaI7toQl7Z8KCFkDhs8lNofP9YclKnBfYfycjMZ3C6jGGWbjV2+0mdDGdaEnguaDVkNddJaxK13wWhCXGv2MPlPWe0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726735554; c=relaxed/simple;
	bh=b3EZ9fm1q3QC0GIjlIx5i0KhUNZS49Dy4tLmjLUofnI=;
	h=To:Subject:From:Message-Id:Date; b=rPtJig1C02HrEPRTL2n5MptD+YG+x51Yn1LA9UYKYrUjK46dEbGIYq8RBvQvC1P3r+N0SG+qIHgUgu8jn82fUhdQYkWToyK/MOwZzhS7jWagBlxh9RkilIMwPoSYZp+2z0r4K+/dAhDd44n7w9hflVlGQYWNpUCNfeM37YYNCME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAYXzkz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAYXzkz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA03DC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726735553;
	bh=b3EZ9fm1q3QC0GIjlIx5i0KhUNZS49Dy4tLmjLUofnI=;
	h=To:Subject:From:Date:From;
	b=GAYXzkz8q0Wx2VVGmUoVsVnfUf7NOWgfFQpAifPISHxQK6o0z9c9KHxCV0PjBOKCR
	 12YEStwoD4LJ1+aQgTmXqnQaJBqrrM3jh6zVkBAuPZOWb/5+TqNZShl6fP3iyyVm23
	 6822r3C+o8QLPQbVT/VNBWhUphL+jZL99kfYvZ69VSrof4k2kUSeOYq7sRXwcKfvc4
	 HyJ2rXMcSVUJZ9gm46Sa3D7C90wIjNTF9tNVOCPVS3yPzCbQgE2Hm02QE0EIiE5/ru
	 Ozk4EomI1znZWHIYTI0KK2PlJdboGVlVWbojk+h7XfGbK3rCjNg92osxrS1ONdQrfC
	 zKrnuGI0nBEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FB2CE8D5D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172673555359.23939.1490560168114414790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dbd6b41db1094f1ee0e5672663e30e69e686669ba974c2b1801a62aab94eedd
Date: Thu, 19 Sep 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726735553
