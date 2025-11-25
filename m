Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210093FFD
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764037974; cv=none; b=IKy5PC7R6bYjTdZLwCqcWqdoinuNLWOOp9AY6bmb0VZs2NmKIIVZvKRIopyROs3VvH8dh9/FvsLv8nwe2TubWDZIScrdUwENGWryqXWjOYNzqvpdWP0M9WGSgCBQkjNO+xfdKFGylA08JTnUiQwPfe2cHeyQLeQXQm8TBYluJsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764037974; c=relaxed/simple;
	bh=gCJaPOQxj24WZxUx0xly46LxNkCXwv3nhNxnOSfdiOo=;
	h=To:Subject:From:Message-Id:Date; b=kQbRRmbKdGa7z9SPiUDZ3L9rRuYAje2DSpPzjkDnj2LXgT+8e6Yjhcax7+8FK+Eg7RGtDYYrx6g4o7rAjOpUwyNkDftIIX+9x3JlPacNr+NiPxaxyQ4oTCDgqTe2Api+HfvTyWQaftjxrjrY2i7Q8lO9u/oeyTnTqFDf4o/tks8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K57wLrRS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K57wLrRS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F3CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764037973;
	bh=gCJaPOQxj24WZxUx0xly46LxNkCXwv3nhNxnOSfdiOo=;
	h=To:Subject:From:Date:From;
	b=K57wLrRSL5ewqkzI4tbkrW7DMcCmD7GRxZwqVVCyv1S9rsPKYDvFefx5P9tdQEYtk
	 OJcPKq6o4aCYtZ5aKJgqMGeFJEXOWZiRQ9tab0JEb35MhGu10KNZ1hhKfgUnNVKrBS
	 sTU5Owt6cjvXtMWSl/Qef6Q4SJgcFLvjJCXo4fVONvU1/IMCy/SUhH893X6kZE844t
	 iGUo80l6ae1pwDTI3a5kzUGPaJg7NbN6V9ge46+vSXDnbANGJ7kcxUKdrkYaYDwyD9
	 1pfQXuq9aT0+S6q85sob3Hbn+iVMBPCIOeRl+0P2oN7JtnfJoyqOBRNxv7qxP/9ZZV
	 pWsawIVpY/q4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912BDCFD374
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403797358.3134.10526887400832633057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f793159cd0f7d57508902dbc991f8d70853bd960d23f893d539532e4d39d6f5e
Date: Tue, 25 Nov 2025 02:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764037973
