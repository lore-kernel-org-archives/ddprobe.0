Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38B43376F1
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746751794; cv=none; b=MGDVPCCTO3eBjdLCC2oigz81+XPLJUmy4QGy2MWXlN+KGQKJm44IEVAg+I8bNcMlAAUydtjkMQ51icWtSLp/2QzC0cVzVwzppKPQD53t+y3n9gs/2lQFY6N0l9BThLSLXpl+eUIHgf35w4MnEHJ/Vz8QYuQlGis+xd9DI3TdWTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746751794; c=relaxed/simple;
	bh=cG9Dc9rJzfoGsnHd1X0xR4OGGSlW4Nskvc/6K+2R6/c=;
	h=To:Subject:From:Message-Id:Date; b=ZDKYSUeBVdtc6kix+2dPQvm1nkOT6vj0wUd4ItjM1IlY2W2TbyOnB3FZO8Sm7rKXYm1RZCW6NE+C8sLchJ8Wgc1bI4ft20TmFRFkN6hIw2v8k0HmzM1dOn15no1rn2apUk/xAsDGGWzSkVPKgtUAksaltsxG4x29pgGuCfKPV6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MY20Xc7D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MY20Xc7D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C8DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746751793;
	bh=cG9Dc9rJzfoGsnHd1X0xR4OGGSlW4Nskvc/6K+2R6/c=;
	h=To:Subject:From:Date:From;
	b=MY20Xc7Dhed1dSQ0vdKCcfLY47bleXUYaWh0fNDweBck2iAnebOgp8VolblBmqVPm
	 ieOKomwuoQKZHezPA9Qp10aX+EKXsAfQ2NurODD7TazGFJCLxS48ComLXRPkLg72v5
	 RKekNcoipacGFCNWUHemDidfZva7tVN+ocCaESnM8hjC9Y6V8GXH9XJwFFBXaM5SbP
	 VGCSx9Z84m2JYUB1yPomWSvvlbtMxOWfuu0y4FBsIjEhXjnmUxvQdDKn/fViadlXJv
	 CUpv7XO3uy12kgYl5rx+RnYlw4QvGi8R3kaUpOK46rV4WM4QoirtIyds27rHoTLXIU
	 ostk+LJSNn8Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F639C3ABBE
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174675179358.8801.9187394693829222314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cda0589ac9e33a18cbc2fa4380fe01a6ad18046c8e170ff52711a9ae270d568
Date: Fri, 09 May 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746751793
