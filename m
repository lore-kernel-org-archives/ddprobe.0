Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7209F558B9
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719561263; cv=none; b=F7wAgKVkM68JxUIkjsI+M1vDTNEGLJmIki5YkLmgGb+X26Tcsv1tBaViRP5s9uJfa1H96xypjrHEEeCIXoMxna4LnF8ftGla1MDO8dxi9kt9IRmxyBDg0gWHFP6TD0XawjKL4Gyu0Fsqy/BbDbv3kfthnRPeq71qZSVODyiGJKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719561263; c=relaxed/simple;
	bh=aCo8aioDBzDOavSoEWmHVIElV4iA/uHrghSjLVGlGKg=;
	h=To:Subject:From:Message-Id:Date; b=Zkn8uCsbp4tWwgDHRZQCHyMdYUSo61Ntg5PzyqcOePaO/TWXzPUFtaCoZX5Uyt70RU+qg0YATb1gwUMZcCOtAKmTPVh0jKUW9k+Y0e7Nz4g9Go6RP0gHrQLgDFlZxS8r6M9nBpWUvgwvt3xvH43nNZmBiwEfqKyKmoRUJiG2A2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tRSxSMB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tRSxSMB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A47C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719561262;
	bh=aCo8aioDBzDOavSoEWmHVIElV4iA/uHrghSjLVGlGKg=;
	h=To:Subject:From:Date:From;
	b=tRSxSMB2hllxUTM70ldM2gwNdy23D8UOyuN8yyCT8LRJHHeHSKNG5PmL+8HH7ww/K
	 dBRm93i9t+lY6Ofk179HTBiFgqKIU+UulbHQ/4ZI4fAEySJgdZCPVuQBuLAc5hHPC3
	 8NWHvo1Z+7LzzOmlbAfTMku0UKpvr2pSjpJNENZu2sIMoAb4mlkUwxroiPnqYDJUCp
	 av3mKQDsb0GvGHV6gcuKEhb7Ngdlc8ZN9TpaqnFBnIRF3IPzdq/Cj3oX/z8s/IJKdF
	 B/MD39rh+gAIfj/HrXP1nkOalZN5pFJAsPTf0TdkyWAsKlU4LeenJghNUot315RILs
	 eDkawz4dWmEnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1896C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956126278.18048.14399986455727416627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40e9145d0169ec57fd833e7b0aa99cbb3304d762cf492687209a4bad5ec06a27
Date: Fri, 28 Jun 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719561262
