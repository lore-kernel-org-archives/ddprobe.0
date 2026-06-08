Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF9223C503
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780907074; cv=none; b=DuvqVrtLxty7WnyZAZBNvUo2RF+xWK6hVg1yL60vdupEw3QpEX4OxyFQhjUvjPjMOXwth8f7GJtnV8n7w5ah1/KeDCNM3GYoFlOItEbHmTJ8ls/tx/9BI16YVEuPa9bSdwZtpgEqHeFNLfkdI0uHquipUzlGFly9xOmCFpb4yIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780907074; c=relaxed/simple;
	bh=+a7RZj+F08Hg9jFwc4ZPSo6yOUgnuHI+tz6SM1ZekZk=;
	h=To:Subject:From:Message-Id:Date; b=b5n53P9k7lC5xC7rLi0JgEYQPAvqUM6x0pb/aUkdyZQYc6syNTVZ22uuWvufb9orLSaVfyVzX8towaG1Wn2J1XaosaAAsPZCFl+dMC2ZLNzy776tYodhXUKSvdO0Y5AZ3yPf7PrURFx+QopaWpaZSoQJ7lYmUw7NINsmzCKKt+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cXDTx8hG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cXDTx8hG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3ED0C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780907073;
	bh=+a7RZj+F08Hg9jFwc4ZPSo6yOUgnuHI+tz6SM1ZekZk=;
	h=To:Subject:From:Date:From;
	b=cXDTx8hGI+pjL0qppAu9MRcTC3vB0L+9zaD4fJTqs/hF9mR966OszPluSw1cBaI/M
	 tNAYyR/LI8ftg3pn5f/MZ/Uy8HyYN6Ssi+Mka++wz/+CVfa6bbfiVDXjK7l7KecbTM
	 gyiVUyg7bBIAcolLP7FqsvRhxNQdYUSE3/pQ9eV8KBNMBznF1uDGIfM6sa/0xv8165
	 3jConNK4uRFMXfZqclH2rr//hZzHtNJXvPSktPqKhPQJcc4Ki9Lc2U1zXLHWOCyFOo
	 rs/bIGCFitwTYwj3LvLYCPPkXNn4qUvxTjsJ0vzxGTtX2HnVhagQex/4IlTfBVIi4b
	 62ePZBL5YBifQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABEBBCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178090707369.30330.18095630474615022683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba701c2966204790881c9eb1b9e0ad05a1950f5b400d766a3fe77efc8bf0e36b
Date: Mon, 08 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780907073
