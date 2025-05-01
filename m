Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213E335893
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746064795; cv=none; b=BJy2eoXHJq+pBJ9QJQAqMnIu8oLacIgwCo34TUO/4ZZW0abpUm8JvRCNgXI8kXJrTgiRh+FTtDUZ1LGxzoI7H3HvRQEApCa9b24RXTD97ujKckKfyl7MBOv9ShAB/loDOwzqvT7/3gFE84ptLi2MvC4PLuk6lMMtJTeQv4rnJ5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746064795; c=relaxed/simple;
	bh=GYgG1M6BB3ufwsAtsUgFZz64N3byjwU+Iu8rpMlZtl0=;
	h=To:Subject:From:Message-Id:Date; b=FpbC3LQDT07JXTz0KR8Z49fUclQ4H+1FBrQi2ApvdRYLzHtMHKZuw3eFk+V1YoOy4SLbPoYjG3ls8DOXVV1aOS5PUc8+3OH2f/2eghQFw+cmNV0Ob/X7tJJIKnfD2JlEZgptjUcVp6Mex4yRynXH/ybx7ZNWcBde2YmTQzTnRMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLeZSzRi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLeZSzRi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E99C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746064793;
	bh=GYgG1M6BB3ufwsAtsUgFZz64N3byjwU+Iu8rpMlZtl0=;
	h=To:Subject:From:Date:From;
	b=DLeZSzRiRep3E6RnSAaddb5ycnHe7/cM3VuTvmfDVRJ9UGlZLblvhUkeESojuMT4w
	 I6YYerCm8oTA4fhoCmCSQ78eo8IHyS6MifNev07/pP5zwyxUCxYCPkgAABW/6Fwv8V
	 mWGcbFLGzH6qUIdwWr69OOMH8YOBcWP6bppzPWkME5+xU3AaKIqVcz/PThu63V+B62
	 4GzjZX7trbvsAxoX9FXtCMAoCiKUD5EjEkRFQIjeEydWRrEWbtyshN3g9km7euy5h1
	 PbbdedQc2DOVSP9sF8Hqn3qKilQ6C5H0TBVzvldJdF2YgM+6JhDSUqbURiUOE7n2+M
	 KJ1z95bbpOIaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7B9C369D9
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174606479357.2439.14958551433783473050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94a3b7e910b289ecab8b473cc2b4bfd077d9ba59411909bab9f93fe731a1794
Date: Thu, 01 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746064793
