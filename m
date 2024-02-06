Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E401745DE
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707196097; cv=none; b=oE6wAKINTLUfyivDG+xUX5ButtES1kp3SLJgIOuaaeI/E058gT2DweD1U/yFTO3G1hiXY50kglZywygyNTztb3JFCzicNd/Uka9MIxNh9z2vhWocbQmw82eRFi/GsdxpRAEqUE9Iumofunwah+gwDzZGywR7OSuBFh6XWzww1IY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707196097; c=relaxed/simple;
	bh=HiOi3hZB+L8dK/LfSgY9v2jW+lFJQqNNbByASCnWE70=;
	h=To:Subject:From:Message-Id:Date; b=NsJzIHYdUbc1SR3a6cy/4dAUeEU0NCDZzWbZTEU+9D5GzJANidhZjasRWh08xQTffiHvBIHoB2Oy/LP9vyhbsKI8PRUBqNq4bodzuQaoPkuJHuYaHM+3kYb1EXUlSkJn6Mg06RXQ2LY2/ieIGY3nsYmKx67XCEg6tilt1cHOjK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DguOJJEh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DguOJJEh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 795B9C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707196096;
	bh=HiOi3hZB+L8dK/LfSgY9v2jW+lFJQqNNbByASCnWE70=;
	h=To:Subject:From:Date:From;
	b=DguOJJEhuC7eGVoavM9WQgx0JREY5X4Lb3Epz8EjYLESn4+p2WSh50/JEkPrO1MUp
	 J1wZuconmuA/746RPVsau5JMUUKvqEfH2Z/TBVh7AiEXtByGsZU/4HXv1O+9DETsqq
	 ICH61F9SApqG2y7mylUSGUkQ/xJQzBtKjPAfJSQ67MJ5sZ4aRnO/cIXravbrH4ZSla
	 UMPwP6QehzBjWyYzH3VufFR+9fHG5PE/dbC0+tBoarvQ5yvxFrb5JrfonP7Im0oFtX
	 5bHO5HKpvapUvhyzAuKI6GeY+FlBNFjysb9/q//5cG5NIHMFbFbQNP9JttI278Omiz
	 HUiQPVSTUnaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D9B8C48286
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 05:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170719609637.6175.6045078120765587948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8bbbcc661f6f2535e075149728d6321d1211b9c7278315c2921f215b622d136
Date: Tue, 06 Feb 2024 05:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707196096
