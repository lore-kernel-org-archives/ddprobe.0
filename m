Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292861F4617
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758335994; cv=none; b=ES1NHtRL6DiyxtWly4Wz817Oxvt7liZfc/BvuHYX53ZPhH5+INtP386qT6ALw7bq83+yWZnKsGPiTqfGhCYFQ6vIflygBbvdYjkdbZgbBJ8OtHWFFGOphgdib+hi3hLwYtU4L+e2eocqY85LvoxwItq2aj1ZIt9yvvld6BxmtI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758335994; c=relaxed/simple;
	bh=Dh/pWo5DUj9pZ9Tx3RzPTs0/kyfR2IvC3ny1CP2vAHU=;
	h=To:Subject:From:Message-Id:Date; b=gcYIQJ/pYxjj97FEwt0jOz9VigEQZ1TTSfJb1gYKgKIzYKGuYzop48pVEa1cGo2IQRKpeet75WsbUzOfsxubXLu9dkYjOew1m0na9wyfs53cLJAOkYZ1HxRfeAF/OE6N9NijM99Brw8BKfZDkIiTgNZR51Zniim0XRrErqXdQ9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMd0l7T4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMd0l7T4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52E8C4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758335993;
	bh=Dh/pWo5DUj9pZ9Tx3RzPTs0/kyfR2IvC3ny1CP2vAHU=;
	h=To:Subject:From:Date:From;
	b=lMd0l7T4aAm49dALlhl73vfuh0QXGn373CypNaqFRA0ew/V1IOjThj9fx0eI4gxq7
	 KewAScRCWie4DudPnNQBWQBKfVolIYBqdTHUMKhU/eg5VF4Srko2S47UwjkLAkS6Xh
	 VyqtdxMF0rSwUhSgBSBo4u8g9OesL6W6C6OOCJKcR8NR37hwGOvVkAIY+iTtlk+Ljp
	 x1NLh46HUvwX8BYAPqAqCSkWGHTSaoL9jju5qW06GOqY22AZdT8NWSYk9dAWElF9zb
	 RRPdixhkWObhd/bcOmqBsfboni88GHHYF2P0732OIZSvU2NjSSlBWUYqgDNB0lc2eQ
	 8dGSiYV9QjpeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920B4CAC592
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175833599357.5139.4547584029431319057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab078454e9e7ad9692ac794163c59f02636f8c7146e02acb857f76a1f574e5c0
Date: Sat, 20 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758335993
