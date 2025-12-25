Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211621DF256
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766700234; cv=none; b=JpVU0iv24TtJDw0rB3hHempmbDG7Dd4i6rZsCW0OgowybGoFxqFw9aUWYQujliTkbYultRzO3mOj9UmPMu/mMC9amT5HvGu8W424COHOjJOXqYC0m9OS5rMOI68708I/3q/Ym36XjWThQ3eTlrm2Zff5NE3CsZVXWIbsm4rmiIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766700234; c=relaxed/simple;
	bh=dzbn6YHum9kUEMgATfLo5Q47GcAqzFooLa6v2hFRJs4=;
	h=To:Subject:From:Message-Id:Date; b=Xs8H9YzMuN4RMQtVpObJsx15SVYrinFL0BKZjW38qT/GtO0uxA8KbMA8JfLUX7Nvj91oD1oVtAE2skQ8b8UvpGkXMIa94gaU316Jreuj6dlzyd6u1SYeuxYvI7tI6NI1jzQLtqmFygbyTzdqKoAco4+zJcy+rniewlJGw+gM+cA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sOsht6U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sOsht6U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB728C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766700233;
	bh=dzbn6YHum9kUEMgATfLo5Q47GcAqzFooLa6v2hFRJs4=;
	h=To:Subject:From:Date:From;
	b=sOsht6U/yRFe+JU0yTgQtiJtqy/GL18F6oqgJendfsBO7aAzBzzC9fuAIbWkC95ur
	 XonfL5+MYkDkod89YXMC4awOdeldk9tQ2JMsOqZ6QAVBzTfb0YWgDz4Jz+3D72HbNi
	 PQpY/tyXrPbyCghou/31ecZq+NO5A1CVgst7fELfkvxJCh0u5oZj0o+biwlqiI+smb
	 59RN5NjKzVqzZxU5/cKOSWoguOK+PbSjliATeGtuKquHXzlq/znQjSw6EDl/UUcfa1
	 d+ypertcTSNosYeU4HAOfk0s0vtoau4OVpdBHNihwcfXGdf21jQH8d5TkOyvKP0m+K
	 Xdi9hpO5sxeHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A4BE7AD70
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176670023358.12657.18216429823724506688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ac18a8d33c1b07fb8c8fa476a77390dbf545fc086aa008ca8327b092e6734d
Date: Thu, 25 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766700233
