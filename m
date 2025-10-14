Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323627262F
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760404794; cv=none; b=Xc3o9a1a/BcihqrVBpF7jfnEImcS3d6gUUGIt47Z57XOzinuQw+tGSEfLqiVN53B1uOUAAfVcwnT6cc7Vt66RHkBvx9K3FccFk179yS0SRXvlNxA7d/pxXgIFOrEPYcW+tYebi+DZn4IxWHQzJ4fdpgDJC6RRzQ5OSaegWAj10s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760404794; c=relaxed/simple;
	bh=omybx2zIqlGvVyK46ibLJxxPnFCxjSjDABiWI03PA9w=;
	h=To:Subject:From:Message-Id:Date; b=lXf/UZOTBg1hky8TWpjZMgI4H35gjdQoAEDURgv4dhiFvadozv1wccbntlQHL9WA+oC+aQI//iobBZNSbPWkj3Ti/smFw6IAhpSVM9BqoC38ynnYLtmhtkHtaDpxp+aey4UxwcsbzHTCuWs9RYiRp6oDjsfNNlNpWLKsTMAuk7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXZT31g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXZT31g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A239FC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760404793;
	bh=omybx2zIqlGvVyK46ibLJxxPnFCxjSjDABiWI03PA9w=;
	h=To:Subject:From:Date:From;
	b=fXZT31g8iiHEcNY4y1o3Q/Nh3ZoFrO6DtME+TuRY8MQQIjHKjrmYwIDnbnpcx//qF
	 rBRomp/55/MecNhBFdwI7qnxZTYfObIEnUdhizXAy+HU/nq8YEMfS/fQ/h5dKKcLvS
	 +5bEGMzY9NZoQrJj2dBPI6VtAnU6V3QHdeUSMtOlPEWBGHfZROGBLI1IR89lEIRpW7
	 zlWy0h0dMsFs3FS0DMFh1WxdH9deTcA3eUuH+F4MPF2amninmGWTEtNEyspYEZWmgn
	 j19gp/Hmm2OcdF0Bx9O9fx4O+F8Dt00niPcYoxoDpvKJvBVLp5gmapEt63GuRY4LRR
	 JVkXX9PodfP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F26BCCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176040479357.27629.16960404424086504674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39e80d2a2da1bc7d32256d080f9d41b872078b71545aaef3c03aa67da1704cc9
Date: Tue, 14 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760404793
