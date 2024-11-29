Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C64C185920
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732874154; cv=none; b=mV0nCfXfLtcPk30f+J/S/qGklxtzxE33PGLQ2N5GC4xIEi/VEosTWfDuk9pTblWOh43NUDCJgaG6SY17ahqh90pHubXvOLTsu/kOKiClsJK+KUnsb9A44R5iB9coYKHfUCy6/haQ3RU8Fe6rsh4nvqxSfhmHkoL85sw05N13cpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732874154; c=relaxed/simple;
	bh=jvu+ERfeMnBQSFlC2ylvxyBTgKPaGUmNB8hfjV3RD90=;
	h=To:Subject:From:Message-Id:Date; b=cL4r/36dT1RNSvvexDev/hPRJfmtfJO6pdii0Zxk5Juwnj5o3hmWXUoQb4HQXm3LWJPgrWEkDPRZlu1KSV27gQjigTEXlQFNcWlFE6js2Jsun38FS/U5I6JMzA7m6NSy8V0idElprOKFvabmFWWemKl5rcacTOPGaUPjt/Im1lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wl8Ejkg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wl8Ejkg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44E9C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732874153;
	bh=jvu+ERfeMnBQSFlC2ylvxyBTgKPaGUmNB8hfjV3RD90=;
	h=To:Subject:From:Date:From;
	b=Wl8Ejkg4P6INbxjQGmg0as+6U603ZLAZGB2Q2b/+p/d36K/5/KAuh83QmGhHNSriG
	 5Ifo5EnW+efFITkM/UwkTxovH66dAmFlYysFxS8B37g8KUil9xs1UzugCYrhrYA6GN
	 dn6GxFF/YxKRdZIZi1u9PlkcGnaQXhE3b0vkyn0vmqzW+VlEwPWZhSwRGrHOsF/79J
	 glfW7gtTS3PEfqRSCZ3q/dWNgwd6VMbhIbS3diwoqDeuIVE7YtyMqO2u9srpkjkueV
	 CpgA66L1v8KvK2YetqFdTUloRUP/MClZEP0Fyn397VrbX9YcFv9DqnPHATm/4WXzaE
	 e6leW5QK5TGSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E515D6EBEE
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173287415363.1354.8421445947797150585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5198d23493d0a66f9abef6896d98524fd0f6824838483fbd136dcbe66e576746
Date: Fri, 29 Nov 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732874153
