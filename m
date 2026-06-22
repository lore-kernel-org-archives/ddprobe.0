Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F5E3CAE9B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782144394; cv=none; b=kqZtWbVd/VE3EeZ5U6JkAn3H0rh0Y6V1eJx1rqixxjhiZp4YbvsG3xXMGZzNwp75EB2cP1widbof1jx/5KeF5JEYkyXHgIRN9vyWMboMDPg94AukYfFyIvFn5YdWPjOalVnPT0wB2603EaT9o/otKMUeM6vk9DkPLhv0wQDeUss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782144394; c=relaxed/simple;
	bh=KduFsQI78JXU0lUuZxvGAe5Don7LPz6G1Gfi1jjQuE4=;
	h=To:Subject:From:Message-Id:Date; b=q28/mF0es21Xv+FGeKhKkRUbbKhBwRsOQGieuv3f7l4IUJpc3Qp3dIOTuSDxMTM2CoMN0TQzImuZMudtRklZQ2txEEbrfZOxSb/7jlLNR2h/QgveRdOwokzbGDQSUw2iT4rwSZB++8fPwrIyp5FYHP+o5gExbpfhb5/j9tsg1AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buniebX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buniebX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C875FC2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782144393;
	bh=KduFsQI78JXU0lUuZxvGAe5Don7LPz6G1Gfi1jjQuE4=;
	h=To:Subject:From:Date:From;
	b=buniebX3UljHfTza0Kr4lfzPv7eU+peQGhKCkQ2PDhABiVTeVdGpRzwIUB5aWUlXN
	 VRhrxOP4GeL92p0Q8wuc6ZCpyUV2FNn3jssAlaXFhSsw+/TqkEjTOlk/VOTRtsl3ft
	 0rK25q8VVaYDUBq+K1445Y/4z7qGeziRgOJq9nVdRSDnwJ8QARRI0D0lGWJZRfOWOZ
	 RCrxx/0yGYLwivOk1zy77NlkjwdGk80CPteV4uD3PIMDB0zTs0/e2s1dOk7/5rxOks
	 bW89srE9OV3BFbvw8zb0OMOztJ3naIkW8G1EutLP8J3vYYJvXT07gp563BLEIc9nZz
	 CDcjo63e1bLHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45DCDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178214439368.17743.3669332657449521162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4dd802b131d639cf0bf00fa7d3622159369887bfa0507ea18a4a2f41e51a968
Date: Mon, 22 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782144393
