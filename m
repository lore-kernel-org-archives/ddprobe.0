Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D4F34CDD
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770239034; cv=none; b=I/BqxmOm/W89KZ9Spvc3bRIgMajKZhgz2qDsjiMffMLXeo5wxn3F1LR6MkVKCB/QGWcqQ7ETHgfYq7EGZaubCAU87Gd60RSkX26/qkvUqLQvN17N17fn6kyT5HJNh2vdWBPn0cVCHlubkEFQUFi0Pv9ir/vqzpU+Fk1rLeTTj64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770239034; c=relaxed/simple;
	bh=j6c0G24YjEsNqL3YeEv9zSdmXuKFb7UKQyX1Wj9+KbU=;
	h=To:Subject:From:Message-Id:Date; b=hQ9Tb+uiI1ErtU3BmSSh+RZElrzS7ynI87cuYw1bLeeyJSP9osXUg5tBuUbbJGcTLNjLeZrG3MiYwNBQWLFfqxDMdOIfcNDccO4xmalPalGib0pBVpSeBuNNB1SA+2BT7as4c8petQ5nEd3rqvnvutQWvXrXbTkaXK9Fs/LyuiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXaFrM2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXaFrM2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCFAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770239033;
	bh=j6c0G24YjEsNqL3YeEv9zSdmXuKFb7UKQyX1Wj9+KbU=;
	h=To:Subject:From:Date:From;
	b=VXaFrM2paHn1FG8be6oOHCoEYD1Gv+VCLJ9RG4a/7qcSiOv0tqjmu/WeHFO0RoGFs
	 FO5APZosGWMqwADWF+pjwZGEcPB1q5X1HmYm8sfGFYzAvZzD7IM8LEbbyXlJrJCxeM
	 nsA557LqB8skEl0MeQJvw/VS3lMJvIx01E9ri08JoGAbABx4xDcmhAhcA1hPlI++iY
	 VX2PSrHQ35vJJS2uUmMn4ux2Nz7Aj12wxwyyNGIXWtMc5LB3N/Sag8m9wefJeNeuog
	 /4EZx8e4dYBtexh5YpTK241eRZIM0XOLDQUKdQYyv8tc/CXhNRWOxGEO8vf1H2+dWP
	 8AYwqexIn1sRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D7EEA7946
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023903363.12105.5290500161916133402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8731f044e599a1ee26830776fc7fecb0d95ce440fd274093edf6b7db4a59f6db
Date: Wed, 04 Feb 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770239033
