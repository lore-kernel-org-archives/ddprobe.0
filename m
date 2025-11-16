Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390EC310768
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763326314; cv=none; b=cMKp2m6fxS0rZesyfUARhxekvONuauQ7DVoTDROVaraHnh267C1lsHQTGIQXnpOT+5bNN45gimKpzON2YtZIWOev6eonct8dlU67bB43YQIpljXOR5O3jL6HjEyqfBvNr68eozAqL/sjf5Xtg8R9+sPzKp8MkZMXzvom2BEQZQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763326314; c=relaxed/simple;
	bh=tOPUwxO/ecJcG84iltjRFHRYmxgnNWwWQAht46nKqHY=;
	h=To:Subject:From:Message-Id:Date; b=kW4xntG6SfSqLkwQijU+vgJudfZxYQwi2mG8JjnSrDfzKzjjJrE15FF+aZAIeo9FhtuKWspv9S/1A1bP28B+N3mMlUImjeLRMhjZpmf1mYpQJ1AJLTekHE80L/SdKFLCilewa1hED/QAdVVnw+7umNLGXyMc4XEkV0AIq2DnS3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjxScnLy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjxScnLy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6F4C2BC86
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763326313;
	bh=tOPUwxO/ecJcG84iltjRFHRYmxgnNWwWQAht46nKqHY=;
	h=To:Subject:From:Date:From;
	b=bjxScnLyqGOcO/NMNyYf12EnmIlQfluVPXyLVbH+qn1gO66XbLr5H/K3PRSLHl9nO
	 VSAdh4ElXpNCxSM9CHBuKX8Cwk8tc0Ypu9Kt6NqhfY/kbk+etr0nrJa8IOyk7i9J3j
	 o37rmQgbApg+8q+9Mb7tJR594J8PzCSn4PS1iVosotLiPTc/PZo3qdtExketRII9/+
	 6b179peIvxg6R+zBsfODreJKASwXjvJvR0tfgXWBs5xF4o3alzBIOXowmZARPnlF6J
	 9nk45CJoKCD7zZkMfjClaeqDXsfI+D9+1L77alep9Ur1tkchltYYQYYAmec38P6BM0
	 aviSe6qjn6W3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F24DCEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 20:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332631361.2929.1936967668896476306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0515465141baf27346e6824fe6db24f1ce6b4363855e7839aec5e112c06d37
Date: Sun, 16 Nov 2025 20:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763326313
