Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF88253947
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749200994; cv=none; b=D6xL6TWH/mVQniE66PP9cenRuni23nI9fXYZeXYjXr4sl/8fMojx6627ORdCnJXr7mSUZzzJSstA6L3FJobFAEakHI2BFkdQOo5cFyqt7SXSXnO6nGAnruOsFYV2nk9o7qfIEQ2negDEob0stONqHMNZy7JhsUqsIBnTWwgtHR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749200994; c=relaxed/simple;
	bh=wc3qxYpS63jzkc00H5pUiOZx4lYpRakrE5rfEc04RnE=;
	h=To:Subject:From:Message-Id:Date; b=V0Blfu8OJTaVIeXY6UCdmsbVMPxN6UWWIhePK5iHFLbIycBb5ooVm8xpPXQG7lRfSwE0nByZ4uCZslU7Jv77DAXbd2IvK5wOrjDbweGYXN8IpaIuEZVFey92jjfOwT2wyGvYQDZDV/g4onYbuwbPz55/AK54q9egWu3hMX3h0xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkwDMuZe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkwDMuZe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD6EC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749200993;
	bh=wc3qxYpS63jzkc00H5pUiOZx4lYpRakrE5rfEc04RnE=;
	h=To:Subject:From:Date:From;
	b=QkwDMuZe4zR++FrlV6dsRML6rF5iHjDD6ZFw1USXV3c/U0R5U63mtf7iUY25cme7Q
	 9CcpUNKfRBJNF20WQz5lwCOBpYT2UoKTai6oZOdgcom0d7iphsqp6CsZAdthmiMjJ3
	 o9M5CIJrfnI9csiLq+vyAAwD5Z/AoAOtl9ldRUzmlhdFy10jWSYG+ZDqkXE0clj8vo
	 01Lpit75c2VbW4ljYcoiHOlIIm0AE9+JpLwk4lcLuARhm2POgq6eVm9ll/hfEyunrS
	 gQ+YMlSHN6qbUoZcmUk8yPjYFh0GM+clDG/gYiKW1zdN9Xh9j+tZWUBGmzGCO9sILn
	 TqiEOQL0bPlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0F4C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920099357.23250.9566188564426213673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a017c6667b865d84e4e60eccbb78dc02664e00bac88cfddcf2fd4e36d72906
Date: Fri, 06 Jun 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749200993
