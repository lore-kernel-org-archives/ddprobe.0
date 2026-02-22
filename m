Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DED2147F9
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771755294; cv=none; b=K25OmLxGPzcFjNRFQGh/g5RlFVmq4CgBgjknQzV0Pdj7edA7AtQidXMtmOLClcRs0H122vv+R+MyIra4FAAkBTMpPpnyr2o/7Q+/ozZvIwAT74tzWmWYrUdNBL4c5DU/xHR8hOlkpGInH8epUqMd1ALUQHVJR+TunS1InhM5pCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771755294; c=relaxed/simple;
	bh=xfYoK+jXosPZh6aTJHADg/B/lzOLB8xmjD+dQX4G6PI=;
	h=To:Subject:From:Message-Id:Date; b=MFqBIHkFCZF/71qs8RGqvjIKKQxEqsFa+3lvhNTS8nKN2AfCnynCE4wW+rxciKnHO/X9wz+3gbcXOwV/vwO/zjO+GfP7tOOiKUh7Q2Lt45bEzXusF+BPDoiYsr7T3WtfIiyO06yWI3GztyNf25BHvKgbInCyAWKhSTOgRXgwy8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9ijjs5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9ijjs5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A2BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771755293;
	bh=xfYoK+jXosPZh6aTJHADg/B/lzOLB8xmjD+dQX4G6PI=;
	h=To:Subject:From:Date:From;
	b=g9ijjs5CJqrlgcV3UZb3NYserfxrSl+YziO8JwfAQTKARggE+wLewFtKe8GFX6fmq
	 kgNA4hRBxuYBlk9lH+2/GTzSQh2OseF9eTYv7iw5DuAUMRnWaYkvJipaq+AfF3VD89
	 pQ9RqAxqw7oiVLTkQag6HAmf6NRt1/ldMOzjChUqWfdFLcR+ln+OSAh4RtN4noIQ1N
	 dinfNr6IfVVr11Okx/4VoBb18MfQMNG5BhaSAXUlBClqYViHQpzvUIkvqZFqKdLQm8
	 EbX05nv5ZfBAdXACgFKjiY+z1K2KmlCQQc37lxb0qroYVbzkNz5Ff8xuhwNK513pCR
	 FKjkiw0Nz7vvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BF0C624D7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175529358.19185.13302264397094440626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd240c4fc7b56f0233728a453ab2bbc0595ec492c542d2dac8c11272e8052b4c
Date: Sun, 22 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771755293
