Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59F6634
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705736297; cv=none; b=TCFa0kboXieQ0Vpp1KzznM6ecf+YaJj7dAw0bUIVU7i29g6JA+CiCADT4ADhKRvktmtRSgaJSAw1OmnWdfSN5dVgzMk5hdaW+/fgTo2cXk0Nu/7vCL5a46nFeur3MXQopM4phg8GZ8TWlhK7AsaOZRi+t+MaNcgdDhQkQrI7t6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705736297; c=relaxed/simple;
	bh=6isVCoZTGhoCKhBHJw/fwc4Q+NVbySF+PJXk6wUqmKg=;
	h=To:Subject:From:Message-Id:Date; b=Wrq2aYEpvy5gZ1p2c0ZYbGG+ueVbU88Ewd4P5KsjVPouMRen1b5ivddfPeU3D6EPkWt6HyLrfjxOCzC3QD6j9CtJH7Mk6hik7gAag+n880QJnRD0ej0EvttX8bIwFoFejv8fX2uuDK+ltjY4I4mtPXp/WZAzQb+hfnW4VeQvRy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMgIo8g5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMgIo8g5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D98C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705736296;
	bh=6isVCoZTGhoCKhBHJw/fwc4Q+NVbySF+PJXk6wUqmKg=;
	h=To:Subject:From:Date:From;
	b=sMgIo8g51U4gaaQqjRWbQehgFzndmwwE26mDq2hJ4pGvsD47h2cIpioeOQ0aaXyPM
	 GtdAt19+hmeYxhR662eVeqlZKQJeocwrina/j0pRE+L5lHEEaWW/1MlNiY7g5noYTg
	 0fD6PtKcVR7lP/fmVhnPi9iKMaxMwqM5rZKGJMrC+vpN1g0QWYP7dpG9VcYly37GT9
	 wYGD7LfwVqQneqksNPqaqgCaphs9HqooO9+qV6lV+j6x8KulqorTXGySg74dW8VSvL
	 Gmd77VG3WivFbndIRcTn1wfKh4K0bSunDr18Ytwu/6qoTYPRYLPL5/v0VfnEymJcvu
	 zYnz9FjwOrjYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA14C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170573629636.14144.6599707856553681975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea62c33d3c64caf783487d6e3991086d41769d11305c730e3251f4cb0a92a092
Date: Sat, 20 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705736296
