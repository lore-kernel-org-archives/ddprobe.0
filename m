Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A91245005
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788843634; cv=none; b=W3CsgyYlFFwSewavu9MZVXVjeWVQ7C4y9kaPkcl9ZuC3hRsoq+8/OhTp8L4jskica8y/9S4AV42TDtid8Guu91Kq5y6unpZWN/gM8QKR4oq5riWvvx2RA/7nqEaw3AF/8ISwOmqpeKCRqizitXTOxTRrow+GCxPrz3pptl9kRlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788843634; c=relaxed/simple;
	bh=bzTjKPjHJKkHpvf+TItFd9/97AzL8UFB0lJH8RLgDMU=;
	h=To:Subject:From:Message-Id:Date; b=Kc5DeCHddXOZwv144u1YG856cHaxNAINSD7hJ/ZwkR+32aQqSBqNtxhttLFfCQq7bDLevouTp9QnHbPlh93yqvdNenAl2+C2KQCdFNN4oO+9chvHfB/spVsX3KsObk6iruY3k8aQN8kIw4byGd7HotxLeSpDDJH2Br2z8VGu6E0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUmKYQAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUmKYQAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA98C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788843633;
	bh=bzTjKPjHJKkHpvf+TItFd9/97AzL8UFB0lJH8RLgDMU=;
	h=To:Subject:From:Date:From;
	b=GUmKYQAkaiVp+cEoxIH/ULHvT7KS5xDzaIn9COOFEuMJWFPiYSvL7CY8Q7sBzuebv
	 6zoL1CzQyssO03SNgtchoHoyeWER5Tt7pudvrPbc/fDXxNvy5mvVU4EU3KUb1AuqH6
	 Z7hWJoemOft6hvfD06HWH6LEJ0s3hkMhkRD/MgyKhiz42sZCg0LGjwZUl/utT04rZa
	 xAov20rp5uU/vExcTqxcOtMK0AHgh/K6UT0VyCJE0OZ6LIxTTM7lOHb881pbZuHFLy
	 bpsDALhqBPyADpHeim+kKpWWGJXSTejY7tJt7WdRkV6LxV39IhzZEjLzaI9GtXTOh8
	 VeDf047pBENfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8079C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884363372.29128.17661274503932971691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d257dee12b90f38fc037adc10f626cfe5f7e91aa1d0428597d007edc9d298d2
Date: Tue, 08 Sep 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788843633
