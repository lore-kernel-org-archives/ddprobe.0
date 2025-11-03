Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BDFB313E28
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762185594; cv=none; b=dosj9TgKlGCabF4uvHdrwnR/aSAPobjqInp9ybq8TPnW0P/MnHeBMPWoL7l3oJQKEeYH/u10pcsElliAztvXskhXRV0OJQNi1dKhJdbgTEtUYHF5+4bHfm7tb7S2q1Bn5mRJeaoxIuBlV5QRQeJO2hy0dQ2bYxcXaqU4TP3NjV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762185594; c=relaxed/simple;
	bh=Co8FcrN8bdmlQ0Jm2Ef42wt9OmV4msAcf5q+APrhwF8=;
	h=To:Subject:From:Message-Id:Date; b=jHUupraE+WDZjWERIz820+Jw79w7Biy7b/vrCGaL+x3tBqnf3q3UEhEiGlBBlZDe8IZMIRNCnLjL+/3nS8yKl+MJzxlUHPdMjgsojJN4Ro8S4c5QphCUWdUYWBvZnSVT+zo91vuzMQpcfZutYJJVfpbYptSOtNi9P1SPNehwZ8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0PYIvvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0PYIvvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762185593;
	bh=Co8FcrN8bdmlQ0Jm2Ef42wt9OmV4msAcf5q+APrhwF8=;
	h=To:Subject:From:Date:From;
	b=K0PYIvvDhD2IM6YaWyinkGWAMrk1s1Yay7kztzAh2haYs9K9lieF4e8+7l43JXJt7
	 semkfwqLnRw9mGDVQSLxt6oCZ9g+p1Ty+DHsK0AVYOC4AjD0kucBl/gu0QXRZYRP2W
	 xIk8SyNqBJ+f0I2fihBGfRWTFpXzw5WR4v6npOTb23DE4P3FKYvZr/jELjI4ELak5t
	 lgtvVBHj0JFiyC1fAknZv6TUTVQo0LjAJRgSd2wvIgoZhf6c9hwDsiZeJnhPcs4UVu
	 T6dny8G4d7yGcfTHZK+xbUDWyi5MybGdqy8I63Wc/5kP83m7nDE6wylzBx66nkXmmw
	 l+wIW1iTt0mog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70ECCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218559357.18558.917304802587279835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57448591b047f3647f0f21808f74ab2bd0249896f736ef97beb98ae1e5cc55e0
Date: Mon, 03 Nov 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762185593
