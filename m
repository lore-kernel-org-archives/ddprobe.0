Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E65524397A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766745834; cv=none; b=umn67E+V1epbSz6D6BiDBuZMPjZyOv8zsgQsqTna8EbJCe3GFAY7u1eLM4gN7CXMZGqC5rhv6/abZwpIBZhFTUANM2UzKfl4N0U83K7DlicE0YfSzXDcLzwnKHOlOpclzKrOrhyPAOtZHObgiRJcv7KciD/L4SEtnDFZLycr4V0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766745834; c=relaxed/simple;
	bh=xnR+k78mWrXh0fxZt9t9T8Ct0x4ZbKQnGQWdyl0twJo=;
	h=To:Subject:From:Message-Id:Date; b=odwe6q1gj7PIwc5aZIwSFvsWWazBg+UDicw49iqrerglOhae7Ah97qdx+o4QMTNScIwis+4qVFnxz/pcG7LIRbCSkKEC6Ei2uFkk3jfD9lDpyB1KeEYdm3QrayMMbxte/mku7mRUdgutf5DTMoZ2j6rzjXrSBomW/lRWd8kW0no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfOgcZ3n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfOgcZ3n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CCEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766745833;
	bh=xnR+k78mWrXh0fxZt9t9T8Ct0x4ZbKQnGQWdyl0twJo=;
	h=To:Subject:From:Date:From;
	b=SfOgcZ3nJkeviEFNKV/Z2d0pMup4cKOSt5VTvE0CsB5kWG7KzW/brlBf8c6pxadUB
	 bwYJZPb861f+Mh0REq5QjbBhVFlGuhCpSQOeEd8BHjPBVhKjq5WOq9PoBMTOzlsdLL
	 g4tfW5EDoaS7LtcQIQdbd60b7/Fyt/P5nevqZe6MpjUMrvyND73mV51RJbTm3ThKbA
	 82kIHzOsyrzTrToMyUgxi4ebOk1XgRSlPnEwWSgH9c/tv4wUufjKZlG1507F+TrIL4
	 ijN3K7SdA0dlvkurok4S+KzlrndefrPNa7wL12UFJ712dJE9CCjLIAcVoFTpSQnWgF
	 36ZMC25VzwMUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB5E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674583358.17123.1211520930439368323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb61bfa632e972e3d234aeefce3c2b735f137f8974cabaa989e8f28ceabebd3f
Date: Fri, 26 Dec 2025 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766745833
