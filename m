Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A6E58222
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728420954; cv=none; b=leG7pgQrbqBl+AZOTVF4yo51l32A+Aty4l/CA+Z+ikKuaQS2/FqSTFWKkz5Sd3bp78iinwqPRBmA1A2lbM8i1nEtX/W2Ou/D2/PVqgtBM0PrZ4LjvkCYnUI+rAwYSEtOMBJm37tQ8ZpqK8QqPUayB6zqREPJ+/YukYszUmrsUNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728420954; c=relaxed/simple;
	bh=xS3lYQEi0ygDFLzvJSrA8226bQONGPjPWq8SMWXIfOw=;
	h=To:Subject:From:Message-Id:Date; b=cXAyfhCQdm93YCoiLkqrGIWuMp5fFOzxchssRO0REQ6VLDlvbAz7U8B4pZoN9UqETy4XlIAcbrMARFmMcih7mveTFkQQhmKv3aOUfvxOMlAyGw/F0ajyHA5QtlsmOy+r/cO2vtPeXIBKEUQC7dLklW97IB9qrF9mEUr5Zqjxr80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFW/9rA/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFW/9rA/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E3C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728420953;
	bh=xS3lYQEi0ygDFLzvJSrA8226bQONGPjPWq8SMWXIfOw=;
	h=To:Subject:From:Date:From;
	b=sFW/9rA/Fb3ndQJnrqOULVEiPFMRizx0ckqR2Vuf4fHbH4JDPCiGPGSPVDhdb35mX
	 eSroRPyjEQLebpOnozf6eVCxWq2RPHdKap3Fei4PL1pozzx7W1bQSqqZCLxJtcpodh
	 qX8ocUYTV53Ky79nVjl6JEqsIZvowbvd4wJfDaUUWgDg16JrEVbv/IOKI/6ZCYcAB+
	 RZu4AZJf6GGLb2xolny4MNkJbgLjwlBvUomFvYM3eFSCdPNqphL+dAo7LCUokDY7hZ
	 cbMiq6AijApVOBqwmrmdmSInZleeFnScYBYZam8rcUCbNBwE35BvN3byLtoiJV5kpD
	 7k3M2ksAPKuKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958D2CF0425
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172842095360.20790.15686593974951535814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704e50351b68028fef90e4e057479ed2053e65c608d7bc6c0c3a44cc30b1c765
Date: Tue, 08 Oct 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728420953
