Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32774D53B
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722686754; cv=none; b=Y+FeoXFH2TZSHIFhkWY1KFaXx1PyIrySkFNd+dKn3X4tuhoz0g54ezr6cP6Kd1rS7k9pK04BBv6OgbVE3qA54EW/awKcZOwdWbiZgdoc5zl/k4Zt4LjiTFexbyUmhhzzaQLpLU+KcHJNrGMJqsb42X6fL2QDzYDBRsti7Punorc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722686754; c=relaxed/simple;
	bh=I745Jd7psIbjA2XbsqAmwPsv3UJKaB1UKblUqjEnrI8=;
	h=To:Subject:From:Message-Id:Date; b=EKvjMteoSt+fc4HrRhfwKvVmbe9ta7Zvuv0EGeLj4jTGWIGn+OUDJ3YLzsYcKGtZxg5Xu9zP0WbYfl+87VZXBKuiQawoycBAHIeoH7drhM21hoYYkpklsccVvU6nqhxn4SZeeoAnVAepttXa8eCMPHV9jQJ2DA0mdtW5BABIYkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jib5JFGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jib5JFGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B507BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722686753;
	bh=I745Jd7psIbjA2XbsqAmwPsv3UJKaB1UKblUqjEnrI8=;
	h=To:Subject:From:Date:From;
	b=Jib5JFGQpW7MEXJO6LThfSWotPZy1aAcfZvonHl8sEPiCZzIrA056CiXudgAnj+iq
	 Ywy3iSnuVNjaHb+Ok6FZBNmTgPYijtU6zmiT2bD37cb7jHUY3sXxVduKPgTdLG07PH
	 Pj/V6iCbiyvXamRB+wWX7iFeALfuSfw0PZ7QrbajFDzsbBIg/B4ims2bFTh55vT4xR
	 9T0aNnMu5gy4bmwtD2E7ftLmNff26jxFZGK3f4E9P5bSBmtxi5PGjHXp4gq1UWP8Lz
	 actL3hKCBiWUw6jbK72OhOKLqSOeO8n4o+VBtdt3wZ0vKViFZbTpvaluPG4O1bTakM
	 igCVuP3+f2oMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC3AC3DA4A
	for <ddprobe@lists.linux.dev>; Sat,  3 Aug 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172268675359.22811.6808468825136179184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872bce8eded4d97ed2f75bea343c18870bb1c30113543846df72afea06295056
Date: Sat, 03 Aug 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722686753
