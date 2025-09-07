Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472CA5223
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757206195; cv=none; b=aMKPivq8lG/8BvsFtvwOQpDbDUHID8FAe0GHQF4qqiF/1m4BtYG9TQrtv97o2CYkelVo4yRu9eMgFjOBeZOv+mtD45FPl5yyZcm+HEV/S7xi2F0I0Dof5MTnVHMcAZreFQpS0HiFLt6W1IKUIudibuHVfOdWE4YG1t7q9OGKoJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757206195; c=relaxed/simple;
	bh=HZnaSg5je60aBfxThwAQkqA5q0lOWhuDEVaG/lYBSdE=;
	h=To:Subject:From:Message-Id:Date; b=bUtCQlLG5jTzOEhgUrZnveEBmRFDl+IMvHhn0EF7H5WyK7LKi/Uy6Ft/m5uVndLG+aLGzuEkACX1+huZ1mmD/MPy2oy0skr0zNNtqiqP5oBKNhCQPwdAzlUQhud7f2OJPl1X/5AlV/FRyDH0mQaYZPru1AKkljAZu1toRqNoHcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gLqwmmfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gLqwmmfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6163C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757206193;
	bh=HZnaSg5je60aBfxThwAQkqA5q0lOWhuDEVaG/lYBSdE=;
	h=To:Subject:From:Date:From;
	b=gLqwmmfvQ2D5aibIOnJSexLHsY7l/zInr+lzDTwgapIrgtNwP+DYm5zwmnkrRHFti
	 JkgbRp8JKtO8gDeX5SwcfMBho9mLQV7wKkn15tCZdL3uvigKqfaNsTlSpbgCQoAyNz
	 2VVL46/A4S0Bn/0jya5Bb2vB9V7Z+nVwyDtj8XXr9rjsX+s7pLRrw8NGCS1A1OX4oa
	 8D55nyvpUEd/jJuoNzeOWIJ78mJPL0mWL9bAs0IkWqjje07sCPFQ+7slXat2OY/9e/
	 xZ+0CD3uUrU/l6zRhXKNex2y3lZ2qeDaNyMky/+aD2+4xLXAJQJZ6kvu7pNjmATlh0
	 55Yf9zB8+1/jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94300CA1002
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720619357.17890.9220682541466139200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d22e909941677da11237cb02254eda539bb7b21c2a1a258fbbfe0944c44f1ea
Date: Sun, 07 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757206193
