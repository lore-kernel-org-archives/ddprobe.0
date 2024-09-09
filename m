Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ACD200AF
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725910554; cv=none; b=ViN+9SlBspM1WSedkOiKHlbdViqGIh2uhl2nQPz65bjWGFy+kF76MNUCDIev5kRj8WHC3pElrf5Q38VM89BjNQ1ENFRQCtv37YnJQDsxBdh/f7KP3MsTMJKxJMWfYpqrMV+NkH7Ixj+eeGgZ6Tw58z1MMkzs/YUMIUvrhWuvyfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725910554; c=relaxed/simple;
	bh=KoNk33Vl2nLm7cxaeqi2e7AqM7UtZ54GFJQ4VAJBZ00=;
	h=To:Subject:From:Message-Id:Date; b=haOrtRp+vterPsXByruGalx6QupVkS74ux9d/2fmOLhAMMPV7A31fXWQxEFBfwfqxeqjmg7T0LmIBqk4mYHVEa+wvF+vsfmqKw3LA+k5tKs6ZzIp00Zi219W8v3EMG6yaaw5pytL2Y5XaSoVty6ohtV9UySQ7qNOfcPoaTgJLkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy6VjJIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy6VjJIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2433C4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725910553;
	bh=KoNk33Vl2nLm7cxaeqi2e7AqM7UtZ54GFJQ4VAJBZ00=;
	h=To:Subject:From:Date:From;
	b=Hy6VjJIlZiqqImb/aOk43oPwoAqXh5SigHgqBlIMOTP2oXPv4DkXTR35NfSE5jKdm
	 OvAlUv/c/QBcAczRZKM+vzwEBhxCwhgtpMo2HRmnChN295QNZNJ4Pc2gBzZiPfL4lp
	 Mh+zuPJG7si1rTDg6beXehR50LO1MI4vSfNMFQtG84amrxhVkO4tO8NHmXvYqtmAUP
	 8ReeqYKOMVQIfUFM61mPEgXgiHZZ7sFufb0yOrp6bL5Iox/Td/TSvnM1u6+e8qNvH9
	 pproMogeLKplb8FKJrkFYtgy8im+OmpZq7hHdihHO/aY4QjBN9oxQgHJ72DlsQTJxS
	 XJEjnf3xPbwcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D49ECE589
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172591055357.10076.6789597783191913070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d279e855a79589e17cb7a2c5a85a87cf92b7a2a352ccddeea77fb363853fed
Date: Mon, 09 Sep 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725910553
