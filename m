Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B00C374179
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772078094; cv=none; b=JTsucuRT2lK5ZqqW7hpq7txPy3KCGfM722yi9yJWP9mc+jHNYJRMToQVbcGaEkfC3mq5RLwlKttKgm/iGnT/+X1dzDL9w+ZBFOFBc2WPX3DCkSag1rrp0i8RZwOChyll62I8dgFQ2n4aBogfdlU2nMRDdzfXHvmAzxiELCtl2Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772078094; c=relaxed/simple;
	bh=2Tcvub/LqJoWkYEAhSiofLTZg7IEbW0hQUEsdppo6DU=;
	h=To:Subject:From:Message-Id:Date; b=SFXT9o/g1/ty84jnJpGfSJYnNm3DuLCV9OkZTm8i/PGM/RJH6/nBs5Oj9jJ/GkZrUc9uO0wTiK2CnLtokucQIGk6Lbrx7tlrJP4D9rC1KNR37RzjJ5IkIhFPbo0huUP4iElRW7KCV+V3inz5IwO4tLTVaQU/C+noub6Vm/552vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1tAejic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1tAejic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A975AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772078093;
	bh=2Tcvub/LqJoWkYEAhSiofLTZg7IEbW0hQUEsdppo6DU=;
	h=To:Subject:From:Date:From;
	b=J1tAejicnhdKnDf6iejd2M/0Q5e5pQpCw7UVBsMwHUdg9aQznEkAt4RJOuJ75ZMKi
	 krUS8o+HZ6LLip73eojvvXUfnVwveq7mLc3lGBHAATBIoCj1ye0Ib2+naMU1gKz7RM
	 B5tYqqI+R52BfyeFZzxYnykVPan4/igjz4u71ePMCny6u4pXs5pHEtK6ldgiSVRNv8
	 nlqKnYVrHmEjqQ1jCb+42aQRnr0drRnF6nyelhKs0HEiP8o4HZUF/mcwa5O9UiQINu
	 fakLpYv1GHTYp6iFSvP8LCiMRqKScLvobwababoDUAFwKEL3HPnZb5E70tTeZUVNj/
	 des92BeDN3Ehg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E07FD4613
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207809359.9433.10288771149177262196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79ce3b3c9313c7337fdc309fa535e4ad53782735fcc9f23c18d9e76feb41aadc
Date: Thu, 26 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772078093
