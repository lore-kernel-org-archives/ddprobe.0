Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15EC420C490
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761634794; cv=none; b=qx6B8HQlw6Bg1DLd4SH16tyWnGr8Xh/2ZidktrjpXXGSJsw5CUQKIfAHztj2++oJkRcvC4yKx+0Z3GVjVwMWvOrMNtyoCZukFXXJe/lyNiortMtRWVq2slsEqxsJzgcmhwbiNpyBAjKgGZHVGHwT1QWhPIFyPUkIcdQSGfEgjIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761634794; c=relaxed/simple;
	bh=RU6Kvjbe02e5VSTwn0Fo1kUSoY4uhc6vn66IhURe7OM=;
	h=To:Subject:From:Message-Id:Date; b=ZjOZePuxG3Tt5Y6AuvgCsgLFGRw/gQpwwB8RsAhESyowT4BCo131yWtd8+zcj04b8S2Y+nWkJP0QjzgBHTWTJCjuTsZymWNFCMLx8Kf7yDgH4YC85cKPSyCfA1nNxzTKOSrN2jjSnHL/PX09u+bwMAPwgbjtWs7NCBpX865TATo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7PenjSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7PenjSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF8C113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761634793;
	bh=RU6Kvjbe02e5VSTwn0Fo1kUSoY4uhc6vn66IhURe7OM=;
	h=To:Subject:From:Date:From;
	b=Y7PenjSDipDSmAkBt0bnycctkRwnC+lwQgZtvIk34LobRrONthGCpucLyYi959h7y
	 ZQpp5Gz2XoQcQ+BxUHw958EAJ7pnHA0Kb6P+OkWzjmcSB3M2RbD+9NPIm2/bONhr/7
	 pnOpzfH/liLtUWEDGONCgE3cIIiresmwLIbh1tymTXle5loBjdRMO1IyfzoSSVUnQo
	 s2toBDP0P1K04yV9DJDW7/svaZmjbeuc2A+mHHNMIkQMzbeTB2IebObmyqBWj9ruVP
	 h/rF0c/HHwqKBJpG7gFDyCVgOQ9yGwHsiFSZzWPT74/1DvkD9ZS8RY73nZ9IJGCsDX
	 v+C/yTGIauRBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90540CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176163479358.14392.8814871707795794270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca162dbb418ae3a4c21d08c1ffcd8f84b230fe69bf25d817c267af257aeba82
Date: Tue, 28 Oct 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761634793
