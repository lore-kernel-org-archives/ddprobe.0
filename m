Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4188335C18E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773237294; cv=none; b=omqoOFsEU/j6ljGeB38XPRBlCtX+az2nmiuAlGj0BIJM18d0CCqbrkS/9Xusd/fKi8Cc9h86tMPTVopB8o6X7aQ0SmMtmGylUiPNSqXk5XFzowmXxBJng7QlY/VR4TbZm4e2/jBx20+cTwO6IpChU6U2gOjNZLSSH2ksSC19L+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773237294; c=relaxed/simple;
	bh=33z2pwOT+BNyfGje0feDuLsc9tQUUcLxw1gq0DhgNCU=;
	h=To:Subject:From:Message-Id:Date; b=UvSiQ+sYXAEA7Qjcd8l2O9lRurSOeBKsFa2BJJqQxTg+8X2FxXv4/zV5ICg8U3tf3XQCAYRZGxlDfFiObQNup20ZDfYuK0nQ0MApoNijICRqZy4rGBBp4IJdIj53qzwaJN46eFtBdbdc2m8t0xhlsniIeRB943UvBBaeYPHBWtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8xC8fII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8xC8fII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A811EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773237293;
	bh=33z2pwOT+BNyfGje0feDuLsc9tQUUcLxw1gq0DhgNCU=;
	h=To:Subject:From:Date:From;
	b=E8xC8fIIR8Qa96Dpp9Y56STt+6T8S2uCaUd/MNuvvUJquERja9NV+UfosnTCZHj5r
	 996cwasnqU/WUweEaqM9EjfYNgckbLEJqA0ueATDLGdkePoF3oyEGvxoM4u8lH/A2J
	 jKRVL6R8YvpfGMye5JHl9Ohiu5X18gLJYx9cd3oQTMKiRyIhgRrbziiFE8wv7G29sz
	 rzIC1vJFcMqOLthcaWtsGSl9+Z2uHqUXaX56YqCoizMlN1IZeJk6FzA1G6fcy+LiVT
	 KrSFfEZr6AZG1niCoOx6tMAScWxblH9djaXkir04Q5v+LIz90mfq5IBEnuxVBfu+pC
	 0QCkx6hCBBp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963221125823
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 13:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323729358.18715.7170537645564854225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7959bb044a57be1f9ce9ec86cbd39899e9082e6403b4de33dbf07f0c1efe56
Date: Wed, 11 Mar 2026 13:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773237293
