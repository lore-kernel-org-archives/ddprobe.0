Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3213579CF
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726974954; cv=none; b=c9jErHGspqt63MMnUkkVZRgUtNPsgv77BK1IGq9tBviavAu2NwCVNoSgcBeHkFVJOSxtTiwUlMX7GRrMoRXOQ1mBaTe7cxexDIfpgXR5LX/SmfXXjAHpr6AKUyw5vXISyOEX/bgWytnEQRgsHiRbePCAk93Bb//0+bc8Fb2R2Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726974954; c=relaxed/simple;
	bh=aqxcYQVwKhQwTwei0dY4fPo5BKPpYeVJgoMH1UaCCDk=;
	h=To:Subject:From:Message-Id:Date; b=RlVLMKOfbBQcgqDqgtW4bGq9BYnwa2AuFOgn4zhwV47DuMU/MH0e5qrJqC9YLn9k5+VldhE1dCo1v/EEAkXIYo+4aMVt6E75+ronX+V33ewqBuHEmORB7zGBQH+QBGaS1vQQ4WXWEcQvASaQ+4NUbF+BSAGxnwHN/RgLPVa8Ok4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JVZ20mlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JVZ20mlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84E6C4CEC7
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726974953;
	bh=aqxcYQVwKhQwTwei0dY4fPo5BKPpYeVJgoMH1UaCCDk=;
	h=To:Subject:From:Date:From;
	b=JVZ20mlAHrbIBG/I02bvMJoEyh0HCDlEpzkWd5/y7Qn8BFZ38NcC4gfcuvs/NgQ2h
	 +6qcVm0hdQUvLlco4Gpzu/J9u5RpKEK57VAInNUTsn31xFCplCTqiSdfSolWDDD0AM
	 p5V0ijAevIfCTcSxm5sy08dKWcYm6+1sKaXmPojba21dg6yODD28486h2BLV1VZ1qS
	 G1xXGNec1vQoMIl5kcmtiAkefMmS/alneDBTG770dtgLI0QIoRodoeb276M5fG7ohL
	 bSsDm14kx0CFgTgZB3hUC06sLzmKbNrhGZCQkN8C56JemuJ7CgMAx9f+KFnHrB/0bJ
	 ZoIq3v4Yo7Lrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A5FCF9C6B
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172697495359.16075.6033640243395401064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55c7a58ba1e34ecbd2f08b04f3e134a284db1fbda28269db1eac9c20603d66ed
Date: Sun, 22 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726974953
