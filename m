Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A46E2472AF
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780071754; cv=none; b=eR7/BzJxrhC+0+SzdAqoQPEmbkVQPbBsR6mmW78HML6F0xQkBwsvJwtriIBa5VyUx+8I5EZJhoYsxhOwp2GWmj0wox0rMWN7dS0GbUPLr8RnFNbOFeWMaoUmvHhrSd3OQGkuLu4ZfJT37NZeLmtXIMeEYkzKEIl/G9/X3k5g9ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780071754; c=relaxed/simple;
	bh=gUCT1b75rEcNghwupiEVNw+maUVXXiWS922iBoi5b+w=;
	h=To:Subject:From:Message-Id:Date; b=IJCkZoo8nvnnH/rCVyNACu0QIqrIO+TY5Qj/uFDz50kjgzIjPbsypOA8wdO38E+Wf2Nfcl0exMgris48EEuKezC+7WjG9nGxJDlpGJQw9OuGvbPQIm423Ru3UiJVqvuqu/0no2PdOIaxTWdxM2jYx2cDGKRGSVTt+cUaidhjaZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dm5ALR+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dm5ALR+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFCEAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780071753;
	bh=gUCT1b75rEcNghwupiEVNw+maUVXXiWS922iBoi5b+w=;
	h=To:Subject:From:Date:From;
	b=Dm5ALR+MyCS8obmEVg40vSUjArBFiuWrqtvqDZ5tp/6mxmAUJlaIhCu7SbAWfE0RW
	 ckZejW2ipR6rUaoPOF5gPpXeqcUmzvZnh6Rkm9w0/YjKIUKgbIlI0iNwKmHfgllZym
	 xG8oM8oVnb8uHt5z9mJ/rmjFG7DpYe7EVGYq1oKwONuzGys5mbq0BVOfSJSspUWbBi
	 kT59jZD/XMU9Me/bwyDpqBF9OpQEzF4cQ8fllMqR+nUhPUmRZabolLj0AN+05SEv76
	 v4rzNRwiII34E26mVPtiBujisZvGWxNYwu0nIf5hYZDjMts8Sisz4nena7u/LAISrV
	 HhIFE4AYJk8EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3849CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007175371.4400.1024373218115762283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37782aa29e85d20ebe3af9bd364741f285e2ea739043a8ffdd1e84b379a90513
Date: Fri, 29 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780071753
