Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13023DF49
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753083594; cv=none; b=LnpquqjB3MIUy24o3QNWyHi7Q9sbVtkn55SIRJRQ9vKZKNy/QsZ5yTR1sPw8QLwRiSVw7oAStSBZGP6inCEJh7m3uvRSFD8E4GQOeiYfbS2rOsOmypZKDRJZcrOpt//4Ra1e4D5PrdeyB4Au8FOaUgeK/emPxeE2LIwTbvDfRpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753083594; c=relaxed/simple;
	bh=bfBK5YZ0rD+NlV+TfQwIrkqnbbHJDCbZ6wAcokIt+ek=;
	h=To:Subject:From:Message-Id:Date; b=SmVpKkDGD2Yhfc64AKWud8s6nRyxgfpklzGbqqouDvTln3RgwOvtYfZLCkpZtMigClVfXhWHU8rgFJ/ZDUcCEbGsqhT29dXZ/ePslA5nHZR0Ix6vvcmBErQcH58mkeJ6M0yjw/FJ4IJkgJWelBtItd01Fs0N1QyOvxaW50YFgJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXfpJzwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXfpJzwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FBCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753083593;
	bh=bfBK5YZ0rD+NlV+TfQwIrkqnbbHJDCbZ6wAcokIt+ek=;
	h=To:Subject:From:Date:From;
	b=OXfpJzwiIIBNQ+52OQ4l8vF76L8SXWyYLmMee3T7uM9DyHHLNSwV2PaUnPPX5mQ0i
	 vpMhfY+pN3tnrsVPinDVnGJaRCL6Y+QQEYf3ZQZih4riGA733FGpxYff4DoWAJ7zWh
	 r2CPtN4NnUrNKsR5TTFF45a/sHL8SqvJkefDNNiEbXzA6m3VbcXM/gjSs5bYVgAEB+
	 nO8Dwus4tbbnZ5indBWef7sAMz+wrU9xNxo9seu3LGXb2il+qxXPhvmq7lJnt9GwQk
	 b8t9VJJ/QfIHf3HzZYeN+Fpfsr+cWyCwxqvrXTUP1uaaGEVyG9VzQK+6EvpLdwU7bs
	 3+t4ot788U9GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F998C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308359358.21527.17704918833102357270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12d867a3b87eea93235035808308c9954b3e0911cff24f91f90053e642641a79
Date: Mon, 21 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753083593
