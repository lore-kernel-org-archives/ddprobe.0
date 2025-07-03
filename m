Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275C717996
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751507994; cv=none; b=sNeSeOkv4tYj1+jdpkjMsbOVqa5iEN40vvkyPzV28OTVLkt+UjDNSH6kg710S6+aCWMRIkfey3KZ82ZGF520yFmvJXgzC87U2KCmhq3xgYeAru2DsGUviVWBNrXt0/mLwGtM3H832hpSaEXWHlYCE+B50xD41D7p/g+rIznZ/F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751507994; c=relaxed/simple;
	bh=zZsMznhc3MAqcFaqbRTBYdI7c1q3Dr5fAi47wKKVjzI=;
	h=To:Subject:From:Message-Id:Date; b=N6vBlmIHNbCsQ+cHhsNy+PUvPss671YDT4aIxtpc3SMwPhc7Zu7rcBRgh7WrPXoJj+nHEObyLernOuMJM02S5Wl3EeiIQtf2gEHVtv5xHfqRwJd7AscnIvHNUpOQcOtbJwThJQ4uQe2+3D51GCel+zU79zDmXXCkZngEEohWr6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmhPzBgd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmhPzBgd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0203C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751507993;
	bh=zZsMznhc3MAqcFaqbRTBYdI7c1q3Dr5fAi47wKKVjzI=;
	h=To:Subject:From:Date:From;
	b=JmhPzBgdHw/cw5mYvDkiXAgpLJGWUrhiVi6rN9uIJ/sifS+mCtImByS2s0HeLj5Q4
	 k9r66RCUtJB3cou+isfp5k2IBZginTulMqSOenYEoJhpKC9fFTWWNNOD2gkTwt+6CI
	 lyVZvBgpP+Wwme5G0Gz3AnMQHqyi+MTQ7Rg8uVXytmnn9RVEYMYKeUdXogoTDdFvRP
	 QJH5OBVlQxoGi/h5zd8UEk+1VQsmuD9/dmQEplG/D78Y0VNPqQF0wZo8ZYHkyBg62D
	 zf2kdY6rluzOGMoo3RThwdArI1ESujflO/qrvIgYvtIDoKLYwe63OJZIQG+JVivoyv
	 qYIjZd5KljCww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9B0C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150799358.26679.17709265771543131250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4974e3b7c6a956a202b196ea450d70764fc9d2635b536d701276b06133353fd6
Date: Thu, 03 Jul 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751507993
