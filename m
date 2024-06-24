Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5790B2030A
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719207743; cv=none; b=CWgWjZ1NcGfksvlDskmV4mw53VB6+7IBKBARutZEA1/E8Rcv4p3svAFD9pyKCzVlJBnDNxCHmFD3/BppxwrNzjyhx2dSZWzI4VnQyi6hJTvEczGNRCktcHRioH9b1N8FbdAyGdgoP8avt+1iEdkYBD7j/IQdRuiBRiagwJSfpfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719207743; c=relaxed/simple;
	bh=/Pkcv6oMNPR1nkvRiylzwVW0CkazdDguAvqwZsbp4io=;
	h=To:Subject:From:Message-Id:Date; b=R/w5ftYLCgwsmtlU7YjIjHQdw/GjSBsZKsE3WXlkdarEXLt0GF8TZdtJIXOb/L5lF9VROaHeFsOY9I/1YbID3CK2nvxQO5XRPXDsxMEwaLehIoRzbQxoEJcV0b3spk9sjb3k5ZZQXsmtAg+T34U0ju8u4uAw7ygco6TWp/K0dcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UWyxqHQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UWyxqHQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4731C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719207742;
	bh=/Pkcv6oMNPR1nkvRiylzwVW0CkazdDguAvqwZsbp4io=;
	h=To:Subject:From:Date:From;
	b=UWyxqHQNmHZ/GQrAIuo9gGNzQsLW7ry7uwEWgRfZTk6DTU64IaXdclfcmvfOp21AQ
	 lJ6J6kbmr9v0fQORcA3ryDv/1S5DQiwmSXFhCEkNSLkGRxHrBOECk387iuOEIuIJ2T
	 txihe2zOhXB7e3cLSD80x7ZgCANw24imHpPiETCvzAMmo9fxsbleyQ6NQ7HdZ4qbHF
	 aX0db6thsRu9S12Mgw9oO46JIhewUBHfhXtSPtC9pvTzTkWoJInVFbkzVlJNVO9xd2
	 tcnqF/Nd2NBBCWlJHI9lWxvZks9N0QOhEFgV5HYMPrwip7rllTzSznhP8rc0vc/eLc
	 jLDhtfthFyvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E26C2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920774278.4162.3345791947491828186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aba8f81eb6032b660d3f85c392009a7371d34704a0851854c1f4f7468eef8e0
Date: Mon, 24 Jun 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719207742
