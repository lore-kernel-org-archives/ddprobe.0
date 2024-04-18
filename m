Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78DE353E11
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713411563; cv=none; b=XXB0rg4dq3w5vtHxSfluTIXtXK2JskBrVwGZremAKdphYC3V4A6hsNWBxvk49hKxrjC/Jra/kY2zfIDAQHOk6LDcU40lOdqaMhQwwA2QYv0Jf6xI+UwVVuYhA8fleyWGYJnVAeivsX4Xc8ct/nMjmFqfjucmuF+C65Hbe7pUfpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713411563; c=relaxed/simple;
	bh=U+Q8C26u0IUCGQEN00iuSLmZOIkxnbdRyWl0ObJjpsY=;
	h=To:Subject:From:Message-Id:Date; b=ilO75BNZEHKXXd7mWXzFpjCDhnvifp6/ni8LKTOxFEFeS0HgsrdryUKEIcN7XuTKbRfrzOR1N0/v/izcrOsYxFynilrVfAOyaxCiSuKLrQNWycfapXP43tVMnE4jzfJTi0znOPY0q/1IJ2UmAo3JhXAU+/U/Hyf3riFGdRhH71c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFerBpNF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFerBpNF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEBB0C113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713411562;
	bh=U+Q8C26u0IUCGQEN00iuSLmZOIkxnbdRyWl0ObJjpsY=;
	h=To:Subject:From:Date:From;
	b=fFerBpNFxVMCz2CHTk9MRfp+RqRzINOFDwjcOddgWfwfhopiluxUGUDl/L0OVmzXJ
	 mZPkoqMmg54Mcu8zBeiQZ8TQNIu3SZggcyxFjxcHntm2YUj7p2KpJplhrjoJ03nFQG
	 BzhhXz9Zd0IGtmmFLR62WajKx96NHadVntOcEx9fxuzKhFiyczIvf5PerLcd6+zptF
	 5PwvCS0qUHW8hg/qTPbeVX+skss81a1w6wDMdu7/oA5xiN9UfKCZD8021fr62NxO29
	 wzWnfOBnc7Ovt4QxVPQAsmfvzPo8yn9O+mUAlxcfUmNeZLAk9ODPY/6UZiVnIq9+GF
	 r9Em+MxR/EDew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24C4C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 03:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171341156277.23969.1072403629151234482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b4af6a63f9394c3aa45f7efc2f195ec639d0231716e7d2406e7407bed0cb0c
Date: Thu, 18 Apr 2024 03:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713411562
