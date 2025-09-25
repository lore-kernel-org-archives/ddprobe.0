Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2842726FA5B
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758784194; cv=none; b=c6Wf9BB4R+jCL0LNI1YIqfzI+3clx2puipHJ/YhTp6e/vGQ24hRK8lp8uWoru9ZWoCqVbezSLH5VfUO9HrbmrnU0gD1uFV7PpKQsgKYAlZet8gwPpr7ooi678rC/tWxkqh47gvhPfT7OUW3gYnaH393LYnVC1bOUrG5QSCyQfoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758784194; c=relaxed/simple;
	bh=ClSF6EgLSGHDBTm5Jn8Xov3iUZxRT8WObpAYxXytmSI=;
	h=To:Subject:From:Message-Id:Date; b=lr4v8ecOeuYT/6SJJapDcu0ivSrUAyGnrhCrHSmgc9nCkFuPqhsEzhq2v0Xr8coQBDFZkZX0dOrXIeE/43dES3NXyVyoUwl6TZ59rmokqZr1POy0Coc0SdCsnwjIjF0MHcR6U4N3RTOS2236O2aejJiziGTtIZE9KCrw23y2DDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NZ/iCec9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NZ/iCec9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E45C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758784193;
	bh=ClSF6EgLSGHDBTm5Jn8Xov3iUZxRT8WObpAYxXytmSI=;
	h=To:Subject:From:Date:From;
	b=NZ/iCec9mSr9RqL5ByKWL1anA1cTzP8kbedD12itOa6xD5JB5ERahAQuXGFOEfOkw
	 OkoxMMJpqsKRcLhY/kRpatC4r9itbazUfQ5EE6B6vdyRV52i+3pzcrNlHXwrLwCrgr
	 hO8eEjiZUuv0/+If1cuMRTW/5MEK8OQXfpBJX5hP823fu/aoYzqCcySprpSbYFt9oy
	 S/qzmyM1SmCZFYcPD/yVxQqx/nn8oE7icBpsF0wzZ7auK9T4cbXAE0+XckRAnow8o5
	 tqajfDl9SSuFi/DtHHscPyTLfVlz0BfrnxHee62XI5hMgSPixjoprJ3WEmFLfxHnZk
	 4t9wdrmac22JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A4CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878419358.3561.6738529275945879604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac89ca6fa868bcff152f5ec3c3eddd78ac9fa13e4c83ac693911b33d63280c5
Date: Thu, 25 Sep 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758784193
