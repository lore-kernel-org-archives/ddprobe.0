Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84E132572A
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761941393; cv=none; b=nL43IfJ34P1p3MojAx9K1CDJd8+3uQP1zZugg1uMt8st653ttsb4PYoozM5PzUxc76+utABJHTxC22RTLsCkc9f49IZ90psX4HFEP2qme/zLIGqmMNKCBf/gOnNCQvOSewnpGCTC5JG1+yuo82k3uTKT9MR+VeByhhs8cW24Yzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761941393; c=relaxed/simple;
	bh=KhXbUU7/Htv1TwHVu5hvxC5Uymp+F2j28FV4tDZwr+w=;
	h=To:Subject:From:Message-Id:Date; b=k2atKmxqWJOsPilxX00Abch8g85w8za4D16xREddCU5w6cCc2rmGu8+BJh+ylQExDaNfS1LkKBnPkGnUCs4LyJl4/aGjSuimC3kgHh8radLUomiUJ9acy+j8fqo5dJvDxR+kzByDLbrl6lw0u1lthpVQa2SLu4TdyGSqq/5u/Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kKJTGS2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kKJTGS2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB16BC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761941393;
	bh=KhXbUU7/Htv1TwHVu5hvxC5Uymp+F2j28FV4tDZwr+w=;
	h=To:Subject:From:Date:From;
	b=kKJTGS2phRsBZPcA28DLMiYIYntN+oLinU4E08wMXfTWzUOUN+AKIoAD0njPpk8Lz
	 GGj32Ub1OqfOWIl459LatTHDfW6kRk+nNYRf3ohh5AFm9enh3F2yN9uyHbw6ccBm0K
	 BKcKcj7d6hpqfPIbHaUqforAdefW6xv1wnuoHhiZ32Dnd3qjY7B532t7nQ+8x8GCSE
	 RWaX+/gJyJs2Olghk88Ezdsowr1V4mMIvYV/yVDpaC/Gnp+stkKU3GpZGuZl5ura/t
	 j7Z6sJOFoQunDgnMY/DMigAG63PLCmmWxS+r7cHBBdPnFTmJUQqpobYP/4PC3AXXCo
	 uqfoE0lcAMqNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907D1CCF9F8
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176194139358.30165.16433090413269014245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69f6fd7b962839b6424b979aade42b82e7caa4da231b60474b9a68cb144c9e25
Date: Fri, 31 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761941393
