Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227E12DE6F5
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751489994; cv=none; b=KSTKWIyGSvTT56QSzhPdesWns64QEHq0lrmwS5+03luvchOTrLVxwQeBoyP4/AR1AJ2mipTST3iPZslKmiRB/JofAM05wfAFxemEdOEzv3tQ7DvX5zVIRQzKLB68AmQYh4hxyM8D5doi1RwA+RNwXEA03+UxD6CQv9ksdB2SEzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751489994; c=relaxed/simple;
	bh=v4aUmFdx9CZcEFsORIJNLnyBGykxayoFzYkPmWVI37A=;
	h=To:Subject:From:Message-Id:Date; b=UGeZZkdTc7YpDO7emKuVKFn9UidiaZTacRzPRzeEOj7UsZTnchTrrEXjRrA9mgjhc2sWQDQPhAXf4VSWuH/u04mFDZBOCqBoWms/Q+Q2p6M7+ObfvHSC36yiqAqGJqaQ/2NxEySGhOH0OLnEccEl3EhxO4GwBod+uNdj2ppApV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaI/okvr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaI/okvr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D983C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751489993;
	bh=v4aUmFdx9CZcEFsORIJNLnyBGykxayoFzYkPmWVI37A=;
	h=To:Subject:From:Date:From;
	b=AaI/okvr29vzySTLyUfvANm0Ma+ABmyVEYi3aWKvAj/A6kvj0RwhOksGd0++K5o8E
	 hegpXzaI2gRZCTpiNRfH2/KZ22ihctU/PcGYPYlRDdzjobVhpJw9Act3g4vorIr+Cm
	 ZXplU6qEQIOeDO7OQTzN+XoSoTi3zy+kyPdc4rfGC39FLVWq9ejhwilWiBJmwbH6/K
	 AY8qfWC9HQ0tq0sGex9pjDds6lk4zW2mAt7MuOXXfHe7BPLVFF7DaN9906qOA1Iwte
	 ZlEN6Vl/PAQ/1dcpH6PvMpBJs5sMV76wD5YxsU9kPxhwLHiUxw73tcI8Ous+8FotjS
	 o5ZIh4iaQZB1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F38CC77B7C
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175148999357.2532.3404196431143770629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb7b0d6df66c6ecdf345e4fb7bb073bc4c45ed68b4d52c1c09056fe646781506
Date: Wed, 02 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751489993
