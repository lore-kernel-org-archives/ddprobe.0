Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5F3A31
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742515795; cv=none; b=eEjypoQeDA2VMMmBgSw2RvaufMwUIbNVSo1FMuLrwTZveEOpQEc73xPSnUxEAVPq55Z9uNJWkcPYWa3tKaSiewvQcpP77MeBbB6ytyVRTozgwATVtIb1N0147ESSCW0kkT9qgGqyAtyx8OwZB+T44R0+l4jHi7uOGWUBj6bonBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742515795; c=relaxed/simple;
	bh=yZ7YhrnPNsrtvD7T6a6sNOfFWAwP8dwfeDiX9zOPVqs=;
	h=To:Subject:From:Message-Id:Date; b=QJLVxgJKyJGF1Qo+vuSq6GivODeOMw5PbOkW2afC95U90SQNTkq4d/DCsuqRH+s17XqzR2dywA9kSTpj2MRTXnZ5Ch6A5oLjD7I0nwsHWPXJsrUFggFG4OmT2GAvbSE0SIrD2uj4ZwXCvxf2FzT1sC6+Y1MmZW1kqTPjgSHuqx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXh40D0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXh40D0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD987C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742515793;
	bh=yZ7YhrnPNsrtvD7T6a6sNOfFWAwP8dwfeDiX9zOPVqs=;
	h=To:Subject:From:Date:From;
	b=KXh40D0QntK0W0NFp4nVg6knEuMiBuMiLPeyG1r7Q7xQxVxv4h/lnHb9BYDZjo/kr
	 jI3c6sb6u8mAtLsT6xTvxTrGyweWXLM20S1ImbvG/CkOjEcxyWGjt42bGinGI3QD6u
	 saYliN55JySlWQ3I6MmltoWbu0rIXQFYYPZ2++zuBCeLvOFbMqIqplklDI5D9A1tqS
	 lMnjSA9MMbONg0iTWsb6z1Pxh+csSZSP6f72SHhij7oUO+3obu9fuMJS+AFFxcTcuT
	 bAjmuIuAENmeRmn8f5XCHlVM1sidZsW/u+J6ydORP21Dssg04H71CRLZKOIKYjStJc
	 zgbg0XelXMpfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4ABDC28B30
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174251579366.14047.12976961300715175434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d3fc43bbcc431f2885d12f7a59414d9dcbc6955f697f132bce03bc7ff463f9
Date: Fri, 21 Mar 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742515793
