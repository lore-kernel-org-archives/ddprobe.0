Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDB222D7A1
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774705494; cv=none; b=MMfmE7015b25+AekHmxxrrsZ1tHaymCmqkvSww0yWq0QI5i1sQ/DxYWxd7GYynTry/L5om1/iSfo5ewmahL5nZQXAR9NyojgS8fNukZrPOJre9LjggeXJk3HdMpsrwTWtNsYgKPqVrtwrJsF4ETpUofytAKqAhmthQyNvulqgV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774705494; c=relaxed/simple;
	bh=pybPH/+R2/thGUOavk60Et0xrnk4OhTvNIp/dsJ13vY=;
	h=To:Subject:From:Message-Id:Date; b=nPyg5PrdEKg2vWx3hScIlF4TN7/dEPmVNl+ECZSHtTE5lyGK1d3BlHPASfGqiu4N3j6jgjgXGTbltO7ev4vLyXPISGwNu7HSFWlhLqBOtO/zrKEYz7qbod4yJzRgKuPv4ZzybPwaHjs91bjKhX1C/XsQ6nE2recauyxXdCuAeCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFU7owjm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFU7owjm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDBC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774705493;
	bh=pybPH/+R2/thGUOavk60Et0xrnk4OhTvNIp/dsJ13vY=;
	h=To:Subject:From:Date:From;
	b=TFU7owjm7tpJ1kT6X0ldNkx2YJf+LHKtxulIJJbxpieFJDmuvyH73q8VHt9GzhgeP
	 9Zb194vZ06jlKzYTpWLTD36eA6HnXZ5VM2cgm2AZQCAHulJ/5bu7Ay96r0/t2pXJxX
	 MdhCLFXW1PwzV/HDatGKxajGCRQXPXRJI1irOSh5VAu8G8PPx2hpld3CoF74ltSAWb
	 Tp4C/x3shY+vk1DlEjmIk0fVuQehE6ln1Rj7gqkzCOixZETYMJ90fX08OAdg0cC9SX
	 X7pjexw0JzHT1DosiOBLE61TElx8Xx86pwKbTeCQLdnD9HHTbTDLrbbEbG5n3z0xlA
	 woIlynt2VE8cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157710F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470549358.16111.17933345607267049531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f748d33f64ea5056ed73d7c00e7fee1e65821eacc7121e3d4aa6e41b741d80e
Date: Sat, 28 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774705493
