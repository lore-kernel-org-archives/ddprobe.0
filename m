Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28927341AA
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752619195; cv=none; b=gtAXRQOv+2Tydk+Z3sl8N17q3SAmcaaMbVxAAdnpJs1ttZ+NwMVovpGvhvAM4gd2H2px+z6luwAFMq3XGQqYXSV26NguD0mq5gb/TAbPnVPkpD5vQUnUVtdXZyDoOYZvfWpC/+r3oThmULGk4sYfoBDblPwbrLqxuDbstXi0XLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752619195; c=relaxed/simple;
	bh=fE4bt2WjKHnvhtyiy8yOdjNSp+BGttffKbzAUDO+7AQ=;
	h=To:Subject:From:Message-Id:Date; b=Up++W9877Q54+ngpCWaY9uuiEkRxnWiMkGOO5KyvD3SEGjgZuqcFPzo0yeQoLWvHDUHJjye5H2ArpIBJhoeD+9q3RNabJKOXemDmjuI8MkxnxdPwCvYfwXMX0d3fThV7HmlvaDpULJGeXxxf04Ks9rKROSqN8qwToZeZoCNpHPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M57ODNel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M57ODNel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9660C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752619193;
	bh=fE4bt2WjKHnvhtyiy8yOdjNSp+BGttffKbzAUDO+7AQ=;
	h=To:Subject:From:Date:From;
	b=M57ODNelLaZhdjY9mQrf/YiAvdqID3nlCsuljMOdEXpCZt+5mfXLih+7/MkSQDGG8
	 SM4P21cDM/qt3ZajtJ4it9num2nx586pET7fltrcUniRA32K9pMo0uZ4UkVf3Y2yUV
	 wY4vokO5vqtCVWZdnJYSBKQ7muh+pruZEi9eCiHvQjetG/FlQpL7G99M2utiNKHwa7
	 /+JGyfmBGwvWI8Hq31sxSHUAdBcztpTC14yytQ7ipJAm5yd6wiLlbdtGY2OL6X+Skc
	 qo9Z8TYJtOKw8fFZwbuU7IKHq7VT54eFV0EIkAeJmuWBTbQ59Ic7WPYqThvjnzD4js
	 4JMzzCriGmjIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AADC83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175261919360.24101.145888514578300793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd91655d4e880c4ded8f92c8a89864386950c406b626e74103616b4a976d5460
Date: Tue, 15 Jul 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752619193
