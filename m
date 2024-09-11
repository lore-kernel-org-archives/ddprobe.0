Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4CF1F951
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726027554; cv=none; b=WDxVmBsTnnEk4ARxYUdA6fbYlzsgmpvJf2lhL4vxT4mmxKbPbmShwJD61eCM4lOiCyoUPTHIkba490CVjnDoxLml2uQnx3lShHQu3ipAhU20HnG1+GNJP96vez5UQfZu+i9CrDUudctDsHWurS4WKVtcGuTIVD9Nr/qocC+jRuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726027554; c=relaxed/simple;
	bh=Q3asR+0H6juCoZTrBOXsTvTcsq6ckGNrTECRxXPPWzc=;
	h=To:Subject:From:Message-Id:Date; b=dDJQYA0xokFXaMulcarDJry1kqtWS+31zDzARi8DVtK7H6ZoWMTzzzDqoSEL+xD4AV+45v46Ll3m7JsJYNpdnfMbcpswR65Pnk/QN2vVHF7rGa7/Vwzs9/wxxMCaEKPugEOrYuiACu7mwQRqb94YVb7uti5ctD9jkpHXlitT7gI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STl5l7hi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STl5l7hi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BC3C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726027553;
	bh=Q3asR+0H6juCoZTrBOXsTvTcsq6ckGNrTECRxXPPWzc=;
	h=To:Subject:From:Date:From;
	b=STl5l7hiEXYbcT4nVlY/6+wCbd25EZsX7/2hGNRA+XW4MkhUq2d4WFG4Cgl8C2Y2V
	 vYoYp/oYfgwsmwZ/+wDDXPGDSWK2SgP7XtBbMSRDuu6MD84vzv611Thpg8BVKELPzi
	 Rq5KSXM/0msJDHcYaJV63egeo8lreSx1GJHmBP1unAeJXLnT6gF21AxGxoFTnnOJg9
	 rO2ibTCVTMp//LjvEEfGnR9VV0KYP33lAqEwgbkkSw4nu24sxccPWERu+eYH5wxFPM
	 XYVHkqcGThQ72X411N09sFet7PNiXBbhMs43UevuebKAUTW6AAyFIzLN7Y5PxPdDVJ
	 NdSSh3gN4DaDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CDEDE997
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602755359.17234.16642165492643561301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 892f402cceb8ccd11958d629ea9e75ee5027ef2ab4605b563fc8bf1dfb25efc6
Date: Wed, 11 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726027553
