Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AD53DB629
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780400074; cv=none; b=OiHuDpH/DiAHjxSw5ysyOAvrREW2y7Vv92PNYefbYjL//w7wzUv2LLizTrNLzqXSwsPfDajA0eQtQ5VhrwcXlriPXmRY3ssYJge9yDQZfb130VTvMsUm653sK0qWoDZrdJmRsMD/7iOazTPmpeS/SpjGQQnM4Lofp1kGSGOvpT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780400074; c=relaxed/simple;
	bh=B+3Nh1u+O8w684mwmPvpxJVHd8XvBNuNvevxnbldWMk=;
	h=To:Subject:From:Message-Id:Date; b=Jj9Yx4dGlg4/YOubb6uDNOhJsgabzfo4sjBC6QMY0NhxmvL8OGgpyzBd842uG384e/F99SKa8Wb/Kup0mcxrifSuAHO1RHuaWYl+AktXgXo91dDKa0IAwk1XbcfOwlsiR63C4lEioi6Ats06k54uS6DN5ntAfW1isk8Qi23keCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeCyCcnv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeCyCcnv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E4BC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780400073;
	bh=B+3Nh1u+O8w684mwmPvpxJVHd8XvBNuNvevxnbldWMk=;
	h=To:Subject:From:Date:From;
	b=HeCyCcnv+PuK4RQTPN8LYI2+CTsIEt2ateQ/iSx1osCX/qQ0EybsBZwj+OD3HLIz9
	 FxQ36It9OsH5nEEbrgCmZvtkVQBnEEzF1gUdk52nTEzfEt92XNshEnQ3I6K0/tPlay
	 AFV8NO2oE/YPNnKcRTNAUWpkuj2PlXIXriBox5g3M7HptJ30m2FLZHrF+GNO4LHU9J
	 lcGOqtvlUmtuZ0kwQt+PelnyxgW6xR+ij8f4Pvm5Y8Oph/uQN5imzpOMDJ4JdRGsth
	 f72dSzVbLyio9wrP8SrEJGjCnnH5LH3oINI5nkA25fG24LbnO2u83Hm8koKIc3B2sp
	 cBDVuWZhg0RVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97C1CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040007368.17936.794767422956444492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be734cc2730dfd3e1dbe5f8f0d75b856d87919f285d41f1e943f8e355a110a1d
Date: Tue, 02 Jun 2026 11:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780400073
