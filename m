Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC2C6DD0D
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714939343; cv=none; b=X8VAP+Sc/+I2bMy+ozXWrSfzXd12tKIr/EvRrGb2IhytW3GccBAwS1P5eroO+KesEQRyLSx235/F+QHXz5zn6pDAdRrreVO76tW5eFnfqnrS+EkwLbe8lB92PoavwFAkQ4JUixW2vF5kdEbaxw9FPjflrD2aQjYziMJnqaUahlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714939343; c=relaxed/simple;
	bh=8Hezl5UTwnScXg0MWC33w3KuO7dF3+9LXv5ozMqTexs=;
	h=To:Subject:From:Message-Id:Date; b=raqPdR6iyfi40AqyuATx9VHzg/ueeBVC53gFbP9WBwCau13Pw6S48mJw8g7kg8hU9F1dMi+pHZXRa2Z4W03Xuxu/lHqydJlyyqxPh+M+z+sSdV7RMfE1Fz6bnB6lJa1lB5pYWsrEtZvdTk4jlLm8sYm9qASktbPCkvrnpLci9vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxfgxUjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxfgxUjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE39C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714939342;
	bh=8Hezl5UTwnScXg0MWC33w3KuO7dF3+9LXv5ozMqTexs=;
	h=To:Subject:From:Date:From;
	b=hxfgxUjGMQRyN8G/Umzk7OH8Yjdfh3IPhJHam+XGknxnrswwwjtfRb0KzkLtb6VN9
	 LgYNw9/WKlkv+t2WMlGDd7xbqfQMs17ppU0tR2/86fSzeFNLdLbZUvLdsND/o1yowM
	 GuMiwnftASoeawqKw2NoGSznWXjI5xPOrLvk5L9TK2UThxZIGZxZSKamWzdiYQ884C
	 CsdBF9ADBPWY5vnoIiO3Y30jaAwQHKsXHzO9/rdurw5E5dAnlutglqhGAqJkrCJbx3
	 rZCCyfdbLu5Xw9anf7+gSveFtCHlPbXxRf6pzoV3h26I2vAlvimMpbszBiSZTqtwOZ
	 JuPP0Avpysrxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CE2C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493934277.4171.3686496641860087100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0994a16228f44f77a66460f718c77105ad08fbaea9b78383c4af9597540bd37a
Date: Sun, 05 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714939342
