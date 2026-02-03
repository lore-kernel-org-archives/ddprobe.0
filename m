Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D7D263C8F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770158034; cv=none; b=tVmnyKBkds5NeooCGAhtqW3KvnUVYegJUeWw3o9VWle8rnYOrlHqaQjZMFUtuFqek5YtvUbriZqvb0Zy74srL1cJP2Guvad2RjowllmconrnvpcD9AnpjTyHabiw5Uo+pPauS0O/rO0Z8NgMVn9gm/sjQybwssBXiO7vC0lhgn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770158034; c=relaxed/simple;
	bh=x31VbldeD9mJbbDEyLt41lZtFyKreGSWzs+/LDDARLw=;
	h=To:Subject:From:Message-Id:Date; b=pc8jqt4LUyZoYZHCWBnDK6UlSW5i9yRyP+zDt2nixt8GotJRcFKbeO0wrlTOrDzxbfI/fgbh7mf6cKKnLhYzkGnL/H78xysqGD19Lnpho2yqEjNdmW9WsE+IGK7tnA+70U+uEf/XYfsOxXlZVubMGOWi8dNx0XFhQ6H+/9ea+ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bK5HpIfX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bK5HpIfX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770158033;
	bh=x31VbldeD9mJbbDEyLt41lZtFyKreGSWzs+/LDDARLw=;
	h=To:Subject:From:Date:From;
	b=bK5HpIfXGKSbPoQiF8yXSdxnQQwi20XOloovUTiwGZjyNAaLL+I66zhlyZWqX4e3b
	 BjN4O/pfLpqvZbQsduNzWXiw6V7/i79k9HJTcFsHMkV+T0GgulfFuF1GBmZuWM2Zm/
	 1jhPM1h7aMIjTrcgz/xliyI9lUQ9ZpX+lJ0k1uxdEKDkxa9T1cVCVQbdmyz90Mtl9a
	 x1xiW8toNKpFBI0knbK5k8oQ6wRULQuAPgODSuvuyzOZZPF8oC+ZQnFgnuazD/jOms
	 oRpLX/aKhJQG9bE1sm7jMNfi650/WugRTu5DA7gG79wzyG3qKGf/yyFAB6mUcUCOuX
	 S28hB9NXwlUDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987A1E8B36D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015803360.22005.7512860284837364575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 318593bcdcf1fc265f92d16b914aeb486d8c98ffa210eeabd0b22eec8632af2c
Date: Tue, 03 Feb 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770158033
