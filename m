Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB5345945
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757393994; cv=none; b=R/l/WrwlKkr/ia6ePljdk5bld0klADjF1Db8SgaEElOWcH9Ul40RproY9c56j4ifMQn8djPV9AEz8f0Eei4qcpHULXeLAIazxvSy3VtafR/LO2qmqF2Vn7nu/ZEP8D//ajnDv644C5iKZ0DgiCtEMpRQzZO7eECtAqfW6Jq+Zn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757393994; c=relaxed/simple;
	bh=XvjhVsSy6toXWC7dPx+xzSRiZoKC+EXBQ3Tz+ZvCTEc=;
	h=To:Subject:From:Message-Id:Date; b=b6rJE8JqIPS03j1P3e3x3KxTUdg96IPKP9Jcgob+1EOOl47Q6AZiUwaI8tR/MVmeQVH5DITXMaf4WAzj4zRgtyGFrogbZq+kpZ0iwhQmPGHlQEoz2dASMOdRDN6sj7i9yFMhgMzpWUyLc9M+jqgNehdKclxBnt7BMdOVyTzoneA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DB2O0USp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DB2O0USp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C98C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757393993;
	bh=XvjhVsSy6toXWC7dPx+xzSRiZoKC+EXBQ3Tz+ZvCTEc=;
	h=To:Subject:From:Date:From;
	b=DB2O0USpUd+R9jaufCJf0E0ZeDyLc+zt9VD5W4jmneLxyF3P8FhGYktNf9Zt5JXlC
	 vzHX2Hg4VyoxYT31yhMh/tQhYFLTXpouR7Ha69uM+XfU0l7cI8x6KLVxGlEvOGmQnP
	 kFSKiCaeaTs4YiaEtIU9RTytdlJvUWFRHypmqpCfvuotZOtaqkUUIhGFt7YUlyQDtk
	 W2+VNHGcgAlqPyOjUWrCwtAClHrYmKS+5YvI0pppYRyfHrAPbiwOVXciOxeUhpkcj2
	 oWAYJsWXztU8vWnefWDMFE1RGWimxsp2Qr90gkmC/FpH8gdkkXI/1UsKbDO0LBHEU6
	 OlaL4wRf48HTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F995CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175739399357.1611.17266182294865850582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d83a28b54ee881b9e90372ad8f37eadbfa5b3aa5749c37147d02edfbe04e122b
Date: Tue, 09 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757393993
