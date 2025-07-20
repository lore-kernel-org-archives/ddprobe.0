Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2238BB661
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753028995; cv=none; b=SDuTfea115Carwo3TfhIqc3JqzOnuqAFVTtQ7TgZAqFI5RCLhUe7CTFpd301+awqu8YP2zXg392SWLA4A0gx5D8LDyAJOb6MNesEIoRo9h4x6YbTbGB8NBdVoTT0RRD19tYI5jKBlpRWnU+4yNRL+P4sG9FRFhjHliD2G8giaVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753028995; c=relaxed/simple;
	bh=/7bVNtB0pfgPRN5+bnt95PvATkrlMhEb5Z9LqVA63nw=;
	h=To:Subject:From:Message-Id:Date; b=M9wq/bc65PvdIiG5DmJtloPVl9eZcCJuy9Ex6XkmqBT4SmquRIQepAMO1zQDFFC8ICX/dsr//tibvhlz/VdNJbsRV1PizNYoJRtWIXLr02Qj3Vw1L/Ip0Vzlb9TY9F9mV+JWxS9LNALZfYol0CTfBRcT0mVoq6tik9lfbiAXj7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ayV6WynX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ayV6WynX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8222C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753028993;
	bh=/7bVNtB0pfgPRN5+bnt95PvATkrlMhEb5Z9LqVA63nw=;
	h=To:Subject:From:Date:From;
	b=ayV6WynXL5ri6ymZz4EhMv4xc1ThJSqaRStKwAY52XEqitbJbkEPYOW7qiKZCqLs9
	 eVWaywn+nw/AihzuDfS9rbNxy/gyZju8EXgkatd5TutEHPVj2DtdkxsuCCV3ezBUNe
	 5O6fbX7VGRrMm7u6yLzdmAey2nB7PcLDsdaZNad3lvWNoOsROVggMKosDvw74g2ZtM
	 KZqztzyMcW3j0bkjYgG5UD2ocXD2w+Z49bGET6FxwVMPCJzyybE8CNTRORIWfHewAX
	 qTAcPRZHsBnNQiIKVwwcoerc1kMVOIlmb33VafQpYpQkeUCZ6lPH7Eg1NQxXpQ+C3p
	 fk9U7AHJE01wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504EC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302899357.2401.10611147083987637224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a897d5d6b5ddd15fd3e2e108a698ed56ec3d3ebbd31282263e74742a6864dd35
Date: Sun, 20 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753028993
