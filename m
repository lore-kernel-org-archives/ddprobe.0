Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D243746C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783953514; cv=none; b=DzUKxKgOqfNNkf3H88+K8CnqKjU5te5KxYN6QDSGelWh+ROCl+7I/0ryajnR7ukGqZAEX9jA8iGxYt/dgUHrjpUhnWwoFu79Dc3wwBgB7jlpgscGZVEV0UuSKnfKuA8fuv12Uj+k9gCmtOGUv1+R9YH6upvGvUorBw0NC1NA1t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783953514; c=relaxed/simple;
	bh=VFDIf6HcVwzgAf2L+zODWkq/9CDynQc7VgjXg59ZmQA=;
	h=To:Subject:From:Message-Id:Date; b=C/RK2yQXhR0s9QWkqCSHKcxqqdZEbbd19YNpdUESxoj6VC4/fTHpHkHtq2/MuXL8WNrLZUBtTSPDXwK0acmLQ3XINq/enQ9fAAbt+fHQIka9doABOxXJ/ydGHcs2twnHbtku5v984EDcc17ibsbjavjgtqZlxE5XIp0WDTZc9OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaMkkOJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaMkkOJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4DFC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783953513;
	bh=VFDIf6HcVwzgAf2L+zODWkq/9CDynQc7VgjXg59ZmQA=;
	h=To:Subject:From:Date:From;
	b=eaMkkOJ+S6rBsK3VQxsbH0HgF/nCgoj2Z+9ahIoE/Az25dE3MxmPLwo5KJizjHnxi
	 US688DfjWv6bKuyUEPg8+h+HZUCs4OOLOITdLk0VwnVHV88ripBSgQtTGU7/NVE/Ed
	 1TVfSdnnSIGVW4YMK3BKFeEloqssFC7tKf9xOW+5Kcf5WMIK1ElUJHPuGWLQkQzCEh
	 PmW/c6baZsPq4+0WrbpMMvDAz9N21AAKW+E9bl8xkodXJ1dlmusFrY1hAK+QS4wbrz
	 Rp8mIVoqWb2/eifkWEdJ3ATCIK7Z1AmHjmqEkhWznATXSlSKNuHSTZJL7JjKcLMXtG
	 LbnXS1EZ6Yc6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB746C44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178395351369.10705.11885840224081893795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42ca3cf848334ce15463e3949372832592b2e6895c5a6590db63e2acc7c3f3c4
Date: Mon, 13 Jul 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783953513
