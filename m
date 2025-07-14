Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193D32376E0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752479994; cv=none; b=s2N9rK9CSTmhFbboLbZUKWLhDEqkr1H+EW6hGzPVArogYuMMFNgJTVu40Bejibc6fIEBTx3VQUP7siQ1Uf+4JC1IrBY3YKP7w+1IbZ1EAGkhPH6RPp1aZ7Hf2UgyHb7VvXs+/1SiFXKQAl5vB/gPFQHcHfjBQfJ5REH6EnI7eIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752479994; c=relaxed/simple;
	bh=tw6YiVdub7+KaDg4m8BhEaIleIOUsvH+FVubjZ80EY8=;
	h=To:Subject:From:Message-Id:Date; b=nI1+LYbNgKQHifjwkdfDYgePPZfntKMF3B2XrCjN+gHlLJuUWEggdcYX4KBykEg+m7o5V3JNlvpVnNRuClrAtfQqWUcclFa6UPYrWt3tc+ls1Iu93zeXHBBMXCthw/KK8GA7DEqb0V7hcc4+bQwENy1t4J2eAUCKmxa/cFRXyfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmhYnonV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmhYnonV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0617C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752479993;
	bh=tw6YiVdub7+KaDg4m8BhEaIleIOUsvH+FVubjZ80EY8=;
	h=To:Subject:From:Date:From;
	b=UmhYnonVE/iTrk5+sbsiydqO1d2uQrEQcQnJfcsEaBUCDXPMehE3vfBrFoErqo9Az
	 xRxZEgeRM9SwhCCgnxxnvdOPzt26t5wxnOx6DRo5AdoSXC2dOgALDgbyJJ5/MLi/GB
	 gVUYGXSPk0EC5LagxiJ1act/eixL1elzAmivZK3SMUd8eOVjoH+mKPYvQIbfX77wlV
	 MQXMEMFvEBa8kSYPikUEKte8aoYhsMcrZtc1Gb5hoA3JF7MGcbcsXwup2zT6VJbbH/
	 CcUdUK8XIs0O3cPgc7EjodqQUKDYrnnY63Pdiz5ZdtTZT38CeZIsZnFMtujEbNK+MI
	 kLlIQw0FRJoew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EB89C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247999362.18522.17705454228254310763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9165a81d345d72a3c5be0660a89f53f0a3bc04c8aa42890a57e341565f71edf2
Date: Mon, 14 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752479993
