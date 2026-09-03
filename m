Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84F241CB47
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788431434; cv=none; b=MxxGJ3oRZIJvPVn4BNV3jDaaOpcMnDlyfWLx56gLCwJFkMQPo9ULaw5nLzaFFGWrZST+vjR+1eGi6fFRX6YcRL4rV5eEfvX6u2gLKcKWnzOKmopsxjxk6ZdA4ZJKh/KG0ulrjUJ7K3HkXqkQ3cmcdfJYx2XznZO5VzOwy2AW/GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788431434; c=relaxed/simple;
	bh=DbDn5MwpLKZpuFhFqrp3aZnHKdZFllOVwcN2F1iCic0=;
	h=To:Subject:From:Message-Id:Date; b=huqP4OmgO+rlaY8tDtqUB9ae3IghICprw2/WDMIs4rYi4+lFsPk/oIJ517FrC6SdDMAlpYqfomIQoGlOKLe37KA4pwBMEhzkaC9K30t4YX1YhC7/nzqtm2ldg/C/V+l1+tFiJl9qVRYYK/6visr3Ce5F6Bl0INE2FxWiNpDrVGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfSS5POQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfSS5POQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D152EC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788431433;
	bh=DbDn5MwpLKZpuFhFqrp3aZnHKdZFllOVwcN2F1iCic0=;
	h=To:Subject:From:Date:From;
	b=dfSS5POQNyTG8oqFFFqguldPbyO4rzapj24b6ztrF8mVvzAbKK8WXi9B8S5ooBrNU
	 HuYdRLKNX/HISlG4/9+0EHQHv0AJQcGmBQ43AdjVQnH7xpo/c5R4lmrRyjH8obiKj2
	 G/x5dYKbve1lea72OYxZHs6brYbGBmUNwdjcC30JqwCgWiZCIUM5KoqWrQ0NyUkLV+
	 iYDkQ1zzO0fTdF9oy6bHMsVYTm+c/4di++W811u0cX6qmKIWwGjuW7wKYeO5L636rV
	 bjyUGSw898wDO8hC5GvUqsC6cTw7VXVVPMC8TM2Jmq/A14stgfBmJioVwWKBKnVOOR
	 1CgaFKCjRFduQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD148C61DD3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178843143369.21059.7219025558056436066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66aa83849b26dca288326d7f216daf8d97ad2750e6f6c566ac43f82a6f815233
Date: Thu, 03 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788431433
