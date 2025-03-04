Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D479149C7D
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741066134; cv=none; b=BMEwh8UkhHfT2NZ0nbvVbowbY24EjYImSn/Sd4GQmW1Un5qvv7mz0vZvIHbwkzsREyj4m+eUPKsQRqyqnveNhbuZ5hYB8uyfFBqgBzLIDS0SKcIok19FQSHa/bMpndF8aJwgL+0W9sM7KkfsNuDG2dh59kv+vtJ8Rhkfqu3eoow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741066134; c=relaxed/simple;
	bh=serjkzbGE4ar9wUYWMBlJkGtFm5Z9NoEKeav1r9tPMg=;
	h=To:Subject:From:Message-Id:Date; b=IZ95grlm5nz+ZNkrj3AxQfCzjUZMwbE5kS6DuBfvGakJ4XDvETKRUp/WNZTcfi1XFhhUzwnWspjVhyuhbHRTdzkhFRxIkJv8wEayuU9M1RkudpUhx7lS3N3MASiieeyI5D8qLu8Dumknro7zZa4GBizZTmGGhnba8ZEjyxQiwWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJ2B/0+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJ2B/0+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86F2C4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741066133;
	bh=serjkzbGE4ar9wUYWMBlJkGtFm5Z9NoEKeav1r9tPMg=;
	h=To:Subject:From:Date:From;
	b=IJ2B/0+rrcNops5sNBk12oXsa6lfqbiRpb/e4+M3ZETxaz86Hiym/pIbur7R4/bzv
	 chhXoyGvR6NwAxs9yLEEcodOX1r9jTFAVayoB4TuDHWk8eyEWMH6d6bpo8Dcgh6WiW
	 GGqAKiUaQGFjjL0aSwk8OjmZrf8zcwELdmGikfByPaMgHThYX4FaXJ7ADuXPK9IdfY
	 2dlK2oe8TiUxGep6ifzSWMd5o4bwSecgOekFA/lqplPDk0+QL7I3y2D4O+ZfipsPBs
	 c+OAENORKC3KxqCgrRIUieg5rlm2KFw8UqWrgRWuzW5iYK6O68BegjpqLhYzYbFrVb
	 VbOzeJS2ZgHpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD6BC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 05:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174106613363.3842.8334850650364196697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7835d1b4f126ea1fa1d567adea1895538bc9a8144ec8d38a0a9a0d2f505bc4c
Date: Tue, 04 Mar 2025 05:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741066133
