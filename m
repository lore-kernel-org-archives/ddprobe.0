Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114CC38D40C
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780304074; cv=none; b=bgWUVbgJXhwoYzcaOUhyCFYcNiIVa2s5UHH5mRrwufMsGJ2gvYjqj8xbM413MAMEHYgEmrgs6eIZeL864FLpfei/K5Wdm6Y4RsPMShzKgKmanT20SDNPZ/vyIvCaIoO+nbG6awSZLnjXah9DV145KWAYuIuIqUBmVbVJ+TvWDX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780304074; c=relaxed/simple;
	bh=wTk0tT+gfiiymjSgpQ6njjAL/YWLepHWZh58fbjB6og=;
	h=To:Subject:From:Message-Id:Date; b=DksoggWSW+3nhmbj/CpP8G3qRUs9rsj77OnTXDb1xHTboLcK7ANbAyOnx4OYCr6hXN2X7gVyW7gE1wm9R7l2ABIJMOb42T6Xuf28GtSsBSrdgTo3FgZC4jLXjmbt8KHG0KvhLIE4DkRZyIq/IhdZdSL54+TW+0lSS8nzp3IhsOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fsCXZddB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fsCXZddB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7E5DC2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780304073;
	bh=wTk0tT+gfiiymjSgpQ6njjAL/YWLepHWZh58fbjB6og=;
	h=To:Subject:From:Date:From;
	b=fsCXZddBMtgplzgOB0Kv2V9KT5syYmcOqiLpJk84bYmOSuOwNVrPsEkwsKvjRWiok
	 iMApHy7ClMVLuhhQa6dyVZ3NxJo+xBe88kXGq7jvWYjh9HCpuOTFWA5KZvRQWN7WkU
	 PXGq0aGrB64FKNYu5t010PI7TLcnw204bnNUcVVFah6NlqRaLowjA758i+J8TVTGBg
	 KFfQ+66P9KNhxQbJh7hbi4Om9MfLFiA+KGPGRtGLEGJ827iZ8XgJvAap4yOdg9Bxkt
	 y3nMZe7NOSDW6IQtFJIWJCDkUKEbWZ1sbr2tP4sXMxirRwk58K4FYfgksfbz1z8aC4
	 sWeKhhfIonC5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1B15CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 08:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178030407371.4830.5246529781529892781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 889e988dbb71a0db576c504047ee0460819bf4d363b13f257a3f237115c18540
Date: Mon, 01 Jun 2026 08:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780304073
