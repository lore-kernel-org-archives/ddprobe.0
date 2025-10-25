Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304502153D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761365394; cv=none; b=cEpEcVyapcGQM2Y55nRYGTxGbI79JgatslTF37WQkH09yFmPUj4/JxgaUs2JEyqNo9RuhKqYanPeTmMB926LtWcc38wr52NEj2z/7usUcPKUaMjaDbsSlkki1zx2U9dmh7wU1OaeKibSz7XnrWT3SPJSYyBhmMOsS9N6P04LrTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761365394; c=relaxed/simple;
	bh=CsI870eqgNzrSB9/RYB6HBQYqg1cFWpEHmjf49RMLdg=;
	h=To:Subject:From:Message-Id:Date; b=gNDstzylqs4YqcPp4R2AbUjbsne+oSjVd1WUiXYgaK+hj7BF458ob+LD68UfEAB1+8ANIs38ezUNKGZb3w2bzPUlkES+QClnR4K37JLbxNYppi19Xd357UbZWDp0Xo/tSVb170nNk6LLqt/qPBX5dphdKxiKcEFurp7kC9Z/pLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/qWgjTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/qWgjTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09EFC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761365393;
	bh=CsI870eqgNzrSB9/RYB6HBQYqg1cFWpEHmjf49RMLdg=;
	h=To:Subject:From:Date:From;
	b=V/qWgjTjxzSxkZZnXUCIDy+XbKFaNRoArExZimSQmyve6hXoI8GfKhW/2rXoL6cGX
	 lGoqaw9rF3XfxjEnUoL30DNv5BZaM1nzRTOvwz4gEt+Su6cGE5yzwqjCscf6NuFmlC
	 AN6p2FA6Oz42D4/BxDqZWQMaBGrwBcIxVQkvwyq0ieiSfwo6MOIwYKIicaChT9c0dj
	 OKDXOidxKOOvipsl7//n+nszxuA1krdb7sMG3mhzr21Iff+4378MWuXoO97ICmuBI7
	 QUEzviG911vKTUQsGDVhft9VMS/TkCq5G0q/xT0U/mgr3XmMgsGOz7pJBzr+2q6ohC
	 HM91zzx6Aep8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF8CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176136539358.15644.16882522692055420071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c22f1c37d13fc897b9364cb306cc38df752cff70a176c8fd7f5eb7e9ec0dd6
Date: Sat, 25 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761365393
