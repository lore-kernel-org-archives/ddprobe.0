Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D8922B5A1
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744886394; cv=none; b=BNVgCVm41mrflesa2a/pyH44KS55coQIm+7BW2QM/CohgvxOLw23GnxaZ+Q+z5eTOyv8f8gBI9tKihU2sjxwv1kllsV/LdzBSmoNBPv+thA49CHwhzwVbE4fpWAbiQ1kwaehsxxkqJ6cuc3umEumIFFaTscvomi9II58ACcSV0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744886394; c=relaxed/simple;
	bh=YxS2m73ZD1ppRR4mH6nLCE0pALR7RH/2fYZLh+Mt8Vw=;
	h=To:Subject:From:Message-Id:Date; b=X/L802xx7mkpON/50sIxETS4jRdoRpvbT0W5ULuvweTe5n7Z17BsRxwVatv7WDoyNMcpQLi2sL9cxxy18cRTKv0K6UY4B+VVryQeIb3cqRXbCn7ISFWw+g5BWWbXmeseoJnVTwOH+xwwXyxeX4GjQ0mmYvmyod1k6RQfegTZ34E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rj2PAXfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rj2PAXfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9ABC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744886393;
	bh=YxS2m73ZD1ppRR4mH6nLCE0pALR7RH/2fYZLh+Mt8Vw=;
	h=To:Subject:From:Date:From;
	b=rj2PAXfLATp+WZ4gmj4xqhygqKQ0Yknn5QNWkIi2mjVUjr8CbwU5jFgif+VIGevoM
	 /FVjEQv1h+tMqeRqeKT+jyvxLX8gcrmXdKhNE4QeLzS3R9oqag9PXgqo1QUurAjI6M
	 sqR6+1O0x9jhus+g2t2hSdkDoShxEjZN9sM1ZFHQ3HklLFIqped3ee4z5PBN3IHTiU
	 ZQWFNs2N6fa5OKQqxonk6cgev5IP5RecMo66mtGn5LYw4Pm/Wr86KXsfzvJfDng41t
	 hYuUFpLc+kt13XFMu7w/54eILvOapATrtENppLwmMEKgb7Dtz9xsnXtCYMOhVt8XIu
	 WVlrSD7zScvVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F786C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174488639358.12881.8427367004050607356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6b544d7f6178a6c500ef8bea6f74ee2aac073dab3ae3ce288bcec31f69aa74
Date: Thu, 17 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744886393
