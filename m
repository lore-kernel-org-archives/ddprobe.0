Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5486E81732
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713524963; cv=none; b=c6Jw4+zPfJi5OqmfhqJ9huG5cnsFf0Uv6QO0Oi1zb76I1hDpCFSF/W0twqx8PP3igUC3CO0/3VQkpvrMFA6viEjBbl0WGW5lTXdgo++HPy9Gd3wucWwyCIo/TvrauOg+3qw8KOevUnbfDRihiX2y4bUp4XmyZwJJcdoQgkh7a5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713524963; c=relaxed/simple;
	bh=CINfAJcarnPoAdhIfnZHzzubO8JYK8ivaT1UeaUyJKg=;
	h=To:Subject:From:Message-Id:Date; b=aH4sttfuI9mkulqeGBiWq05LJWebDSwFud8u06SYSJNQLxNYEhf7b+ub1TMUahifeyH/BFR5vjqwikicRqT9uJNHYUmoKc498Da+7XPmOBVjV9Mx7W8usFhMxclMqeI3df2lBgtr/zwa73DuBpfNyR0vM3W+1zsZlvfnx5ts8Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrMWf5cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrMWf5cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5E7C4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713524962;
	bh=CINfAJcarnPoAdhIfnZHzzubO8JYK8ivaT1UeaUyJKg=;
	h=To:Subject:From:Date:From;
	b=RrMWf5cs5jGwzggFLbWsUPL36F0RfNsawfKk3nvMP+KzSaZV1i9W93Ge8ZyWH/M8t
	 GEsSFWsoXqJOk60mrvHCHeNNVvkwuaMQbrcHnJSQA7eTesJIa3uZmrbiivFZQFm0XA
	 yRt9SP6jmiRw52UfIqQ71Q+jqd0gABilG5UqPQkAEHd4o3SSyup8+pm+0YzecmgXqk
	 9bQfEZO1TTjc50XY2NvPBnP9fJwL5sWiUvSSu0Oi9YXTBBiYmjoiWxo8nma8YYom3m
	 rhCoZN4K4HCF/gnGZx7fg6IH9IMPeQFF0RQys7UKibOaDLy+tpydLAAPoJf/Z66wEV
	 ErEszAmPjBE7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDED0C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 11:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352496276.9250.16593614712750041269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bb611c9df69fd91d87cda418c448717cad4d6e163ce8f9f2a403dba9edfd6cc
Date: Fri, 19 Apr 2024 11:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713524962
