Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E58135B138
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761299994; cv=none; b=CWyZMQqTdjmxCngW5vga+vqKZJEgsLcyRJIWdeg0AHExc20sysfCg4R9ospQOVnzY9PrX9fUJ9ZwN41Lw1eBUF0/YwfYJeNOVGMrYDXhCiCUfCrtHdMjZDhKfWN8CTb6u0bROxsfDvGpSB7UA3QQ0Lb7VrXFzx/I5hreivXGbz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761299994; c=relaxed/simple;
	bh=+9f8v6QaDXUb0xkbeNayvPIhvJRfG2HE5OfGm1tBOk8=;
	h=To:Subject:From:Message-Id:Date; b=fzZCYxVZP/+YUR8iXlI5FiboVQNOvCVqViyI//KbFBZUPv1e6sLLuEh2Bmxgv0NPlrGql37iAvP65wKADZWsRDMmtq+kmRA5wnTV1OR9gbKz8cYjD7EB/cV/znLAcSyGDawcSfd0W86o/DbyNyv8WKXqYB/y95akKj4MVPuR9n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqKNp5i5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqKNp5i5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64C9C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761299993;
	bh=+9f8v6QaDXUb0xkbeNayvPIhvJRfG2HE5OfGm1tBOk8=;
	h=To:Subject:From:Date:From;
	b=tqKNp5i5ttCmAihX55uR8cKxV+FNNIF9ufby2EroHQ9aw7yjuKHvVZvm00FGF4Wxm
	 vDYY0HXtmFLi7HCC1n5FOPxjwgzbqnOYEQVCfXFMrwU/EVFs+IPYEcizEMzuOxMxlB
	 DkykqQKROVOnPu1vSNniZGND+5oybPqvS5h0lNqav5wUJP0iuUgL8XQz+BQvOBZcUF
	 rx2NByMUPTIkRQqmu2+kQs6UBWjBR1nXkVTOaFd2I0ED9xETbPCXkXk1GX1urqWXkj
	 7kghj23cmLgoWzwEOaqZNUGg+W6wX1E2KxD66xuAkM1c3PuXf+FF3lGw0ZbzEUp6g/
	 hp9r4YX3Ce6jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DE2CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176129999358.24343.1752884358036309245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8c81ab8cdd2fb4cd4b481bc36c163c64eb27352a5a8927e81adafd3260b27d
Date: Fri, 24 Oct 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761299993
