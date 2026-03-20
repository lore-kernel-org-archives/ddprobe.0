Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D6305047
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774032894; cv=none; b=aeZvp6T3j8sEoAjf5vqw/CmTT1bEdevTmKl3PU4qol9Agw4z99pVgTvOnkFK6orZw9yGRTcW+0fWA7jpbmtRximM9JQ08rqV9chJcS5OUo9RyIynxSKrelZZwxR5njjOwsro2bJABUVrj8chlUHgnPVttXpztZtvqNKhU3/y5d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774032894; c=relaxed/simple;
	bh=8a4HJ0yoUkLCmQQhKMuVcGG7/03Dl0juPAdqfWKdL/I=;
	h=To:Subject:From:Message-Id:Date; b=a/drXgv2nn4BMLxx9U87bWM8Ld/+hQlEHb3q7F1CsbHiyjY32sIaSeKOsihKt/WhA3ZVz9xph//yp/inX8766fopGtG1tL23cHDzFjtF4biyarKeXoBh/T0mACk7B0vZthDT5JA6rA7QA14TTIprU9oPbzIsyCEUa2HO9pqledY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRiYnoQv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRiYnoQv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DB7C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774032893;
	bh=8a4HJ0yoUkLCmQQhKMuVcGG7/03Dl0juPAdqfWKdL/I=;
	h=To:Subject:From:Date:From;
	b=pRiYnoQvETXlZ7ZVmK49ROqty1FCc+OnpaBCc+XwyxzCRMRYBRP2IG5Oek5L1nwtf
	 TY2YV+qVHy0RBlHDrUDoWu21LBVC1/ri4Vf3N9ql9h5VZGaWP28/Eda6p1rVqw8ZEP
	 jlDV5wcLfKtvb3KgreBN6BdRaceI3d5xd7oinNrl4Q9Qg+HhwXOQUe40otJFS+FQCS
	 uCAixZXTXcUp525lHt0krJ2Mm3JOCbvRP2bTT9pxFigfy7FjNhcIBRnsxsDh0jZ3nO
	 QJ0+V/pLxtdR6580rOfWHbo6OtAeJN/N60Rr4Xb3hdCsvRNa2SkazKU4SnS+ja0TB0
	 1IFlgNw4v/gIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9625E1099B35
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177403289358.8543.4873410138559029250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 180b3c30945fc4e11b4b179e33344467510e146d1a385f3bf9507998d6c298f8
Date: Fri, 20 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774032893
