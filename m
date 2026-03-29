Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A9A1EB5C2
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774824894; cv=none; b=hobxxR81Zr4oKOOZfBJ5s+9HJaJFTYyV/EcMPJK9pjJVaua2vlgSb2QgBRh7WUmcVRi/lzRONys44bQ8fZZLwCRM/9T1YksVAPKkRdlv0f++u+qVqUq9EUc7f8MpWDz6QHQRzomIjKoMsoncYM/yu4bo0GbN0nWheNxQ60HWRgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774824894; c=relaxed/simple;
	bh=MakhAZYUCPbrnoLvj9wRVxPQF0VqZ4AKcQBeHe7XixI=;
	h=To:Subject:From:Message-Id:Date; b=TbnoabRcRVthCTkmEX1+G0FZ6hhwAHMUpZ3Ui1O2Ny4k6ZLy0PgyXFMNljS+A+YeDKj5e5YZBMToSa/AdtTLUa46pjLFbVS+pJlj+fhBmC7SOlpas+1wZvCZr6o+89w+tyPYtrsr7RbwU72HUSyL/lgK2nS52GotnNHx4mfeDUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CByBoj3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CByBoj3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D36C116C6
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774824893;
	bh=MakhAZYUCPbrnoLvj9wRVxPQF0VqZ4AKcQBeHe7XixI=;
	h=To:Subject:From:Date:From;
	b=CByBoj3pyhIRymzDLBqspGUXvoYXCDJralyGDKzixj//N0IHUOBoKT3fASfWos5bF
	 5Uli3UPjasldCs0KOn+mziYMl/fVVTt+Jy4QhBkPcMwMrpqjwyklYXr/bMgoDcqXNJ
	 DRw6M6XQkOi1fetLYxTUaWIh6iPwPk96SwWsNJst8tefZHrbHTfTIMtbz2deTfhay8
	 yGfuU6yDlY7GPEakt7HzT/pvxeJPZ8Lt1arksFPxK5NaoVuvfKQihzTtAbTzBBT+jF
	 151XbUdOUSGCLpTPdjcMMZ7KR8c/fq5u5KE5J7MtzVfXYMEiJ8orze+fIvW37/7VPi
	 m2+vEmulqBMyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96003FF4923
	for <ddprobe@lists.linux.dev>; Sun, 29 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177482489358.29560.11740827608516134703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204de6aa4d49e9cb28f40569f3f4543e0c41a9253cbb2c5d3f6c6a61f952fd36
Date: Sun, 29 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774824893
