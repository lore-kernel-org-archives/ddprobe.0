Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E853101D0
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776533254; cv=none; b=BBQ3EADNQEuEXwfh4ilg8xbIcijqRjbVuweyiKQT9zP9CquGlYa1xzNC5P57+OL45xoAspUbxqv3XA4J/jvpbNj0HETFiWpDmwt0StAuEnIvrnaRkasuuUIUjvcce8IJ9aLGV4mzNYd4HFcfbnCUAugpupslc26nsmF+jeHGbMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776533254; c=relaxed/simple;
	bh=pvjd4mPI23dS8+JxsQR6Bd2LtnLrb+peDbEtQUxuY+o=;
	h=To:Subject:From:Message-Id:Date; b=p9N7jAsuzV9psFoPPEWLZ2ed7HONiRwM/2SY+LTzfCWddTyBBhI3ai1W4EfyM9t67jF/Yh6kqV7hC+ZQJGt0MdF8kg1dgVyqF2nbmyN7Mg45yfW1XMNuAWCROxfzBfJSpo0APufChgmb6Gcg+wGbRZZvdChYWkVVuHEWP2gOXE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTP8zTqn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTP8zTqn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1517C19424
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776533253;
	bh=pvjd4mPI23dS8+JxsQR6Bd2LtnLrb+peDbEtQUxuY+o=;
	h=To:Subject:From:Date:From;
	b=RTP8zTqniumhpA1m4CKnOOSOMl1n8Ox4HG0ibATUQbra2v2t4fxuHAX9BA5APiAfR
	 5MLlw7RA7uMeUfq1RFFeFb8oKdz20v4suctoRk/4kKyoUemwL2ZlfBkQkFDNosvcGr
	 Z0W+RuE0h3ip6ddvc4/EI23c/+f+gjqsIoBfOZ64HzRn9fZfhjW4yrOFotfQoZsI42
	 olLCL/LomncN9VxCyo58DEmureeK3CnjPFMfiQAKWaefdYOL4lJu8NkvSz+3qUcnW+
	 BEolrdlGv7HNgnTQsZhzbxoPC4KYxmvy8iBNQzKJrtMpa0f6vExL4jRO3q/1Yhllo/
	 Q4wOPuhbYkaIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB87F99C7E
	for <ddprobe@lists.linux.dev>; Sat, 18 Apr 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177653325368.25503.4751734664100988782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05e689947c893364f4faafed543de0947b9cd8f65a8237a865d796e4b64a7140
Date: Sat, 18 Apr 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776533253
