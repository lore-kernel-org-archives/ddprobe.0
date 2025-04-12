Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55ABA19006B
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744478995; cv=none; b=sk2X/zs24+5EFK8GIfrJGo4rsD6gbVviuOiHhdgRzJ2goc9eD3NPwrmiB7U3FsiHWRJtOBFft1XUeROz8Pdnq0SR5Y2CEEpmhlrOiQsk3wvRpMuLWN5Nvs5zGMyBoxYQuCrW/tjDoy8rMy+9QvrEk24LZjdWvfxjGVLCeQ8tGPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744478995; c=relaxed/simple;
	bh=QwqWfiEq/s8s1EKFImXbm3uPQUJ9IVedS6TRo//D5Ss=;
	h=To:Subject:From:Message-Id:Date; b=uSkc0lCeMlFUFj8owlqRuhDpgGR1K/cp97JxhTaDRWQWL5fZa7BQia+Ex7EfbiNEwcz5GteDg0Ke7tFqHjxSWR5dQbLLs4VvksAtojAyNg5ujXYBNXMngQrgb3g80NhAByPP4T5gkoJWOOyotnN/JoknOIPrnQNk3klLQx9zYls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc1twL9c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc1twL9c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7971C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744478993;
	bh=QwqWfiEq/s8s1EKFImXbm3uPQUJ9IVedS6TRo//D5Ss=;
	h=To:Subject:From:Date:From;
	b=Sc1twL9csRnpS0+nUOM19BPgia0SLZLY1+/ljsTZNt09jFKw5zPngZLD/3TQOw5MP
	 G4FSTwjcqb6POZCXa6TL9pHRleN9h0zM5X22YBAnpxZ4qYf2AyYi8kES3UDcPdzf3K
	 hhL8vgRjx+fGZgJY4xc/BINFJdM7Xx2dAzwDU1o4tGhTzA4rXrpqncsg6XWG0aXCvd
	 XM8dhRWTwtkWN1M3mrXxAhb84bcf+CUhz5/gSzboVIx7JuD02f8uAXQIQdf04u3LUS
	 PMatUCVwukkeIQr9apLbz0f9qO2tdnEeJHvmqMPvauLqeJLnUJC2AB9/N80nkP8Sjb
	 NTOURNabmPyRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A26A0C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174447899365.9778.13094617197012961635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e727a3488959720675d303a3cf1f784b632a6afca312f7dd5f4f8bb04aa131
Date: Sat, 12 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744478993
