Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17D567C60
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705449497; cv=none; b=YkvCVLrmYMoXnMtOCXUgvX3bBBXvZOhH1qOx1iz0yNFUxzgcSE7B23ovm5Piu2Cd2xy73g0PrcztlGk3MP0HZiHMjce7jqDMI7cfB/SJ9CJelQZzSYYO3VcDiNIvcXlYT6DUcD5cOzl9HJ/hOh9yJlnuE2VpauUWdbzbXQa7wfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705449497; c=relaxed/simple;
	bh=CqhC7MwqMJzVxuVu3LB00POOr7VLkM9TGdFWCFCGHCs=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=bgFuMQpUnZhyeSQF2M6FvWa9wsh5tSk4Tu5gMh3T1cV48Kd2wJpyXfBR0RvBrHjK1e+qygWF+Ogc/pHhIuedaNxYnjS0cRNPAeKHuXt/oYlF5828z/kMIVDoYW9yN03wGo+aYrNpZRU3osfP8JvbtJTObjXjpiGwSztFEkYV6Ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sq9zQf1A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sq9zQf1A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E90FC433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705449496;
	bh=CqhC7MwqMJzVxuVu3LB00POOr7VLkM9TGdFWCFCGHCs=;
	h=To:Subject:From:Date:From;
	b=sq9zQf1AKhnvj32XOCNNUWWFH++w/eOhCYLUPTMxC7VfdJzA+RKIqQMKD8DTa0li0
	 140D8ALcwp0ovltsYNSXLhS7CQAYmDx7vI/CNK4cARFq6rJ5HrEiRuiRyOb7C1FvQy
	 JiQHa+OgbNoKeITLi5e9uhwQGQpxQwzZEGcI43o6BagtKecqnu9yJULGTJ+XYqAA6k
	 4+rHP7IWfDURiD4gUFWQl7BTk5DQr59BehCUIwaNqiSeFKT1fi+AdJeAmzIeGd4QtZ
	 xvcIk/bgjz6pGgGk7NCe3EnOvXAy36sZXSg9tomCacYGaUZR64r+MzCbNhSxZz/L/a
	 OJIVKuyx3F5KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6001BC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 23:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170544949637.22431.17343154429872414742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0717eaae3d24bcac8e7124a727c305000c249cb34fc46030bd238cb1564257e
Date: Tue, 16 Jan 2024 23:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705449496
