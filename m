Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C722EB857
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755611394; cv=none; b=u2C/ppv5wql2qgIrpeTEu9QQ2ATx7VcQr4naKGdnUGinvWBE452I2KoBio4eaN5tz/b8OLeY1m+4s8TFIVEuv9gXxBYvWB3g7o5OhAWK7oIF1nAFe+auez68hXjESvo26H/R+Sd6T/vibF24ZupRcbqwFI1CxffvVxsRGy6q3cY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755611394; c=relaxed/simple;
	bh=Me4sAMLf7Z3bEPXl1YuNhZ6sa+8DwYSDp/vu+K3QpkA=;
	h=To:Subject:From:Message-Id:Date; b=J7Nv4f8y7q0z4dSIQb9twRrnrOHd9TVGBIbisLwJTvVGUsZJvb3D+gSJ1utLljXiJN8iVXieqSRoORoI952gjq2wclcPJtSA+JulN8h58eHykildyWPieGOWXWvb7tQEi+osQOnruzLzij6BSNzM78oVrQkd72fxm2w1r1OCeC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUAbUMj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUAbUMj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C29DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755611393;
	bh=Me4sAMLf7Z3bEPXl1YuNhZ6sa+8DwYSDp/vu+K3QpkA=;
	h=To:Subject:From:Date:From;
	b=uUAbUMj8JNzbinHbED5aKn36WcjfY0crIpC/5a5jN6S5kCeGmBuQaO5VAA39NtZ2j
	 koZDFCOpffvW7EpOxYcZasAWU+OcMV4q20RgexmdnD3kamHQtkT9oGn7eEnr2a1txr
	 j+PdeQbMnOZJCfKlpLFP/1ep27xMDGMVUeob7rDMCucpwtKTdL6U7Xt8Ca6uBWBh4S
	 q8DvZ7uynmlOxiv9Efhry5jTQ//IAhljf4OD3IyhKdVQfaZ55PAsfARBWSbwttN32d
	 rVLpdDUfMv8lf6Q965bz1pd9prLmGdtf8wxLD8NNyzK9nyUhBZRh1dr/OGXTL+Y/2+
	 UWGMGTXiKHhWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDDACA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561139357.16313.13623122357989202015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abc91a38c8e8adbb9b31418244c698a0c09d3f045c8f3f463e16631fbbd1ef2
Date: Tue, 19 Aug 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755611393
