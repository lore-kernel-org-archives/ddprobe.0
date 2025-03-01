Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529DF184524
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740824934; cv=none; b=GU42trjq6AO234r+qkBMHBFG7eMijvNriZe4OToGRoXm8uiEvkAKUlITu5ap3gVHhkGSpltEJAowxhnoJOzk+poB7fVbN0fMY0WMFwUGA+dUskW0Dblq0QxK1P08VNZmoHw7S9ZrL7NmyB+MWsTyMI90jnkS1oDxJENHPMkiLis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740824934; c=relaxed/simple;
	bh=x1oF+mk/8AEGhNbGgA314c6RdKBFbUozZoTgBAqi3gM=;
	h=To:Subject:From:Message-Id:Date; b=qSD9W1mvJZhm5196NFimlWLQVodiJ8d1yjQBT6ZRoTQL9ln2VNy3hz4aHppuaALL2aJxPGtTi7+NF2hjIzQzhuYtUprefUvf7p5GwhLUoH17WtntUA77Q8kz79H0A0NbKpPst5OVoLnrO0sk9PWjlD88dSCmKtlB6Oddg19OXbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKc4IAt8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKc4IAt8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86B9C4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740824933;
	bh=x1oF+mk/8AEGhNbGgA314c6RdKBFbUozZoTgBAqi3gM=;
	h=To:Subject:From:Date:From;
	b=WKc4IAt8y6kY2K7OoCSbijkQihml7cqq7wOpGe2NhwWjJsiLi2kIOS3S4mlF0q4VJ
	 hDvW94bK2XfOzoLmKhKB6XgfGBtjVRlfFpy/1keQrle+nJK6MMpPxtmTep/F2Mmw7x
	 j0KvUals5jwGgReV9Ypo8Qo0fat8CTtyyYmedh3PHftJ8+c0KVlfHt+PWdRxx/Coz+
	 HwYfZVTQmsp1xb7i/ZKc7KXSMjgSEHdLSR9NFWtOpY88/ZXt48PwPm0k8rfrn0u0Z5
	 W2MXVj3y83+67WD9SvZ5MMxYx/zt67nybOhjL9lkBOeoq8/meFL0fBOYtClzEFi+XX
	 FabMcSYRDgxbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6DDC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082493359.14175.4379672315963654512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f16c898417936e2606d74da5ae0426acd100fee07fa42261ce77e863642caa8
Date: Sat, 01 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740824933
