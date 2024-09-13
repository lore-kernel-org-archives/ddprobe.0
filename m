Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9BC13D89D
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726214754; cv=none; b=F6qaba7HDae4kSGaWEi/ae0Fvn1dYGNzXos8pWHJs5CZ8G+N7NEgYnNRi0LfiT3xCY8wF3uCp4rg41Gag6hOFwX1bj5KoZyhDWAbXh7mJXbGfQ6pzpbxke+5wYFatsmQO+HES621L2sth3HvEdxMKuhgOa5QlQDWV4t9qy5ke9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726214754; c=relaxed/simple;
	bh=tbPNRBaxaDy1YqMpCTGNEmTziT/dfQ3FE1IgVvh53uI=;
	h=To:Subject:From:Message-Id:Date; b=uqkoEjQESU3bzlzxo5y2lCQuCpB9QjbFWXX3vJIYfhXupDQmH/mn5Nt0phUoJqGfmw2meA+IyH1F2A62sYDIzaXE4bbshjmED16TnMIlPZYU8n08PeNUQa4+nh0VVwEwwD1PUKYjHT1UguH7W5l1pv7AcHcN7AmifVHwMKwS+ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDfUN3UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDfUN3UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D93C4CECC
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726214753;
	bh=tbPNRBaxaDy1YqMpCTGNEmTziT/dfQ3FE1IgVvh53uI=;
	h=To:Subject:From:Date:From;
	b=kDfUN3UMQAIs6bDMGzyLFseCKX4b1UbRemuaNFeYA7cP3hfVTJa9rPgR/K7hYjO+H
	 QHVoIj0YF9My3iW9zIe242yVtaXZCrj8QAd84JzByOM/n2OJMkb7A9u8OzgDEJy/BJ
	 ZHL71t3I3wmKxEzZevt6uJwdSnobhPYGN36XTBBT0O8EYUcmalsCNiJ8711XIkGDy1
	 +3xLwpT+x8rHvkBdujnAJOZvOTFq7NYYESV8N72ejsMT4YZp4fvArT0xzEtwSIzQtW
	 lYOx1IaVYxJPCfnkuC39wChKXSgfD3ioTSMVaONoOcyid+7CK14PcLR+wssPUCdNly
	 RCjtgXtNFWrSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91525FA3728
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172621475358.17697.1212690801104188463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68d1fbb3389e3d75edd064a7e00761f9d701165b661f83caf477ed65e435e38a
Date: Fri, 13 Sep 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726214753
