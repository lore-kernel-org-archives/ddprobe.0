Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE7F4A1C
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717206863; cv=none; b=D+mjnqbZEiu7neHKkt3WDHesXSwEgo1iaYkNA0fDOe++Af2URnRNiY+0ttCovt6nn90hfVmelc6N58BLFiRzGuI0p0MI597n8BCR8ODAh4s3zRrCjmCFLTs5U13Iohi6m9XnLqQrarXn0BUpyGYvozhvjsr9topdiIHlDBffvdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717206863; c=relaxed/simple;
	bh=jxiDDbNEY2fYWxKClrkjN/PLLklXKj2w2CQzpndJyTc=;
	h=To:Subject:From:Message-Id:Date; b=ahbY3QbxXKYllFsyB9VpdIkCtBc6wpP5PT/RbvgJnQp5JdVS6uvXKRrMl/7NdreMYSJlTpPe31kNjBRE3coHY+Y7KevUkAN3S+Q+Xo8s1mEGyBbjdrX5ck6Uvv/hKlS6mpjQYUmSRrPEBygo8xNtH5FvjMV1Ln8hPhZfOZmLA3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8GkwHK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8GkwHK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3CF1C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717206862;
	bh=jxiDDbNEY2fYWxKClrkjN/PLLklXKj2w2CQzpndJyTc=;
	h=To:Subject:From:Date:From;
	b=u8GkwHK+KHjV/8Z8Z6BnLKSTnwcwkq6VIOYWepz5Xvo1wegihu0xiQwgGYMWP/97T
	 swNigu2s9K/jhMyCmPb6kNK3ImnfjnV0vJzxekHP7R0OyH/qMaJ6i6RlXjaEyOlVoc
	 4205I2E7VJeHn8DLXZ5E5C5zwDaDfSeAdrTL3PJKkRcXEC5MFfcV6BdmmfLjFnx/rQ
	 aCgJnW6wD9PuZhXm6nW+kHIEN4UjdPpZUTnUTEOzELqKFXU9JQKnm7ADYKz0S9sD9V
	 mcKijbYioWuvGwMHKUxxhZe+Pgq09MTu5lDBlpdVGb6cjKlnUj3XYS3NN6+0qIXWYB
	 hoGRp4EQ/xkRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C79BFC25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720686278.16495.2290141175845900001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6bfc019b4560cbc4f4be57a830cb4a682b42da5cacfbe8aab4456ef4f1c8ed4
Date: Sat, 01 Jun 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717206862
