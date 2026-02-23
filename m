Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1853F11713
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771809894; cv=none; b=NvfMwgeESQZpI2vCoZthIoelGu149n+1Jg457vD2ZB0obE/gEUiPqS8oNrJJbaaF2MAjWKXUitxQ6cj6r5/1FrizncqBJF4taSruFrZAPZG+yZ+gleO9Ppw++ED6y5QhGNVBpikyD/rveeRiwy+N9+TEG+XtydoUdXFVf5G5nys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771809894; c=relaxed/simple;
	bh=2w8cUXvflSLORUH1Tp1Dw1h4Wy2QWEs/yj/M+7ju6S0=;
	h=To:Subject:From:Message-Id:Date; b=Q6lGrGV9OPz6URH3iaZ7EcAV665+9ynsiq2gTJASfhOEuPTJw15RluYUMjrBdHoBdWngw/DBpqvrHvCFRb4GYeL2ag8o/tWPkcLwqTXl8hSW4Z7NGtHqhpFZtYxGAtnHDX+YdKWbEHg6F6TMVUzvfpMMduckW2ZyaJMryH9cfuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eM6bnkHd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eM6bnkHd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D1FC116D0
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771809893;
	bh=2w8cUXvflSLORUH1Tp1Dw1h4Wy2QWEs/yj/M+7ju6S0=;
	h=To:Subject:From:Date:From;
	b=eM6bnkHd2aDOdoy600Lk75gHZxOxez5y8EEQRszfl/Jj4XjlY+bb/Gjf8QQ7fVlJF
	 C+EObHRk5k6DNXgN8W4I1v0dUshwA/uKerwmieBf8zqgd+8sw2es/nZR7GKiegNX+S
	 05LzCO5pjNea0jARv5BY5r6aY8pocgUjkmUUeOzk2blM2uI+72Ff0giFB1hX5KCdy0
	 qlbzeQqbwc8CNlSegBiWynMYosSYJTQKl9KK51j36k61Uy/GqSnKMU2v+GSrJk8HA7
	 spC1xOxUROyqklcBAefSclzWmCamTKvivQygmjcOjKKLmgg6KTokptE7CmrwzPEpQw
	 hq+ypRODiy5sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949CBE7C709
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177180989359.31119.4250835305416727564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e6a8ac45b43a557e49f3f67634db4657ccb8f7e1bb0f786370e1e69e84936d
Date: Mon, 23 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771809893
