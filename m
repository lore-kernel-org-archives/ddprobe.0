Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347AA19E977
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725287154; cv=none; b=MeDgiyq+2tVym5u78YDlpgDyZFxu5RbQmhP5UaoucRyUYpEFrj0zYHppw/1us/xlD3aebUMGjk5Pd2c4hsLFSjCMJ94Dz9sFi8R79H3Y858MH/Leen7ZhHKLrtI5ImsDw6KPuIlykkECJxE3H2NeEEiZu0RN9Fzhcbr9e5WxIdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725287154; c=relaxed/simple;
	bh=JFPdkTr9vsz74lI29JJr3Gbn0XW9VMD9l0o5yKFOFQc=;
	h=To:Subject:From:Message-Id:Date; b=WovRDwHYEhpdkej67TQwrpZOnULSJrRMMXSH4r8PpOgpI3TwyQuLXRqPh5HJz+SjELG/KDVhPdspJga9jC58XwYcx1YzJpVMv28WDBHNtd9jB9RZOdrObL/knvDhDLAlj8ytqLYTm9eMKtuRa3EseF6PYrNaYqSKxVwC00Xx1pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D00Phoa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D00Phoa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A2C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725287153;
	bh=JFPdkTr9vsz74lI29JJr3Gbn0XW9VMD9l0o5yKFOFQc=;
	h=To:Subject:From:Date:From;
	b=D00Phoa0GMaMBYyEIOt3AEb3VO6soX7v6lWacldZIJWs0s4o0TGt7E3CUj89poj5L
	 vL5jtWlM/PtDN9xrKue7HxbJFmIS8VUgb8bKbNtbE0Ft1gy9JMPFJ2ELVynmTanldV
	 bNo86Dd9LNWlHwxhyqd4eH4CX+urQPHvnpgrBew1TeS/AweyvO81IQIgM77LtZGB5N
	 4VDm7jzEM19QZbEQb36u2o/nHVk5YfZAlZJ64DvN0d96nTiqwFXU8Bep9/OuUVpLfi
	 28FWWmsW16J5Ua26FXo9JN6Efa5HJ0bm99+EkpEg02U6gaQbYdyYMr6RP5Mu+2WyIN
	 /NfIDC28l+RPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C20CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172528715359.1240.10879870106306437260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 792b1fcaa1ddacfc73d022ff179f3c3beaa226c9dd5bc4aa30930b5080841e98
Date: Mon, 02 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725287153
