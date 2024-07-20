Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5E374079
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721468154; cv=none; b=L2uSfrPI6k0UgDLkDdg9wiGZFtX6jmrriLei6FrQv8TNtYDzn31M/CHAiM5cW16bEmScIr3GOBiuVrxir4s9ss46PsVpY1YfTSA6VEGBKvAQStRBpTk9uOF2s53QjVDTY+1qNA97ABb+B3lj6Ou3VtNhUZAFQa7vTOOeo0laq/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721468154; c=relaxed/simple;
	bh=RXSzgFspg5ykyiVqjcw2Ll+cSiYOo8Sr3lYQSEqkBJE=;
	h=To:Subject:From:Message-Id:Date; b=VH+3ro0B/AUv1O53FbJqz1lWjnjfh7ltsW0S29pCNdpFvxJW9lC4ZqL/MLORXqtavmWWsrNFbdCqJI9PhHrKU0CWGUi94E0LMXgQFKWek99vBaMvSydWoTSivfHaobmhgIjiT+XElxIw9xZT8Nx93qXWVHoiTmActp0QOX+1mDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWI2cd+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWI2cd+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4E05C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721468153;
	bh=RXSzgFspg5ykyiVqjcw2Ll+cSiYOo8Sr3lYQSEqkBJE=;
	h=To:Subject:From:Date:From;
	b=iWI2cd+bK0TjqC9kLvrLwa5VmpWMr1tx7qwDZjwEZYIMwnkxBPM+kyO7csgG+Fc4l
	 MbdVeLnD/6raAR6aPskvc+kMZf/dhjMkKLJFEAGVDyYnrLbCPhtbBhlT6IdsyoPpc0
	 jYT6aGABwmAR+SpcBL6LvwnJcBs+fsS0+CJgrvQK/qoB9csvokrNXNTLkZT6gTEFfX
	 4J4pRs7dBzo3VExr1B/g/fg/avA7Z0o6nsCNcWHaWsqsEKyJ+j30E2zWksBkdL9Kvq
	 fIWyAGWceGeoBHNvX8as3xamet0bOqxFmf5ozirD5vc5peqRuaE1o5HVZQCNSl9Zp9
	 3C6jyHe14CKOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8275C3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172146815366.11786.13362292902522821729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c230905e880bbea845665824771d376dff0d77753a0e62555655ede1ecab08cd
Date: Sat, 20 Jul 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721468153
