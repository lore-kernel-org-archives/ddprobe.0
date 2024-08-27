Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303BE1442E8
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724801754; cv=none; b=m0QM7TzKnswPISZGPwK41TMbtzPAbleKAI+F5MmiM02Rgyuk4ICAbVSxDz3MYG8wyHo5KRuqSOgT26knIeedEpkeqjkbeAVCEIS0bsirJY3uBmW0SFFVOIozGLza/pBsb5azkQMQy1T2nyHvmcV8h7oqrwn8vmwa9JsUeV9ZjDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724801754; c=relaxed/simple;
	bh=XrKb2exp65/hUs5LJl7lrYB/ngspUHQ87q+vSecxzzM=;
	h=To:Subject:From:Message-Id:Date; b=V2MzR8dxm4xshLd7QBNOMSrMMZpOdL88obMeLiM1vo0IYMw87U9ma7f7c4XA31T9k+Dpye88kjUUQrJTtJej/gt87ZmozChcnTO06T1UC25EnW9UObQatEMYF1t2ihT6jQAmv/hgHVbWd+pTqV7f+rjmd4ADj7mZxLORK1mY2Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H18a+FvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H18a+FvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE5BC5677C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724801753;
	bh=XrKb2exp65/hUs5LJl7lrYB/ngspUHQ87q+vSecxzzM=;
	h=To:Subject:From:Date:From;
	b=H18a+FvM+nuG1FIYNvyOWjieoTDsoyhr+Ns0aMjP0ntkwQVixGh75mh9Uq7h7vlz1
	 ZYBeCNp08TDkXcPKkUync+2F39nOrMRqR1YkyQrAUqqMQ6YmVJ0U5zYXOBnX8pimMn
	 HLppBV2EptHrf3OW496YXohmHXuxO8dt17CmqkdKjG8WACmT4VLr8gvDpMr/iXKXEj
	 CJrzkpsxmt1J4z4o5OsVMwecXOkochWgk1ZuOhPi0c91Z/EkVjvQARYsb77Pn9ZCYd
	 4N7Tgm2NnNHqdh5phP9QgEO2Dbo4AxztN8VofQvbGFF4LhyFREFjzt6pjRxHySL/M7
	 8QFnvw6eWxG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B535C54743
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172480175360.28660.10322694450617550336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b367633da6e3c8131fcd5d944744bf502e05f0668e4c37b375e421e2778e9e7d
Date: Tue, 27 Aug 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724801753
