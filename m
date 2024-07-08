Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB3617C9E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720464383; cv=none; b=OArRcMb+pXETREiX7KHksJOkj4L5DZzTtV5tCr7xmrDtfxaqv/xNxIaq9ntpQV83Gp82p3TC0vjOUozQ3JPKa+0OAPttgCecvpktyJ2fMdj0B/k3OyGfZTvsyBF1voiOq9EQCr0sBjEtXYZp17EXMjP5lqbXFvgxxphwfjK9cxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720464383; c=relaxed/simple;
	bh=hrGZYu1BGxv3V4g/jCCtao+nTqZqLuq0cevJSkvl99U=;
	h=To:Subject:From:Message-Id:Date; b=R7WN1VyPNVIrw8+knQcgpG2XhqRz6b9TOz5OeI6+yuX9MfJ+6Hwvin+qCwCvV8qXje0nVBTGDg8hz0irJj6IsGaorDMYnfh43+rMSchou9munDpCIH0hzlFYAgkH9Ic09XGHndNmzE8t7DI+qj7NwTvqwvKMoSs0XS+1lsCCoEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B5Fzydg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B5Fzydg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3FC6C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720464382;
	bh=hrGZYu1BGxv3V4g/jCCtao+nTqZqLuq0cevJSkvl99U=;
	h=To:Subject:From:Date:From;
	b=B5Fzydg73JuH/P4IaXSUErqegzJOy0iDvgbvy62amIxrPIghBQTNchzwZlwTZyxIo
	 ZlRAg0TV+Slr6fBGUJokErOcp6FcfBE94qjKYuP/vdVH8vp0Tc3b1cpdvnx6YvUtjG
	 Tut1/o+co02lZPDYTRouwZ5ra0mHZVhzgqtJJRZ+TMhPteOMlBDA8L71NtA9GlUdPG
	 takFDX79d5OBuA8Mi/HLzHApcybJ69E2ZMA5LhK64iaGxrW9E4q6imOovLyypFOaCu
	 2u3SzuDK2PG6ZQjm5bgoDsEOw45zksGAwqo+f5eC2pzZEVuKWQ+l+v3QDRT+YNqsT0
	 7Onn8CKGKO/JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0D3C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046438277.32041.9898259299837437133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c18a3a388a44c1395183a3c5a58695a404506ed60c00b1eb9d58f92722c0a4
Date: Mon, 08 Jul 2024 18:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720464382
