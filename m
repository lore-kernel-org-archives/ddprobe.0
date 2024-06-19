Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A66211CA1
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718810963; cv=none; b=uvcr12ZAuIksjY29nDDjMmeoAIc9mWdCsILUcXwAVWZzpJ75WE5ele+UHd7agV/GpNXLLLSX40pY4iNaDnnGqjQzjCKqejFUpdpNJ0sxaoavsvSC/u4XNcwH+bYVtw7hqR3rInBKXgX/DXm+zDQovGL3jDveFAVdxdFxa40+yco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718810963; c=relaxed/simple;
	bh=chlxUMLZamXne0G0m/v96fUGpIIGPnKYhiPsahy6fVA=;
	h=To:Subject:From:Message-Id:Date; b=oZtLzAYZv664TSeQ452vMG2VX+ZI0ASmjoioCTUX7pK6ImIfDmzHqfveOtBI/5hIn6AOgGSY15/f0JkyHI+O3eV6NX2a8q1N3lHG6+cxwKLCOoYognOd5ryW7DLQ1VbeexxqUFPaltKwwCj3rNIiCTm7bAU5Hr18vZRtgl7VyCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYD7mIsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYD7mIsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D9AC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718810962;
	bh=chlxUMLZamXne0G0m/v96fUGpIIGPnKYhiPsahy6fVA=;
	h=To:Subject:From:Date:From;
	b=mYD7mIsyRekVf8wxW5iIrDnb8J35EMwAWfvWT3X30KPse00QIp9VVDTJyJhYciEg1
	 z/wVKoUpH+5hYuz3hu+3Xjgj5m4EKFjFL5OoZw20uHFzkSpe6TDTNiR3vSCzUUxvr/
	 T2niCZVJ23hadk0FA/9ylF1ZaAFKhCaWrDW3jQZRXVZE3pEyU62tdzROdje23Wni0W
	 j6f1WDw471GYv118kOwYsXmhWiNYmWHIuOCeDoPKtBLe+9jalwNcF/XhBaUa9BCggh
	 TuNydFIOUldFQwN7JdYYaEkakh78pmIRmQ4JN8I5sHWWR5YhnBnP7/XkjxqMrrfxBp
	 ocoKJFPNIibvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0111C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 15:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881096277.30799.10190138024122731610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08d68280c82063e652060f6fcfc79adba973edafd3385ed5be6b66e84410c6c0
Date: Wed, 19 Jun 2024 15:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718810962
