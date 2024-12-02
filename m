Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8741D545
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733151954; cv=none; b=QwiQva4ay6QxxGbqImyH2PCipoQdPqj9LZ/xjXr0XTRISQj7LCuBjP9z3bkfhtIt7z+MlkF40ywQOZYsOBkmRcocTwwYHAihz7xP/ud1VNhYOeUBnnE6SIa1f3zIh+Po888gzt5tIeDuULXxSEB0Q21hbvsVaH47Kn9NQ6J3mQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733151954; c=relaxed/simple;
	bh=JW85qpEMy1fzu+cWeKLcdbHRkey4rl1i0KnrYmsh+D0=;
	h=To:Subject:From:Message-Id:Date; b=BKk45du9T/oni07LSTRAkfpkLpi361XnSH8qm3eobIwehNEnxh1kp7/XX7fEJUKbqtC9SIwAswPMPrCH5nV4cGA61Ldj2Bt88R8JCODC5i5QqmbJqisM4kTzN1+96MpALpVxhK04u7HgwsU8dD8Ovm3PfPR2JQ0MATqfD4YrJ/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jn9uzrrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jn9uzrrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C21C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733151953;
	bh=JW85qpEMy1fzu+cWeKLcdbHRkey4rl1i0KnrYmsh+D0=;
	h=To:Subject:From:Date:From;
	b=Jn9uzrrO/SkiWuYnpi7IWcFaVXmBr9E56rTD1JB0NATKtiL7LourppkEKnniqR5aP
	 uoHbG2wIxS7UR7j8IWkSHfCKlI/iZu/390EBs5IJp4aokGu0+hmZbpFU0Xiw7djLK5
	 YaBwpM8hgMo16Ddmxe0VsczyddFf51hexZmXVd7iqFcFN7siQ+GXDWt+mOGoQKzRYx
	 goxe9VnDbLBRQbjwyBo+HuDRBybo069InJogj62TMp07Ep3235iQ1BAUsNBgAo5J/3
	 k/ui0EZezPcqYxDNdsz3RQIUgbzoo3kByMSAjTeMC0ALFzAME1cH/jku+RjDmTqt3M
	 DDbJOm912mh+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0158D78321
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173315195364.31188.16432848910486805445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094e63b66aeec1cb46f65ef99146329f1debf3ed8924d3893db19fc490448723
Date: Mon, 02 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733151953
