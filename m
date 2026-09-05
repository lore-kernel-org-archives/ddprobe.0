Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F44280CE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788574234; cv=none; b=YGScUJVPmL6vl5Z6I+d+Y1gwgU4SECdB0AJc1gOGhcp8g3oaAZod5kOtcE0rEIVEoHZz2cyyvpUaAR/xqaKG1TTrFKyJjyb8kwjYQFxCX09xEmDfj7VTJjhi/LoOLTGTKmhUqiXnvsX9xNjKd5oP6W1p6NvH2/gSGKSh41cP5js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788574234; c=relaxed/simple;
	bh=60hxdV4Hz6tRYkOLdMxx/D7SjTOqODKncavNZyCzAjg=;
	h=To:Subject:From:Message-Id:Date; b=jYpKZ3WT/OxFImtTlIurUm5ZCBYr9l+z3F58GRZmaTr2zceyXHmAf52ZiYGEAeZ+KXAeMZ1k23UD5BbFxaNBFUQB5d0pby2xwEzEIHdBrj4sACTqClTPckgoHtw+CQEDgqEESSdkT5bF9IR/sBNI0XsT9RIpLBI6mKCyKsFx72E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qfp8AHmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qfp8AHmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF1BC2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788574233;
	bh=60hxdV4Hz6tRYkOLdMxx/D7SjTOqODKncavNZyCzAjg=;
	h=To:Subject:From:Date:From;
	b=qfp8AHmJWvtOqTO9ycGQKUkxFLq+O056CjmbcC1dRKWwNdti7sCFgDCdSWjIT7O8v
	 fi4R9ht3vWbggDVnYvE/Th5RhF2Llwl+q8EgGD7FxFkOSY2yYGVrxcxCZa73g7QlKl
	 FJgnoYyhg7Exj1YMcghBAfyHzIrx5WuVEd+YPTPc+uaqQqVsCPzPia3NXZ7S162VtE
	 ITMt45NHlFxrNjlUnSv1urW20LZkPsHhf3ihIIG5yJHrujrGOk9kLsKoxVaqEjlbsn
	 JtdStZj9h6vb7hzVCw/xiQ695ohnmR/dJ/WAita8wVddv1EP/ppvNbw74ivL/pXjY+
	 J+t0Y1H65Bg7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC416C79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857423369.20856.3237202534104740250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f316d757de5b3859d29b478d67050a2a96db1dffe346602ae69cefa1eeb413f
Date: Sat, 05 Sep 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788574233
