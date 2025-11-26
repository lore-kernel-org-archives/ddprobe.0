Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ED61F03D9
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764136374; cv=none; b=fTHDEnguTZD2bO5wYRGS5vboIhK3u8UM0HC8Us1+A5C4JwttcwTFFj7yOVn2TG1IdZlq2bBUJ0tN+z26LwAON2TllmRx0HKTgI3sSviH73co3T+/3VeFI11DUlYUq+u9vJWOKUEipRSBYEPFu7f23R+blQZWVjNfhPOzspcIW24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764136374; c=relaxed/simple;
	bh=v0A38DIVt/Bs0sPCxlDRfR0FXNer5Slxq1h6Sa1tf3U=;
	h=To:Subject:From:Message-Id:Date; b=pa/WHr8dlc1WAPdijYDIeG1p9mD9Mqfl6ayPo9DkoeCgl8LgMv37n23yus8TFpF+JrC2/PgwY62YIPFT7PbNAZyQknu/CFwnOgfkJ5nI2noH93QRV9y7XKeQl9I+O/z/pIAt/U9rXwzgnX/aFhtGPnoaqfAu7sGcCNcrvjH7cFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Szb7eLgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Szb7eLgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F4DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764136373;
	bh=v0A38DIVt/Bs0sPCxlDRfR0FXNer5Slxq1h6Sa1tf3U=;
	h=To:Subject:From:Date:From;
	b=Szb7eLgBViQmxcK7PnFIVFCfuEj566DOgT7souh+imYwaV/1h3EQjOCH5GjG9FRDM
	 0BEPjmx8y9+dBmYhA6LeYWPpk0PaIthlr4QRbGu46y7PX6wTpZmyFg1xmSK7oAOagN
	 8FK1DP5HgftJ50QSUok7uinf5zqy2M/q9NOpNpo9eNXNL64BSG9B6mBUUTynsvHa9G
	 iSDxnhh0+c06Yn+Im6zMN9xJbPeRm9f4gVKlnuVQR1Alzl6ZtqageumjrIzMg3EZHy
	 /29Gj3PbGnJfeDmo5KxWnQ/zzQHKf59jnISeYnOEKkiNZojTR6jx6kD41bNWlpemgJ
	 xkp24Z+83NusQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A4AD0EE29
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176413637359.25630.5168310236132650843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89df1c4255eeac5b137925707685ff97ab365dfdee451df8efaaf89f15699524
Date: Wed, 26 Nov 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764136373
