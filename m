Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B823E5A35
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783090114; cv=none; b=K4LSy8amkt/H6R2e08hV/gUiEdL7PlteONDVdLpNEH7htDt4xxQqTUZ4Y3eyluHfzoU2JW+qx4V336DJHereSPClHMG6VGWJrSyeV1h5cA0GQE5fGmRHXXcP+pinZXPd/1TYI/U2SrIOt1wlLFiPQzXwKyEMxjdTRK0CmhjBFB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783090114; c=relaxed/simple;
	bh=4KZ9juU+qXMUuWaD1fgKuHI+WDMXz70cczeoaGYt8Xg=;
	h=To:Subject:From:Message-Id:Date; b=upAgVM2qCrRjF/vD4yTHlVWIGkbithyyADp5TwydJgLJc4qmgkuhDYR/9UnhxT4cQguHJEtOBfPjtnv3kfrnMLcqZWtOD8iKhbupibgQI8YVOxHq9sM28Y+kXQrmU/0ogKn7OkggJJgE+MnulhSbrXoFPAfy7vm3oOhR7SciYgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhF3SpN+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhF3SpN+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5EBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783090113;
	bh=4KZ9juU+qXMUuWaD1fgKuHI+WDMXz70cczeoaGYt8Xg=;
	h=To:Subject:From:Date:From;
	b=XhF3SpN+2BgeEwGpd49EjkCVMUqPtUKw8Gg6CGt8Cj/+9b8Yp9QWy1H5Jmun9EeYu
	 AopOT0gcclOP/KHHEo0cVWpQWh2pgnpfFnvnn+B3R9lDCMD3y7xPX+ClTt7+DFYqxL
	 LV2my1gqQ2yVlQPaajtjrm3AEAZ08+f6SZbRK2BDEV3j6eHAhYfV4JTX9WT+3hOQ/F
	 j1WKdcX4psfJ4UFQIa+94iTZsZgzq/h/vHhdFK8BAx7oUhmEuNn8q/ERXcCf5P6lRH
	 7BLXY/GfAGk12/JJuJ8/ilYOW/9hIG282LgrDM6LdgRQjuD1gAtQ3XvgJmLJ/R8MH7
	 HjLDx3aVgWSRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB26C44500
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178309011368.5804.1263096097490459908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21ab2550f44896607f967b08f96d4587ac90bb38343ceefff11e342ee2718ca
Date: Fri, 03 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783090113
