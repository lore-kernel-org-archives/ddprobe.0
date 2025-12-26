Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C114A3C
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766721834; cv=none; b=FaT7ovuxJDyR2NeE1+IDXVQokUU+ZHCu+AX8HcpFr0sTofZKc3d3BfKj/xrNe4rh9+5+9DfpdEjlcQP3Mel8SMMuim5S0Htjed0eoA8KpBQb4a4h97CKhHPLnKFYm2IAtoHSIZEgDFdOMrHZxyF4pQ2hWU6SNRTMAxjmW2+tQng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766721834; c=relaxed/simple;
	bh=rnuygQkCJVUk0RmwGGuY5WDLdeobvlWItf7+qPVx0s8=;
	h=To:Subject:From:Message-Id:Date; b=bkWLqYLwrlgIFoQKslcScUg0GRxCW6sY22kWhHOpL33tAA97+R7dHSajphP8jI7K0nLGSZDZrWHqHO+EUXuGu0v2EEXk4IoPTGZv+O+Iautn31dtyvdXu9fuNLa580CdVJ15/XpAe8zHseKj4alYIpBT2Fmh2DycKfhBQY4F7GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZAfmvwsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZAfmvwsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BD8C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766721833;
	bh=rnuygQkCJVUk0RmwGGuY5WDLdeobvlWItf7+qPVx0s8=;
	h=To:Subject:From:Date:From;
	b=ZAfmvwsgPrmes3ryluoQ52I6lLwrv0wxaKgxolnYEUn01SV5piKI4s/qXUfSt+Hfz
	 IrYoTdcRO3ZJqN70mMhPL5+JRGhVANIQkNdnc7nzP+/BX+qpIf9rKiYWx4NtzWSdXO
	 rFLnvUYRYiv/v4Pbxz1MwevCKeN2PzKlbPp7U0m5O9LrWbJwiQgRwY/ttCgPOMuIUu
	 GE608BZhdV9xu4V/MD21zqz7i58SfaRTCQbDxVQTrfVQeVi97HBqj/fDs0AfBXJ67v
	 8ATLbqas4G5doG740TSIo3eKDyRAFD8FhjDYbrKzd/qzpYrFcugAPQwsA5/Pe1v9Ly
	 fmx18qaCqKUaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC71E6B26F
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672183364.13270.11041627678292359906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b02727c41e93eb8f0814c13faa29cebaad000487ebac8e3dafc9493121fe401e
Date: Fri, 26 Dec 2025 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766721833
