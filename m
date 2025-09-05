Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 003E22F7ABF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757089194; cv=none; b=GnMEpZQGMsYYpfSji5429qkgbM/BPzHo+Q/Fkvo/EfncjIVq5YkaWKr+frvsGKmA7ApsTmQbKkL6iiJUmFNBw5r005m+dr5/EYkRluOLzRDhdq0RgFtBswSO6V3V5btXcHBqDM0DRbMNmmAHQTh1KewYVvl3ri7JJ3BaIet4k2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757089194; c=relaxed/simple;
	bh=wdhJtl6YYJ60Piw1h3MlCfNewuv+L75w2UfJOwsMNCI=;
	h=To:Subject:From:Message-Id:Date; b=q9R5aJk1WqNZAIpCa+IM9pWkmwOs7UsthAZBRLFzYylR9dMGHVRl46O1fFsJeC2OeJc+qaGsVuJMzOn6LyJ6dZWYSkIrimT5v9Mpjba+yfq6vaX/5SH7wR5X9na6klOU9OJ879mTa9G8/0ldh7gMnJEXJ7JndwCFI7ivR8Kf2ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwcO2lj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwcO2lj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F15C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757089193;
	bh=wdhJtl6YYJ60Piw1h3MlCfNewuv+L75w2UfJOwsMNCI=;
	h=To:Subject:From:Date:From;
	b=WwcO2lj3QK7oXDhX/oA3+H9hYA3YnEz/YXlqjtFpv2jhfCa4HFyabZYdUWtbIUFTu
	 P9R1EWC1UF8tAa5MfGOmPuuL2guYotSVLC2Ax74vi6XTgcl4GnYogq7wuVwF5D9RV7
	 8e2NYDxqcb6oBJ+gaOgTmus5Up1ByehZTIJ4pNSTrZuYWzyOd7LqxPNnl+5i33VgVF
	 /DnhEA6V7dplAq79JQ7Rdtt6L31rfz7XFEBOqYBO0jO/tgknTkJVAwgfaexSbb/Bhs
	 w+9u0kX+mugnH8xSem383wDagTfIIveUP6WkQ0wV3AAYhoGP4DX2Y7hnRFMZjuZJpZ
	 iGdlzkSeqkZQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906B0CA1010
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175708919358.7964.17860821557728460628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3eb995d22c10aecbc1bdae68dfd45a9a05090af3dd25ebfec137af34d71d01
Date: Fri, 05 Sep 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757089193
