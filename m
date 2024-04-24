Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F45523CB
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713934223; cv=none; b=bbqy47u099FekcYBFj2Eq2LKY46V02nTZ8ciuWOB7XRq8pILAJrbZW9WeHybVj3EU8GcJsqAEhkvsPpsvw8LnN0kNFeMJb8jkkWH5Kz8gXUD8DRbA7Qz/4I2exDe9w5buYt+sZxZsGLKp0v8CAuaxDvBi6XZYyoMY1Td4ziTJPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713934223; c=relaxed/simple;
	bh=z7clI/acbLKp1VPRgeK6NStOcTPNEp2od+Z6CIRqZBE=;
	h=To:Subject:From:Message-Id:Date; b=RlrGlCV2GjHmhQO7IPmW8Cu0praEJo9PU2lxskzyijVcAan4teArhEDHV5Aesq9NpZe9pc8LCWsBBKRsgfujMDOqHQgyvkk9gvt4tr/ypSZcAxVoi+Ftrrt6RXpN/1VkCi9N6hjLqfBNTpg7kkkNnd/jaz4FiDCYBFRVqUb+8/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SSMNuCsE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SSMNuCsE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8BC1C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713934222;
	bh=z7clI/acbLKp1VPRgeK6NStOcTPNEp2od+Z6CIRqZBE=;
	h=To:Subject:From:Date:From;
	b=SSMNuCsEfkmfM3rW7u9k7T5BGtY57+w/9C8sRSDi1hOCbcorHXgQW1ozci5cky2Je
	 PP/qRyQo7Fn1fShWcqCcQ3LmzfsgsUAzgoVhL1xAB0srY8y6o8IneGsu9MLOBSc21T
	 VJqLD7XFrVfgp/MWDDEzO4r9e/mxdGhJvIUqjhkrVG5rksEczXuFcFB7f6a0awExbS
	 BHJZ3MERgL8KE1X4OlDh894Oux7sZr916Huo3eNa6tnx/jKp1/js3K7Qdv8KgXXpic
	 wWs9fhI53GubIl89CIxb5OOt3ZL2rBmra1X/O4SziVjIqE/OAdGSDLF7Acw3r7ibIU
	 Q5QsKsJ+/2Y6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB0EEC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 04:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171393422280.24941.5317782018481069936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aae1f069537e1a1fefe6c91fbb560bde4d8b7252fbcd69cbf8807b03fb94e4ab
Date: Wed, 24 Apr 2024 04:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713934222
