Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D00A21767A
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752008394; cv=none; b=l3a/e59P6g0fd48A4QiPWV7k6QSjYcTZJH1W9hb/ow7H/j0nSwda8Q9AW+kiYXyNHuDSBerwyGoLu3vVlNCxv1sYtFAE2tvOrcYlR7kuSTH/6TL36M14dshpQDxy9ORsaW7kp0kzGimGNuXBypr9eIgRSf2hpAP2fJ4GRxFBPX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752008394; c=relaxed/simple;
	bh=mKMdn3XZxp5GakMbi80tIDJ10Sak/Euj9MOOXxR//eA=;
	h=To:Subject:From:Message-Id:Date; b=GyjAOM0s6obT30NnFNbLwtUkBj641LBF7tV5vBnlrBtltdrLX0aNdO6+Gf5KMOU12UX/kXRv5R+FBu1Y/WRqDfuI+wu8Kp+g+EX3zIFoY4/3i+J+C9vHZABjvY8MgqvrtCs5bFvo3ka3BOaeI23zjd3ScKfC2HXQDAaDAJ0l9BE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEtMZLw7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEtMZLw7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2B0C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752008393;
	bh=mKMdn3XZxp5GakMbi80tIDJ10Sak/Euj9MOOXxR//eA=;
	h=To:Subject:From:Date:From;
	b=UEtMZLw766Cl5/NGaK5ncj+oSE73If43SZqbyuCHhLD2ObDSjdr+KcR44O+yV150y
	 gbG4qB2aBt05a5jTA8wLpDOfiwROb0uwXAXq0+ugykS45n7hYlRui0m9oFn3jBYvf3
	 b7VCAu536NaMtKhM3hJ5KRLKls/TGnBGDguP1QKkhIsDnCkgYPMSLRcGNYWC7FCBKl
	 WDeggRAl/JVW4aoSl36hzpS8bTW5yBPHo6M5WWIR/UcrWqXLFixLlC3QLn4XiACTZx
	 FtljIIzkfP6CLsKARURGXpOmQeMLko4fjntEafKlHokrj6Ktt4hSdOhHIjWgy+m+hr
	 N/yOL+kz6rfDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCAC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200839358.3572.8475016275651954858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03229567f346b3e06c00508379c52df4615ea6eb7e0b33bf4de257d12df2c09d
Date: Tue, 08 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752008393
