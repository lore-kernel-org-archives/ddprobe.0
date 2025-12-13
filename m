Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4D3B8D4B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765641774; cv=none; b=cBnWS7ieaXb+tj2eh8g0OZuyTE1wH436Vfe5KqYIcYCx4PO/9veSzM9RGlCtlQxfcgep0KgIJmW7pltdQMY2WJcFyDQqpnQA39AYoSEEprgYb2rK258S+m9gYkUy2J9ulkB8dw7FauD9AeK93antkgQrOAJ+Dj3rshrui/XLFnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765641774; c=relaxed/simple;
	bh=vvAgbPO1e5jD02m01SAbfAHYRmFDHzOaSKvxbTKIYn4=;
	h=To:Subject:From:Message-Id:Date; b=QPbNlUWB+Gl/6kOpHL8jfDAuSRg4lsPtBPoVvyCZ+gJ4yVOQps7PE+ygQPwaoqifCb2NUqDVOb3XcNNhLvqM8gOeiIBlvaGKTx+NVKdnSpGdcR2zJrWLOr5faKpqWmQHe9rIIk7ocCvsSkCSiaWb5s2GKJPeEWyz1OuunbsoKGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhuvB1bm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhuvB1bm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE640C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765641773;
	bh=vvAgbPO1e5jD02m01SAbfAHYRmFDHzOaSKvxbTKIYn4=;
	h=To:Subject:From:Date:From;
	b=PhuvB1bmuyc7U6c9KgAZOOopMbc/b8iOXPLmeBVAMGNn4sZMZ0GSC365Id2a9sLl4
	 WWJdks7Q2Rn4Cb6eS+dKO4iL8mnqRV14uMt1JS3l4kgBUesS1rDDwUnYstVLvxUOOq
	 2QMxxD5puPlajJ5gPXGtB09yaBPk8mBBFQgwYhYaX9ZdxAua03XcVAn2JJe7A8slEw
	 K41i4/B4OgZojNfgbHCmGYRTks2mB5AKEQttNlgKs66swhwfo1gl9pRpUCncAWgd2o
	 XadHcXwcxv/EHbUNqDsaouVso19RtVhStiGuDZJeQTPgVWWuAGZRgxjOBXPkZ18p1e
	 UGY2TPk2Be1ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98327D5AE41
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176564177359.13436.7538990974348308005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f33e09ea93a70572641ae31e04233cf1422fccff634f82c023e5cba283dad53
Date: Sat, 13 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765641773
