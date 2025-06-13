Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B8972608
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749845394; cv=none; b=jcnA+wnCv/mv2q95UTs31yjhY52R9mIg07Iw+0GPcyGccmgLQhu5hljIglW8zU1gZUPUulRFDFWkYGKfSdpVws5a57JTfQx95+6/21RKreHwg9UxXtNSylEJDDGgYIvBfRK1tyBFGeztc7tB3E/ACOgcFE8GMNRKMGSMGU8dcB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749845394; c=relaxed/simple;
	bh=ioA3tM45B39AE6ybfs9Xn3MMM8D75V3L81oWOGf3s5g=;
	h=To:Subject:From:Message-Id:Date; b=C6HyZc3rHdUwOPI86NuaxBt1sPHKODpMkfJMUvinPq44PssCaYq+0GVKzAFYplG9YFlnoTS6mMFKmVmwcWgkhd20vQ2xljAvLaxnR1E1RPqSq0EhJauiv8V7X/eoodGD+CVoJeEADkcBOJoAqGcmusdcIkUneriI93yh4iTiqVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdqCzsYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdqCzsYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC2AC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749845393;
	bh=ioA3tM45B39AE6ybfs9Xn3MMM8D75V3L81oWOGf3s5g=;
	h=To:Subject:From:Date:From;
	b=EdqCzsYMyCLCE9GiDa8pypwFEai/zPAqC++Xk/9JFSaHJVV/WvahfCafPa9kScyam
	 nSnPamfFdfySmus6ubYL+OQpNc6/Rt8GF+O0DCunLrJ1mWH+lkVg8as35AHT8PckUo
	 yRp75cpuEgX0WMIs8d8IWhPsOj7TWN8CjijH8oHEmaehiSub7VA/gUqdRigFlLYUdq
	 LEWEtKHcNkt0zQ9s62jfGhTt8oui9hJ/vzoJNRFQXVRk5n419EnraTFsG9DFYbQ0st
	 lupr+1pjLV+2meWVR5GqbbsIR0Eg/g9m+bU2blt00gcfB2m9ke9rfi1BI7N1r3jjNE
	 tj6f1jGsScX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE14C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174984539357.24327.3700953732054718819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2b55df0bf97344804909e745d4f6f4e8a142c946cfcb8a7e7efb361509525e
Date: Fri, 13 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749845393
