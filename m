Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255733546E0
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788472234; cv=none; b=SIrMWjAq1ddmjROYmuuK5+JPtsBIWvCBgave3ox9A5RqHW7Lpt4AFJ6Eacd2+Tu73+7SFv7LW7ltLJsUGGaj5yhFz8oX+48Zxfw0Edh943NX1BDCwbphQnS4xBwbs8mzRkPMSAcvEmi/iNabCwbUoxwZFXdajcgEFyGLnN5Y1ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788472234; c=relaxed/simple;
	bh=h6iKu+l9z7+/3cM5zo8jzNzVGB22glRO9tJx5lCkzBw=;
	h=To:Subject:From:Message-Id:Date; b=pFRNWw66hcMQvzstuvcHlD+AE+rnjhI8g6BCicQRrvZgWIUfvxYNb7kMA9govZsHnKYwl7WtQ/sd1d5JOfKLZfsZJ0WW0NV5k+TMl5v/afo1cEzsOrpy7SMw/Xf+lsoO6cFvAIXt18EpLESc4ODrTObj3Cr8D2PvsXTbus2rRyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VF9SDfdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VF9SDfdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BD5C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788472233;
	bh=h6iKu+l9z7+/3cM5zo8jzNzVGB22glRO9tJx5lCkzBw=;
	h=To:Subject:From:Date:From;
	b=VF9SDfdgVJzh4KlC/hg8sodyz4pIXgceKax3YpmQwDHAtG/Ts1E1wAs8tlj7+M79E
	 4tbqlHtbvzl9l9Wl8FbrVxqwacsonjgxE5gQMXv6UfuxFueRu70zulmaTh7sobaGfc
	 s1295iM7hkAkkiFsT3Qmt5iQGUARCZ++aegLQfRrDFVXs0mUaixydodPyJv/4zS+bi
	 Ad4sMhLYMC5EcvBQ/lt4jKFMYSBx6RuTSv430IWZ+fIuGGVvqJ2XxDIZIBOyvLGWDx
	 foPbs7wA6YEuXW1R56eY4I74s6kwau1kaWh+0XWChgeShrZEY8VrbPT9JqyXXclhPl
	 cImR8o8y/4/wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACF36C624DE
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178847223369.16621.4822379676700961792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ece9722407ff2172f7d2e00bdf2f4559747b4836e3aa3884ba3815f9b49d8e3
Date: Thu, 03 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788472233
