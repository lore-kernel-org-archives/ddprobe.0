Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C34616C685
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718177903; cv=none; b=clmMx/3oOAfRmJn9UFHQyoxfaagjVGeAIShCmSX05SoZ22LOpzeMxLrLbH6grgWQ6cG6WxpcHvyxg1bMcIAY6qzXmp8tL3D3e++rp/hZMhZYFdbjbTVdwxMBnZ3d8eS+ZDxMEMpgFBFZYNuBxJ58gR6CWDAlaJgz9YYTR5cGQ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718177903; c=relaxed/simple;
	bh=ktbjnOucXVWjSYKPxfrJnigc0fp69bgnwflGa6Py2SM=;
	h=To:Subject:From:Message-Id:Date; b=VuES1yTw2W5qGpumhQ3gePU50yOcH+48PMnBJSMMrk5fbOVdLvP7uiNGa7fNWwTrR+qC1/7cDn/42JH5K9ixjn5nN2ea1LJ9SIPBYSZfNWPXTsXaD5YqgfHIoENpLwn0Fuds//aK8B6n3aqhjhmC+PbF/NqE08sXCCHfkIN+p14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fo60NHmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fo60NHmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1370C4AF49
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718177902;
	bh=ktbjnOucXVWjSYKPxfrJnigc0fp69bgnwflGa6Py2SM=;
	h=To:Subject:From:Date:From;
	b=Fo60NHmWxjmbGdmHNcZEauZvSYPYYkT/+jq80jCt0lXLTGQSXM9PKqxOGFndRaprZ
	 CriTTNeFzuTkKjCWoKNmugaKnATDrPKmAtI44/CvR9SMYhxoRgNsdpXO3WYgAxJkzv
	 ZJvRFr+7CuiBB95iYW3pbxJ36E/JQbgXVqQJZHmP5m2aBehrfQmhqvwdtWHEBwbkwJ
	 RISO+XdpddOv+mVp4OXA45rWtuBFhNW9TYW57wNfWTPCRtmQQQLbI9qUrTHk1o4Bgb
	 XC6Jubk2wXuwLeXywzBMCKZ6++vz7GENgzByMh3O4mKjJSwASHVRHHI8XGeehMuIXA
	 ivDI9K/TPoiPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E69C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 07:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817790281.30035.1596285759677175554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56689d65e101a742a470aae38bd808b775c3acb794cf1cbe2481739fe63f3ac
Date: Wed, 12 Jun 2024 07:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718177902
