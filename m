Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9402AF19
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752299994; cv=none; b=sRK5cHcVuXGiapK/ercvUUqsJSRNmwf2sFAFtenBMO22gDk9Drtmhw4YDv4e9X1VSc/v9Baq/hrPOPsDk3DR4Pe1DDiBEwOeNrytr60RZvF8VdRb6u9tEq5HTa+Pu/LlpeIQALpmcos+rHm6gz53nxDPyg8YuhnlgyZHNw5FOnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752299994; c=relaxed/simple;
	bh=DSKNZOa+vH82X7hsKShmPmlAJuGtDaYhzjQqsV+dDZ8=;
	h=To:Subject:From:Message-Id:Date; b=fBSDvoNYxfmdyjvUzSgMyILcr13i8zJ8HIwt/fqzbaQnK3XGiztEyFTHtdCOe/B/D0+5tqDr8pWrphleC364wMPvTJ9fqE2rMU0wkkK9Z6t0oVPuGSA6MaBt/x1Bwg9xyOz13ol+o2OloxayoEBmOkK+ZgFSQCpWzzsV/ygEwm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ve+tVJHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ve+tVJHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C0BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752299993;
	bh=DSKNZOa+vH82X7hsKShmPmlAJuGtDaYhzjQqsV+dDZ8=;
	h=To:Subject:From:Date:From;
	b=Ve+tVJHo+7LwiWGWwpFaqFjzkbaJo+jA46YKfrFax5okWH2VUWBzMAUrK6fel4uOE
	 ADz4bVCmxlLofYOoUgWCkSp3EW9QI0q6bmy497NBzC0iALdgZS3dQKyu6an4wht8cV
	 o0yafAo95szUtxjC3UdKvRFDHAAUGGr11rymsyCzTDQ6yDpytXUwe74aDR2DWe82kP
	 FAGY2HLbD2jaigY6Eocj7cNblbntMoqfslAAQPODhLrZ9vQ6NPmTt6WudsWVyvjOLE
	 LiwTfk5rIF0l/CczK40tDkWNN+gier4AUnaIzHq4a6FQdZ0AU/tvf4C72eH2+502Ng
	 GZtemYUdWKZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93019C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229999358.26322.13249254737035078807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f7fbef4e81bf894fd1e1bbd23cd9631c06762aa83796155797d7559eb32a667
Date: Sat, 12 Jul 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752299993
