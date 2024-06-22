Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6318442AAE
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719037343; cv=none; b=kqhhMYPlb6Mt2LAu6+qFp/6yStqja/wKgqUBsUeA7qsCZ7Z9beXdd4jKfxfZ/uuufvJCfsq6dJ5iYbqXcMdLMmArrqf7IhjmSAmoIbUcJTU+n9XuDMcKQZPCHV+vP/xU8IasVh5nW6j5QId50p5UnvipSpTqP5j9LSF7xaig6tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719037343; c=relaxed/simple;
	bh=JtvCsTAVZ3/PO/449VIAnryovlNBaMjaFVnH5sZlPE8=;
	h=To:Subject:From:Message-Id:Date; b=YrlM5kfLlQDsB2KEoWMQRqCXwBouW2Vj4DQlDIIylGCdsgfksW+yyUciex88bZYZPv7v6oLR0FCsc599//xOj3xquT8DOel6tV3ZmKi2xkWmziuMcBymNEMJURRKa0mWjXwaYtah7GagEIlI6onGfOyHBpdtX5Qr3q9k74XBtLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYOxJ9/j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYOxJ9/j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD2FC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719037342;
	bh=JtvCsTAVZ3/PO/449VIAnryovlNBaMjaFVnH5sZlPE8=;
	h=To:Subject:From:Date:From;
	b=cYOxJ9/ji76jJ43RphEjDXdLV5Gupni1kbYh0DZ0pwxmSu1acFpfkmp9cx0BG4mG6
	 iEp21E0fUHmZZokMELTG8PS4/+EzlaUz0qpgHYXdazjzDfr03l9HFoYbALfT/i/mfk
	 VGsNxBpjr6jamOG0cNYnyjxB1Un+uzi0bDGQ+ClvNShCt6yi0Aq0S0dAF9Ngn8K7lq
	 aOlKuCeumIyh4/V16IlCbXb7/3ib/XbBd0Ef+Hiykug+xGY/OuZsOPTsAvqDTdzT6W
	 oRbwpPVhrWH9YPOrRgeKz8z/+1slas7ifDZvdlRINO3R26JwT3OTn1f3ifsXPbAJAY
	 4GnGoQDYMO6tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1631C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903734277.23218.9497968983100683054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 611484ebfd29e98c19287de5fdc3063f3460beabd3a9bdee6012d7145c5024af
Date: Sat, 22 Jun 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719037342
