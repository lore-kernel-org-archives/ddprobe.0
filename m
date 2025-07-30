Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5338A199BC
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753857594; cv=none; b=HT6nFQ3/6EUbMd/usaDjzFfWYHpYYNHMREPan7YIJN8wnAEYJZPACQ6EZM+WQ4d9uht3KHRFu7FukNZx11PTwANNp24ipP9Np1K2Uef/FRt6DnAotgauWmSaOtddAfYVvYM8cHWSCcESGpr9JbBkhoBmifrLtPERMfgpIsa2LOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753857594; c=relaxed/simple;
	bh=nJS8Xi4Y+0yw36vIJNWI7Ji3ihH9iN8ykURikdmEP+g=;
	h=To:Subject:From:Message-Id:Date; b=OX/ZNFECS8QFIY+g//yyd0vX7ldfhAfqpgyvbGxm+KEgNAuYBdFLmlIQ/H/loDPwI6wyhNxFhFcMnUEjKxPElhmA5QG+R38EDJ0PsPdZnKeLWNWtlI+XNlUYfhO4j2LpVXv/UIn+v1WQsNJIR2tb9yX72xjDur6t33JQ34Ns8xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTsULKkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTsULKkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C367AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753857593;
	bh=nJS8Xi4Y+0yw36vIJNWI7Ji3ihH9iN8ykURikdmEP+g=;
	h=To:Subject:From:Date:From;
	b=HTsULKkbRl01cSM3IDbJoYQK0QuqaP08pe3uLnIlTibgYnmKgE+EI2qfjYSMTrNjj
	 1SDgpnKmhDdIUUFRd8UabYDI2IYYde4QQ8ZMPkp5f6NSuw7/8rSH7ME0u6wIQjm9Ni
	 O0Z/dVbR9xAxUIA9+2aLGO/5aJtSYxXMnHDU5pW1YIFJ5HdwmU0GzBwc47LSo6L97Y
	 S0QKrxVB8lPhxxI7vH5NQMo8oeTwmn078YqnslpMRzUoIXuIikqimbEkBX4VYA1qCD
	 eX4bJpmxkcoLiVF6cpL0AQDYA9mD7l0tm/vI8l1pW0ofcMDqUg3+B1/oRtPpcPGu1z
	 XJh6VJXauNkUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEC9BC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385759370.7449.8481932127079433810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc0a3cace067e5da8768a55d7905d9a4a32bb1a5e6392c0f3531ea6efa40386
Date: Wed, 30 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753857593
