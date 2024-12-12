Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5EE189B9C
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734042954; cv=none; b=JRPHE3vL8YYRpeEfKeOzVDo+KUCAqKoMYtcfPLYvfbDM1dOkoJSFRpnlql73+wQcDP3Cc5ZrCg0wbu9dv5kPkf7C4yUJbjOt1jDTnL8k9tm3soKuWOjN23nT/FTEf7SPd+aF1mXF87owbA8wm5IqoFWqnltABwsEu9lfh+ZHkAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734042954; c=relaxed/simple;
	bh=eCyBbHln7WCx6InmB/iNf+KPZsu1uoK1/SUft4Ek0jo=;
	h=To:Subject:From:Message-Id:Date; b=fGuu1iZU6ApKpEqJ51bc8g1QPRUtxBZsHCOoadqnmoOI4FzvT1etdrm8hLWUFDahqY2IgVlUKtZd/aZAjKB7L/mUtoFTBSrY+8IKYw5qIZ4HiWcnft+sJRg29d45bJpYAaseF3024O1yz+mifLUEBCz1PrrlrgdUw6igvjhbcdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRxn29XZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRxn29XZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF54C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734042953;
	bh=eCyBbHln7WCx6InmB/iNf+KPZsu1uoK1/SUft4Ek0jo=;
	h=To:Subject:From:Date:From;
	b=eRxn29XZHMCkNo8HkeFSCsifd6ClyokW7HuZdW4gxUGO2mSiN+RVXY0unKF7deYaN
	 4ntZ04qoPLHbXDi/eYhfgUBdbTJgBRdvvCHLdcee+f4HTZsAVW1m/TSsZ1wwgsmT/u
	 JLpS5u8jS5ovEQ9sllmr2TNvZEaxcan69tl6sN7CzSAYHwa4mEuvc8iqIr6NalLgoT
	 RLxccqu21a6SvttwXtRJ51GI9PMGViH8bRgf1JmpUPqy3wRYS/eHYEbWt6zf+Fescl
	 PfFk+/1CKLDGlBf+daoBQC/ujiP5ga4Hr1TIc7huoHO3F418EYgSdTF+Tu3te+IwPg
	 rIQJwnSsMLHOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB37E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173404295362.9632.11475250011569263970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df59a05d6a9d62d8ea5f48b0ad8ae02de57b9b76b423eb2b94e85e38acfdc11
Date: Thu, 12 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734042953
