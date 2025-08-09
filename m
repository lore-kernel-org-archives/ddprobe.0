Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0907625C706
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754735994; cv=none; b=s/p9+UnL0+0XgSfww2D4tdTLBC7Yc9O+lJ/ljhjy58+XxW60NhCskZSBsp85cw3X7NwOBprOchY+03TnNmxqmWJn+p/dXB0AQGKgLOGRaqsU6Efb7h7TNhg2+52+i3VTqKOwICwO31nsJOcGdfUiWoEc0nhPK6KrQCaowXS4h0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754735994; c=relaxed/simple;
	bh=ikJDaPUG6+RActmHoWNoZErE96B0dXSot17/wOd4Fo0=;
	h=To:Subject:From:Message-Id:Date; b=Oamcw3dGw+bFYV/Cgr4mjS86hOtRfbppEodwJgnvxw/9qId9Kw7fKqPSBrWW6uP9RLkh0Of5hdKqzP19T3/HaNiGD0x06YokI/vIHsUo6Jif7NhYA89x0y3JqDGR5hbp6eGb9VCor94iEF0O4qeLtes0VxNzF0ZMdcn6eV93oec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5diVg2d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5diVg2d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF0FC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754735993;
	bh=ikJDaPUG6+RActmHoWNoZErE96B0dXSot17/wOd4Fo0=;
	h=To:Subject:From:Date:From;
	b=M5diVg2dJGwdGk/QfjFc3RCyMIG7dC4Dl6onSomNq7OzRFSeSOXU4OdTB0MhANhFa
	 eOTKZBOJldHX4uCOIdTfwAYIB8lsDQsYCGG6rNHHm/bjP3oHBfZHKvZVme3Enh5Tx+
	 OCjQlGIG93lLOF0C7Vysl+2lVYFffJvwvSf2O4Aic3niMqOudFYZmwMf362yPsVkRK
	 cZN9PEKHW6cTkuQL67N/UerlZT+o5TLROIzKV+GzHUooF5BZAeJL7DwXJzTX5w/wDb
	 t2BUMOBo78CnQ3oIuxnVMElFpFbwL9qdK0Wrf+XT87nmwUKc8ZxHUiBbcyfc4Zsl4n
	 CpIqzCHVLiqhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0B6C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175473599357.21908.10118872123868065307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02be72ff542225b3e3be3b7b92875335658b941ff778e93d93d13460dd63701e
Date: Sat, 09 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754735993
