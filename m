Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B31347A0B2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781122594; cv=none; b=EsDTgiU24gjaI9j1ZDBWCywuPRT3xwVoyOYI0qN0I83t0YeiQYUIyPpgJ2Q7QnCBNRwxk0aI2v+F0EtD5ztOREEmNhCi000CtV2uxekvXw3oQU7l/zm6mesRO7445PTenDiiC1ZrlE8YTSS84fkzpiRupv+N6btBGRxzrCW/yaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781122594; c=relaxed/simple;
	bh=xnqd0P00cIJgcM0EDap1iH/DlvbVm8fOqfymtaQYv2Q=;
	h=To:Subject:From:Message-Id:Date; b=cieDa6mdxc+gk8vid10CGyMdJ6j6Ho/RS7z+8IkRiJBWcPRheDNf0uvHg10aXK4QDTSA4mJgvpHzHr3tCjDthO+fludvbTGBi88mAKSsjJWV8ksygAyzqhLkIKRdGuttNWYUFqrekeGkj+3HzJKoJCCojQ/+861KVtEhIpvnYTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u4Vqys70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u4Vqys70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D967DC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781122593;
	bh=xnqd0P00cIJgcM0EDap1iH/DlvbVm8fOqfymtaQYv2Q=;
	h=To:Subject:From:Date:From;
	b=u4Vqys70nn+O6iy9YnP5Q9jaRXDW/Hr2OTU3/+60zboWPRI3Pwsyqshz0iFDIXv1I
	 RE8JAMkxKjusDpk+HH9DutPictHipl/QR3jSuoL3JYq13CHcvsRN3o9Yi70g3RJsUl
	 Qcft5Wpza3/FBUtLqogAVXiqqM6V5DyS6z7RAvF5ek8C6f1A4HTveWJoKoBwHRWehW
	 u8CcyYgAB9EiB3VUhzaEpUfA4mMY6zTrzT9HmnYb9HOigRnU+nbMW7GFGjxx1T1bxv
	 4nD7cKtRNgktJBi24A0TluHD6pe0dbnbEtrQFWb9poe7oGZXg23ZQv1m9e3sdZkuDx
	 H59R8DXvAiQpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64ADCD98C5
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 20:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178112259369.3401.17041177292103809743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a65f7247f801e43ef6c35e57f9e1b51f089016061d8e70946c7d32c86e67cd5b
Date: Wed, 10 Jun 2026 20:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781122593
