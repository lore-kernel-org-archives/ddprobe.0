Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3600327CB20
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745321996; cv=none; b=scpllkBE6Jnz9SmTpr/hX8FvuXnXbpzuo6Hh2NULJTa0ssjjYfjHSRFxfCBqThGU8uop49zup8vw5uaxXWvLiRsQz0BbuyEHxhtvmFw+flcXar0njtqVo1dUTO7SZkEZ2Hlc7ev6U+EvBKXg/l/+GeKYYGJE4QopeiiN7sAG7Wg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745321996; c=relaxed/simple;
	bh=xf9ikRjPE7Q3dw+YkX2vmGnZ2plWX9XwmyuadE06GMY=;
	h=To:Subject:From:Message-Id:Date; b=FUWXguD+Nj1W8eop+LGHNw6CV9VqjTEl/70VZt7qZwCCfm4sEe2U6/y0TGYhLDiCXA+NROQ+7WKDQzOI+K2hiTAHBSaWLWQ4LYsxRv6YnyKqZfyoQhjCopGiRYUjaTGWYhBFZAAnG1XQrfIopSFnEDlY0Lqeg5yECxzHRcpNkV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2PiZsb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2PiZsb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD5FC4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745321993;
	bh=xf9ikRjPE7Q3dw+YkX2vmGnZ2plWX9XwmyuadE06GMY=;
	h=To:Subject:From:Date:From;
	b=N2PiZsb4/6SsObpXFfd2+CSZCpDA0VLtIC56QrsvFloNOv96pMIQBDMEIINqBZqtx
	 s0ccQxZ3N6w6jYsmNJCENEsrZV7OwPMUpixpaclfmnyVi2uUWrfGa8IsSDaxfFsZ5S
	 zZmunhYBQam0yAJ49OfUY0uovdl4wMqJ18wqVda0tI69QXkc4dNKqA3V7AKdey8ro+
	 sdjMV5BJW7BXxSfjlfS0KX5TXqdSpFOU88Ya0GxvImDGJ76bA2FKx4CtQbBzwga+xi
	 0/j8qXPAij1ADkQVu4gfUOP9LmmkGyVTip02vDm6pLs1q5NoPIn+NAlveg97ehgkdj
	 9ura5hCD5jODA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9C6C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174532199362.23870.12667369316768435427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43219ff3377ebf8bb9d1c83f5b6f34f82bd15a577d23a477a286400c8228e41d
Date: Tue, 22 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745321993
