Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DAFC28C86E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754064594; cv=none; b=P6lQX7ixdt3PJRhe1ffeTIELbwyAOdeFG34vpV227XdbZLbmC73/YqrKsU61V77QQSKN6ZpJXlCjDPw9f8lA6XVJc3ojkKhIpD2LGAVGw4qc5oQ4BwJ9KHFopqSuKjzwQay9Ju36hWCUspbbVwntcc/oohSL5q+CcU/3+jweTRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754064594; c=relaxed/simple;
	bh=VyH9AFXRqC83vGX30p7lFgEZk0L/Lr5IvPMBPDtxW9o=;
	h=To:Subject:From:Message-Id:Date; b=AvPEwktu8txC4Mp7+uXAfQfkDLQ42IAqf8jG++yi1zGylljJ/uWskYwIo6WnKMLsdyfJJdSTa5cCkBFfIl2dK+4O0ravX1cv9b309TTlHijuP1hG1rM3jTunfW2ANKCIfMWAOv0UJwRMbxhM2PAhNiDonN3h2S9Xlt4j3s5OU8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKvc9EQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKvc9EQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E13FC4CEF8
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754064593;
	bh=VyH9AFXRqC83vGX30p7lFgEZk0L/Lr5IvPMBPDtxW9o=;
	h=To:Subject:From:Date:From;
	b=PKvc9EQSIjuqd49fUxX2wQUucbNmIr2ajM8XAw3rd87KwBHHPE7OFn/tB+A27YJQ+
	 kxQRHQEySOh8Ot2c7Y6WzVP/i3HBv7TBtAN68jfIWlQcQemRp6QePqMsnup2tSSQYB
	 q8VuTYEplqpWCxG+Bgemp0DIzbNeJRK/QHmLile6DdEzONdE1F7Y6/LyzZuxKm8gcQ
	 5tMqvvqpxVcC/ZgabRZk3WnZrUXyFiyptu7tSiBpJ+GaJtKM10jDG2Vs84+msIIM8D
	 7gY9mk9x+3BLh4+xLqYmQYBbgJGF49stg6+bAT1VjZqBfk6pRw6qD4W7V09C5J4Y/9
	 pUjvH8A8JOC7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0BCC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406459357.25447.10315357463953297123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a84658dd5bd75f418ac6ce7b26d86a1f8004b50e2d795157c0ee64a52c1d0d55
Date: Fri, 01 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754064593
