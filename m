Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C108C301704
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762170593; cv=none; b=CTT+NHX3wSHTC/99a0WpZX/qpzvgoqxZm+HwrstlVwmUIUjkide0SFnSO88GWCC4gDujekSrPVXEM92Wwy/ChNeQ6O2jjkAPmiCDSr+KKNH9bXYA5+djvM5XAf1p2UJCxmP887IrCSSH/B4nV91ngUP/w5PbpE69FC7qcWK70U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762170593; c=relaxed/simple;
	bh=esmEw6VT2f0w954LnjcFKte/Ny6VL/AuFoFZNME1QFg=;
	h=To:Subject:From:Message-Id:Date; b=EbExLUqlgku6q1cdzLYMGqrj/ACAoeqp4j4JW2x8GMalRngse1s3ywXDNzJxxu1ah4OHB0jFXssya+vFt4blRD1dfJCvHVrGtjaAZOHoGgBzlqQT2V45T9CUIzwWRkwvvizYpsWisBnuVk5qd5i1QvRy/wnDOVoTXmTj8HqAG/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPhcOeme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPhcOeme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A032CC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762170593;
	bh=esmEw6VT2f0w954LnjcFKte/Ny6VL/AuFoFZNME1QFg=;
	h=To:Subject:From:Date:From;
	b=EPhcOemeyKZwVXZd1+aWhXL8FK3cwtWAS1jS3vbbiSsE47YY7SB5x4aIlq8GQN2zf
	 dpq3hROvwX3XN/z+b6fnG4XHf1lU5gxnxRkitRTCEudXkr42BQRoAzNay30ahtyzjW
	 0sS4Wr9eLvUc1oItYBBgWo+thJ2czQY0OBeJIB5TEP2yn5NeT+lJUuVPK+RFh5WXi3
	 gF0WZcP33aacPqcCoJQGX8tj2EHVD/i3TNkgogoiQJc+tq8R6JQLwS3qcGi+KgwzEO
	 RyzsxODSTXpk4e//a4DEhIp7sWOIMfm4zcpP8IAXQHIkPyK3MAQsXJk72EnVl32X5c
	 AEQ3UdrihepBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94637CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217059357.26695.6993628257073675279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7c283fd0b97b53dfd0e392af24579465df56108b87bfd238ec832c8a48041ef
Date: Mon, 03 Nov 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762170593
