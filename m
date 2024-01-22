Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8F85D282
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705906697; cv=none; b=P8gidcSBV1urLv/yIk6bjQVglj2/nlMjvrR7h1PL6uXqxL0HcmRY97NE+rkHI/oVGZ+berSOfWbVq/TeM2hje7EvrUR1pF5kAT4X7avHSOyHOQI+Ib02Aw8bpQmZUDijSKVzQAmrOEZ3nJBYSSSKZao8X8tqdzxZCHVZ5jplocE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705906697; c=relaxed/simple;
	bh=LxEU6kV9RqAM44O4PsskzZBx8Vp5HrfHbgREv/5wztk=;
	h=To:Subject:From:Message-Id:Date; b=JatRcEth9i7Qlo7TGU7O+Diczs2V3579hrMHP3ux0ij+YMt8eTLc4/xLlu+2SmYtKCX9/lSZocDVktOoXUWnu1Xkl5lOG69uHlmp5AR9HBd2Y+Z7rwgwS32LGdUvNB5VRPPndNSoIdUQYjcyPQY6/tcO9u8pIE0VATID3iIimc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuaXbCri; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuaXbCri"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D5BDC43394
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705906696;
	bh=LxEU6kV9RqAM44O4PsskzZBx8Vp5HrfHbgREv/5wztk=;
	h=To:Subject:From:Date:From;
	b=kuaXbCri0zECns9KA6cM1kuKHz6J0ioi+8gcM565sP+i5+6VwZRzWcYjEYs5HzDUA
	 6KgM9j1HavcI3dhYNq3qiI4dDXMDkC7YMpn/PHFNIqBTGO0orFk27ETaNQlR1qKR3k
	 kf3MgKufZG6mh4PEe9ObjUUesShjuS/AyXhbHNwXCoJ6lBPQXcaE4PcU07Jz3fXLvL
	 HorxW1LF9WF8n2mTKgEEK4OD7Kl3gQnjXlXmrh3nzdEKzFCLDWwfER3AbQC8HMrhnC
	 cAieaKMu5dKGrcMmdiCLYup4GoncJTSzREUmyamtCmUcAHT9WGkvU7kCRc0e786sAw
	 Y1VzQlXHVzhLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 625AFC47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170590669639.4550.16719629556714502202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 255e5d605acdedcf11794ac67f4f91156fb1cd824fc453b50cf02e3cdea35b26
Date: Mon, 22 Jan 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705906696
