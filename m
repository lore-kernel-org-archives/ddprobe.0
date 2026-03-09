Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D278637D13F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052493; cv=none; b=kTR8hW0MvGYcKrjK8ZhwU+c9TRuFPz2P72ZvdKoq/Dl1tpr4E5yv0f7pL2OC8Y/ET6SgvdjCDW45laJCs9z31JHhAH+2jB7PRvzUViCkA8710xCguRuJHnAasnzzWGMvtJhW/qywK1ia5FxoPXvmPQ4Eiaom4G3xvuz9F/cHfZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052493; c=relaxed/simple;
	bh=qdPOE42cX4aS92p4o3VYVD14jZ8WEzcB10Yi6FduOfI=;
	h=To:Subject:From:Message-Id:Date; b=DIaVsBCXCcoLTFKZlUHa+EUPgCZjTVFoZBHKnHAn5QNf96zCXJiMm7V5J8Nik2uifR1xt1xMM67m7JmOpiHkYIZqUH0ZI8czIMkYk7rexmfwGa/c2/CLiExEf3nawXe/tJMc5c0n26UyjmPfytN3GGZvtrmtHFnj3wa81VJBK6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfOgwhtP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfOgwhtP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F92DC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773052493;
	bh=qdPOE42cX4aS92p4o3VYVD14jZ8WEzcB10Yi6FduOfI=;
	h=To:Subject:From:Date:From;
	b=sfOgwhtP5rA8thdEHC19l2Gn2XCroXoZNSlePLUrMJkeepPa+ZoHSkMAkOqYJBJEl
	 STyKI/prF03pJTa9xU2bSzHyCewFYAOkgxxITSZn6EDzL5Ff0OSY0KgIKH64WXG7NI
	 k0DayIOlyRnOHhQ4UUWbsYUJODDjDW6sdQtI2j8EKbFlbpMnhATpAV3ry7AyvnMUgh
	 xn3jzJa5rvvA/I0d5T3H9gtXy510piJmEpx9zYOOzlD2nNStgVM5Ye6s6mjh287JBA
	 aUFGcNMBrgO+dSrKa5UPMFckcf+co5ehXo6VMnTXLrzV+pmZoHZnLwHHCnzGeRaoSR
	 gHNX0jphGw8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B36EFCD93
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177305249358.1490.313677773047879670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4966aa55adb80efaac5f422ead3c789e37a10830ad0e97fa02ba915981fc9d4e
Date: Mon, 09 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773052493
