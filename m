Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD6612E71
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720244123; cv=none; b=sdTa3SjtqHxGjWo2XXOJb/bSJm6+Z2Y6CyIpOebnzRhxuV54oNaQeeYI5ocKgzP8xxn2Ylw2J+o8Bq19kAgmXGxEqXtYHRSNzRNI3+f55qOmBcJ/FSDYT6iuxosL7JzJYP2jrETYMHvUNPLafuDhT9lOhWYqf+ZaZMIedVZBLzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720244123; c=relaxed/simple;
	bh=E+BfAKS+elpwZMz4800nO4g/fdF8T/BoL/ZLBGgfq5s=;
	h=To:Subject:From:Message-Id:Date; b=n/E4otqcFYBBdSkywUka++BQPOxdAo1RBc3y4AumF9bp2TvZOeWf92uw+dKNd2cs3RwHk98Co75g1ScyaCpWpSspRih5vA7cS2gayr0EMHk0CscNoB7mWc25tRb0XK2b8SekxDw73UmvDquYQSfPJeCwHZITR8/4GmLZoR8kIxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BocTfSXX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BocTfSXX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCE2CC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720244122;
	bh=E+BfAKS+elpwZMz4800nO4g/fdF8T/BoL/ZLBGgfq5s=;
	h=To:Subject:From:Date:From;
	b=BocTfSXXnjy6DDYTFQyY4DewkI9qcJL6q4pDiYPmjhAElh43pEx6kS59sWy0KgIe/
	 TC9iy9Szs3eHw2QxP/ijEwJKKSHHbaZJ58l0XgQgy1dpna/S1lM9MITJtygjS+Fnmo
	 ILNJBtprzII2qpMGWSc7xSPT3wJNWqJ/ZxVeIeVJQT/fidz6MWFs9oOOOn8nVCjRU6
	 q1B+I7eg4Le0dXRWf7JoTd2osONGAIQa7qpQTHmmFo8bdKi9ACbYOTW+VVPlpbcxqv
	 6vL1jdiJVDp7qM9IaEPOq3pOG6ojdSSx9njACE+henCuv5idj5NB3j0NRHuPmofg3e
	 AgvMlU8emq9Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6481C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024412278.29473.17417969790027835632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bf7ede1f4d2de26233fefb17eab0aa831fbbee520a5fcf194e351aae98efe4e
Date: Sat, 06 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720244122
