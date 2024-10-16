Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33812206059
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729080354; cv=none; b=JEofxGRjjp3qjwuhPaiboNwTFMw7eff4WYXGtd9piK1BRWvEk6zRtZ2NPg9NGwF2ok5lOIhWfbF/i1tOm4LayRllLkS9z85Up1dOGdlpGXnWjm4QviiO6FHOhpv+RMNF3KUp4jvWG7F9hvIothC59rQ+/jMmvqD2xzBqKX0lgwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729080354; c=relaxed/simple;
	bh=rFpKMv16zgLSOZozb4PlxmlIymxYaQ0dJ+uwGp3iLS8=;
	h=To:Subject:From:Message-Id:Date; b=JNKf24uU8VSoM8rUhzhxsWctrDcRUprb4Apo3yoRUkHthJ+m14367vyc6WeXUjqX/Jrpgc+2wUdsDTll1Aw5tweUydEJSvKm9jRlMJ0ScEQsiXJ9ARyevS8cx7jKtg+B9jSCzMLlm1E7IjCjGsYh3qvvlM7ATpG/rR+II7cD378=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fc3eqbyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fc3eqbyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCBEC4CECF
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729080353;
	bh=rFpKMv16zgLSOZozb4PlxmlIymxYaQ0dJ+uwGp3iLS8=;
	h=To:Subject:From:Date:From;
	b=fc3eqbyBL8Tws+MosZnvbSATceW4sogq04KfNZvl2zZ0Jc+1mWcepxUnPAju1q/Sd
	 2evbvxwmCFmdN1JFSUibvEky9wJRLPHrvk2Jdfk55DBEHe2bgs+3ajJJVIq5LyIcSj
	 8gClQ/ICDxmAzBd5xnao18wNGdUbG1/jOtOKoS+LUJ5voyyqu3VfjjigVukZSuTtUt
	 mOieUlI+F4/cSHcsQw+jA8WxHnWz6AwibYh9z28E2edhNMQ3L4T1iQFOX6hVZJPg3t
	 eP+t566R2x5uCWZBb9G6ZImjkLZL7mwyXOgW5SZTeYi0R02s7KvUfWyU+KBjkMUr2q
	 Sgx+1jD1CEtAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C775D1AD51
	for <ddprobe@lists.linux.dev>; Wed, 16 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172908035362.9229.6259080504733099123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3c76c0d40915243707a789a6d854208c1d939f6f9615172950f7a45061526d
Date: Wed, 16 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729080353
