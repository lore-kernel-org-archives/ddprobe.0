Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A8E282F1B
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780379074; cv=none; b=Ud3/4AO8OJ6hpseofRS4E82s6BFxcT7wbpBSw0MIqIdEsBkDQkYPvfKaN8LxUAXtDmnM8/BGWSp+D52Zu24ra7xdlyZmNqDpHMlRxZlx1a4vzJFc+GS8j1L9QoF1Yn+AsIDGTGmL7yQgrP4w9zq7tASSL6L297twUpQpdxbaJow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780379074; c=relaxed/simple;
	bh=E90Bw7+YCIG033ZorcRpmDN4OH0bhWO3/rfHylIguko=;
	h=To:Subject:From:Message-Id:Date; b=CPTVGx9+aADXYn+4g4SmFZRAW23QmhBNvPYCfGAlr3iTSauhVWvm2NaODWY+BRwHVpaWieyqIhRC7mAZMxUo6fwPOLMWNDGs/08KDff8XKaeZjWN/A0GYrugSpu//zXyu2OTAxs2Ty7piwZWl7NB4qGPX5DmgklMV8FGivaR1TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R+oAH1Ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R+oAH1Ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BF5C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780379073;
	bh=E90Bw7+YCIG033ZorcRpmDN4OH0bhWO3/rfHylIguko=;
	h=To:Subject:From:Date:From;
	b=R+oAH1KsK6DI5zBVMco++p3ji+UGZrJsef6UtNAqhN4np1p+WVOqpq4wo8DEQ1G9f
	 mI5rtM2ypww0jQPCO8L2sPYzeWzW7qFbBfCidd253mHhc/4KDPS6R2ZEVgrUcjVDtR
	 Fx+TclRPpPcxM48dlATA0vZ80z/1oe12UrAvk/dVuJUMXFsrdrKLJbXVu3/Ldvjj0Q
	 ueWfEqvxww/gHFmlTahofdvWjtIcbk+HPj8KtTS8xU/WwGE4wxZX/oVjpiKi5lNpce
	 UdYAUHylHyHWs8bkL+v6uEYZqDQhpdgAEmeLb5Ut/1hCRw/0L9Je6VjrfDXUrruzJD
	 IEZmKS/ZgGNqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8379C5DF71
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 05:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037907368.10583.9375829862582232046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa886ebfa5a4949298b6bbb774c25141d3e6bf4e2d968fb2348a8ec744f0f9c
Date: Tue, 02 Jun 2026 05:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780379073
