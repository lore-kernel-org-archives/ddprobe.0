Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304BD233155
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759749594; cv=none; b=qs2fG0ffW9tQEoEOuKXNDzUrKnkwADKfGpkPfbL6xzi+y9luIzRce+5Lb5xkY2tcB9K2LJZcPaAdfl2qnou0Lyb/grFDz5icusWtjBvNeXS+uLHOlLEgxF+A7pc7m9lhht3LnLDIWI28ERgRMJ3hb0HY7/pfZkD1UfHGQMa/2H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759749594; c=relaxed/simple;
	bh=uqwbPfmHz+bd5dSpOqpGBfxzOpVax8la097Sbxq7CSY=;
	h=To:Subject:From:Message-Id:Date; b=VMdKqb734KESP/WqnmMYMFUoqoj3Pz8uNIEB1O7nr5+jT1UKeG4BrcJYM+x2SqTOPWq3BxxD/bkIyKviCZTzr9RQ7iMoxpZYWGkBVG0Zvb1qOrbn4RpD8cy9ICn2RN61JW+fy1NQkT+xiTKsGWDqPhht8W0vgz6u3TBM86D+ZYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t7xdSDD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t7xdSDD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E286C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759749593;
	bh=uqwbPfmHz+bd5dSpOqpGBfxzOpVax8la097Sbxq7CSY=;
	h=To:Subject:From:Date:From;
	b=t7xdSDD0D6m4HSI49jsTbkWHlBHjZn5u7Nmotfm2kmJLnQsXsjMIJGUzL6mphs2bz
	 siN3d9dw6Xu5WE4KHypCpuK1/AvykzErMhqIOl8oBZz9HB0orIFCCsknrgXAVRcbug
	 CstiPqmZQAYEiU1/q01/4XpL615hu76kn6zwD/ihyRUtQMlHpP8nR//pOZnf95X7Lv
	 tURysE/ujUUNScyVrWnzOUsDSqikCBFvQ6wMkN6RW1QWFFlPraP4ZXDK4UBMY1NKGL
	 tU+LaleUxRlNHCc12KbtXmPTCCCRQzPgjo8GghG0QVOf0uBG8nmPpTt6UTPoIUTTV7
	 Yx/t6v2mBcV7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9C0CCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974959358.28611.13285140786080348143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdc9579ce5bdafd38fdb1c525fabbe6bc72e9b288ab63bf274680431b4655505
Date: Mon, 06 Oct 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759749593
