Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8A13C9880
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791489634; cv=none; b=WnySGD2Ts33jA9mVNqVC5tRWj7aADKI8OVx43iPjcnOVuqT+r6ci7YNVZpIiEJTEBI7Cgn+waEvYAgU8bkkZ0oX0iFk+DHDK0t1nkBoE1Z0c1ATTMS2DxAqXHTyL7a3iXbMMorT07iWrLJ3q6F9ObuLKwmwzbUwPXe/hqculoQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791489634; c=relaxed/simple;
	bh=09Up5I8aXqVnCj3TD8LyEXQftXQ8yRy1dAqOvuMyPFk=;
	h=To:Subject:From:Message-Id:Date; b=uLjPkMhhXKwaUbg6hkiy6/9leOSH1EaAkGylb37rL6zZyVdg1QsYXcsenxSEj07NGZkJVzgcQvBPYhaZisBTmM3wgKbc2O3/sXZJBM2KH/KcmZ+zEPEdk6vh/YtE9K8+AZ0Bc9ZN8O7eGI14x3QNimC8a98Eg3+ZGVEszhTlRGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjh1A+uW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjh1A+uW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6A9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791489633;
	bh=09Up5I8aXqVnCj3TD8LyEXQftXQ8yRy1dAqOvuMyPFk=;
	h=To:Subject:From:Date:From;
	b=Hjh1A+uW71RlxHVtblxXOR7ow64r8ahmTYYnJiKEvtzcB8uexVbsEpTZ2u+xkt47a
	 sqxJ4tTaZ0hAPi6POUfzOdNtkWPm5boMRyociHVBjXlxb+BnyWBm0vWHvT5dMIGSUc
	 lMpIxFhMDfpEqPYH7oWeKUKsAyV8C2RZP9n3EYKmKiPHcOLHmBL7LWqSanKDGWTf4+
	 tbkcl96yNJOSCTX/piXz9KiSVBCUzrY6QaO9KiKbq++tEfZLw3XBcgquNiLxNA8Uzy
	 66Wbv9GoJTF6QVj6Lqd/GS/hC40+oKAGgpgbwmrj6y0KanKEyyh9F3OKAtsEr6JoDW
	 LTosymCPUxv9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6E2CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179148963369.5008.9236282187788388545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06bce755bde876e4b06f7e8a42e81ecca8b4e9f995de17d70a64f8597ed5005c
Date: Thu, 08 Oct 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791489633
