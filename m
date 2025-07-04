Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B35360
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751587794; cv=none; b=d1bK2SntZDzY50i8M6lRaJUGdQqN8XMfDEntMY4arOO1JkLkeFrlpn3dVAgLbgrOcwj5mJNMBvZIavXd3WcwB9HLkvTQuBncndj15TwEQlsjPtLXs0h1zdw/4kpnDiD+G3tO8gl4hYH0nHFhYrO4mc0wmUN9LMK2Ipi/gucOXsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751587794; c=relaxed/simple;
	bh=yk4zozlwtBZpyMkAr/ecUsZKXT1WypsTSe7Fblu8wns=;
	h=To:Subject:From:Message-Id:Date; b=UeC4uHU8IgR6Mqhe9yCNu2WzAHBxUz31rkh8coPwU1KmY0rPnf/V6H2PocNKRjTjNbXjtkkqm8NavEkpU8CzQtVnidfCXqD9dnxtBSHgFZrs4S2mvK2tDnwO5f43xXwSFJ4LKJq5KnqAvI9f+0wOwEM6xJQryq+zxJxRhkm7msM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gii6x6Mb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gii6x6Mb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A146DC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751587793;
	bh=yk4zozlwtBZpyMkAr/ecUsZKXT1WypsTSe7Fblu8wns=;
	h=To:Subject:From:Date:From;
	b=gii6x6Mbjvta6Z9lwTK4S/+89vaeAwv9otqOEKOqD8imEZlwGW1/OX1pWzhnHPJPF
	 RGozKaD68r6hQ4NjreCAqDrKt9otoUKtKm8BFYCwgWqZZjxH/fjbwkH5P+rODfQRHK
	 phw2fBVppVAj6a4yuaxDMhFxFz7GDoDW7l/Rm06NoQKEveWTTPzqBx2cJCVBVzBzk/
	 kW1YpYlMv8pHvsaUBZuScrpmwFOhWrE27ZAeeKGQ5G90w+o8EVUvnQJ7NCAXQn1PYj
	 21X980ZYwqc+wvwo6dRfAPBV5w8AhTPbV9l9i2C7pg97LDsZq6SSvlTMaZrIQ1kgo/
	 h9yB0LIn5wSIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E41AC83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158779357.27805.3269753329197139566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76d1632ca092ee362ad471248ae801df49a6d1e30e07113b7b5e93d767e23acf
Date: Fri, 04 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751587793
