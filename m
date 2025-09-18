Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06B382701DA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758170395; cv=none; b=dOxb5ksTomWL3DaCLe45BE32XyDH9fsQkvdzf1m9L9miRpD/blans4DCFrqE0UVbgLQMgg66rQW2ejyFSzM0vpyDs9Snyj4rP0jptsG7HrcY2hFpTke3W8INfilN9QSk1hHlM71hH6PVTbibNrwHMhakbSMknzDlOWPktVXvosc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758170395; c=relaxed/simple;
	bh=TZxXQ5VuA97q9Eiv+H4+vB6j6TMaIqRpJuy43fE+Ipc=;
	h=To:Subject:From:Message-Id:Date; b=qJw13LTU5MqowRWEcSNxi9lQUJFF+pXH7uxe1phUvH4fko3WvgVmkbnKccnJhVatvjRMdE1aPFteMCjdGozJyfcDh8vbg7p9WrAQKItS7oSFyZYheEaGxi9ZFsW2wsXbbFUQ7lGW6+0Zc+FkoRhjJDy0lU77M2HcKnlmvo9lolM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T0dkVSb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T0dkVSb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D21C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758170393;
	bh=TZxXQ5VuA97q9Eiv+H4+vB6j6TMaIqRpJuy43fE+Ipc=;
	h=To:Subject:From:Date:From;
	b=T0dkVSb7Hs7TTkU/8rxkUuM2s8EazPl5KyO2+DicJdmhmaa4Bv9TUaJOq1f0jFrOj
	 7MO1atFJMGx9HxK0KWpL7pmbViYoK2Tr/vdCyYpUzj9tmAWgwef0608T/dbbeuG+eR
	 i9iyWtgTOEL/veVjPlv+OnNpaklP5jhSE1i/jCe/KmY7nThgMhED7RNSTBoksyB/2I
	 NhQ5A2ii0zaxKiU7uqnLBi0hjPrjEZqV8L1+d8NIJKE/2hoZI90tyEc+hN/bQsnAd7
	 3xhu3y2NpS7rwI0q1toyJyJcEb7yPxi9NjwLnxtuleZMbDZcEEV5asBCNL4H5g9snL
	 zbSY7TelJbQmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F396CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175817039357.13334.6778222191316602692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85641cdbfbea6c0c928fb1a0c48d66040afbe7648a83fbd97fe4750226c1cd92
Date: Thu, 18 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758170393
