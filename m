Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1670B293C63
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751018394; cv=none; b=ZfJFwupZEyy5vsnR6VN7C4eDg1W41CjYVrU5efHe8YjrXcS+HUFlgYzJm5a4R/xstTi4W9g9lFUuIzry7DoDHeEyy6dQTwJ4cokqXnH9QVXjAlZipwbjtH9iGH77emf9FUWItDdI+ffo9WRoO/BuHO7H49pckvOYytRcWeu//ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751018394; c=relaxed/simple;
	bh=PN0qPOYbdxaRmliM4/8zzzJZ/lnWi5YPsW7zn2jB9LM=;
	h=To:Subject:From:Message-Id:Date; b=Mynhrf2/YjoZ1W7WgTbhSZmD+S5sbfnqlgNMMjXHfvTO+SLIzde77QuAN/PMwgo6xYeWqu85z1rLqeHAwfQWtduhtrZ4tKF8pZw0bZmWs/+NTmSUym+H8k0lUDU414/wvZTgVXbjSW4Kse1I7MqO2xlUfEp/t9rvJvlg5OoMvzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N42+0Wx1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N42+0Wx1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A294BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751018393;
	bh=PN0qPOYbdxaRmliM4/8zzzJZ/lnWi5YPsW7zn2jB9LM=;
	h=To:Subject:From:Date:From;
	b=N42+0Wx1BnB3k0G5PNZuvxQQw8nbOmWybyp2vMGpUlzSIVjED1fOnugDXNROvVV7W
	 +qrk4jsHLY4VFj9mM6YflODxaIbyRdTqP9fzerGTfSgsH9ftBawiFn61RwwgtXnb17
	 AWyG9Kj+MmBf/SSkeCHiRXtX34k/+2T6Mdl+jl6hSgDdz1DJICO/ZXyOiE5WZVxbxS
	 JYmbC4qEhoyJKDtpg3LBVVHQbS966HtwBG4SM2+Ug849PaX/RgBrRDYisiDZjb1bzs
	 SYnnY+nyd3Vk2c0YuwfzUEHMdRHjF9wwFpxOTgmbqxpWRWo2IskE85AuwrKvLcx/yb
	 k1VNob5WfkHRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B01C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101839358.762.5442624651048482847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63533f827aa088d6562f9e3a9d5e4ca166a48a5c9130dcdc2cc5a1e4f2b860c
Date: Fri, 27 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751018393
