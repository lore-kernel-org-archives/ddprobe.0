Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DEED1D1304
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724241954; cv=none; b=XWgshudCpKASatDijvu0JsdUlfohfCL/ABjC7jgPDtNPOSOClpzQ0ggv3FUP8Zv1Qm1PMSGkCUogKdsvG6hQqQdmPh/MBRMkf/tbpNPjfXTHOSz3VC0Biqu6fFVn+THORIUQd7avKjy/yyVK4T35Ms38eveJDXq7s3UM6Ygm7dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724241954; c=relaxed/simple;
	bh=SDg6Rwm6lAOosaZn2i0pserddd5v4qBu3cKPRGMGGcU=;
	h=To:Subject:From:Message-Id:Date; b=q0B8FV/5w5BtmbFuLSSZFHGOqp3yBdK0DJBeggGbFUelL9ijO7OEpHIm7ETyxZ0+izf14GD/TzGo7Eu+2KZ7qKeSt4OTAyfKbwI+WJ3IUBrzPho2NkwK82p+rKufDYdtA5s4VLM86qNAAWsgpw1/L9bWcNVjlZBtPCH+D+ERjM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKKFfQM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKKFfQM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98BDC32782
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724241953;
	bh=SDg6Rwm6lAOosaZn2i0pserddd5v4qBu3cKPRGMGGcU=;
	h=To:Subject:From:Date:From;
	b=ZKKFfQM403+qak6h3gLBfMv+fwgZ6rWbOmKe4NQ/GrEGW1sn37TqI9XUkM7DzPi8R
	 ttmxMYXuGoVNMI4sJgdDVkrVVVO2HB/c4r8fxPk5R+6S3hed44sO/kDAUroELENZ1S
	 q/pHRDakmbFh3Y5G5rD4k9wATnn9smYHT+rVpYDL85e9r7LvV7s8rpbQtaeLuik7Er
	 z3hc6mAh75O8PyG0IzykGgP3UZc3b7DzfX6ERWT7h/NH/jDQbsrD5crudIFwbrRfUK
	 IcS8oqEsnpWFxS0+DfPIOcoBFrqcJ9SFLta7KcAMSe674e30WmAW9i/VfrNsRJVl/K
	 TesJNUiJfA3CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27D3C52D7C
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172424195365.10304.13233901565674735437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb7dd6d693144bec7fe77b4152a046672e13471d1c0c8443c12ce1fa5f6e1d73
Date: Wed, 21 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724241953
