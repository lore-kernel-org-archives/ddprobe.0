Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE842BE64C
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763075994; cv=none; b=dsxt4b9tK26lglnrDGA+GZgVMJcu8ldOL9GnfeYP3HxXFWITVh+TDrD1GPLIydeyYl7qTGps+whW4/q51mst5s2zrLPsZu73eGNApgQmr54y50xA4D1lFP0K46+v3BOsq62HMey64jYYrUj/ENwOipA4lwETyFANwiSRjnW4qFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763075994; c=relaxed/simple;
	bh=Xtrcg3rQTaObqjVKBUbZ7ucvmqxeJblmLqiPWVslr3E=;
	h=To:Subject:From:Message-Id:Date; b=bmXyOnT97AZF2R1JV3ITQ2LV2dUMlst55X09kyI4Ej0RerI7K+ybhF/02cUE8YS+qRQ+iu0QRTC+FoT+aonnwD2H+6Ht5iZ7HoEyV4WcxK37pNd8xXWcakEjIWxwD8ISqEt6eWHaBCA0NaHBmMUkD6sZTS/F3WEMlUnqjyrIN2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYqUKuhx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYqUKuhx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8288C113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763075993;
	bh=Xtrcg3rQTaObqjVKBUbZ7ucvmqxeJblmLqiPWVslr3E=;
	h=To:Subject:From:Date:From;
	b=EYqUKuhxyBHH73dXZH2V+ijfCNgxYH1pNVr1QZQS8Ecttuq/IeSKruRLeEdeTAOaY
	 /HXIPj9d2sY2eWHK0b2UtzebdqnWcNIxpG/Di+ECJVD1JKziy5jTudRftbnYirhS8v
	 8bR9NhnkVIMj1rDsxG/FajpzM+IuNe3bCeYO8U3w0G0tJdhTVDtJG0kQMI/HFwAAaS
	 HtezOsNLpr834ZfWz9Nbm8EF4y+6nxJ75Xrd4ey1CriI2cZS+Lcs69LwKZ0Lfv8F4B
	 mhZT6s/qfPZ4cIfHRD/x5WV57nX/yaDk+MxjYUdBemlzxakuE+YiDth7kMLtiw9l2c
	 S+uhOp6XNjaYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97754CD98F7
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176307599361.28955.1687028674510662442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e9d5c450e8d78392c10ad1785cea45a66c77af66494a930adecf6dce555d64
Date: Thu, 13 Nov 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763075993
