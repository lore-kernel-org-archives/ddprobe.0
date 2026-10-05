Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9F7154425
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791166234; cv=none; b=R5A/7oB7A/obIVKcXFN4asE+Zmhv41f2WExKFJel0AJ6IWOUqWNOeh9GnHXDJz5XWOWIgeKQ3/ZAnbNry3g3guan/2xcBEBA1lQ/QXznkbDQ6gXJlxxomoUk9BGa0myu6wFBm+SBXdvW58X+cYvPgaRRvrNP+mjEJj0NuT/Dimw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791166234; c=relaxed/simple;
	bh=dHjX+AUPjZRI0qIARPYd2vqUB1QY7qUvcUGIMByfraI=;
	h=To:Subject:From:Message-Id:Date; b=iNLvlIJWbo/zGC3IxYQQINdIiCeAVXsr6vqIZCgAzfWwiIQ3TLWIaXYjHBLNa6sAKb56O1itrxyEFRDLIp/fJLV+UHn+NT/Imza/zLTtKOc68lqRwDyDYr5RqSNCAFn5RUnuPgkR3jzL1wz/hDa3YwPAtEMobSWzAf8bOYdMqgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfBSp7uc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfBSp7uc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3177C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791166233;
	bh=dHjX+AUPjZRI0qIARPYd2vqUB1QY7qUvcUGIMByfraI=;
	h=To:Subject:From:Date:From;
	b=MfBSp7ucjvxtbW046zHh3+lp2qxnTzi9hh9xydD5luJ2DKuD4kFCtcUuxOFsfo2uH
	 7Kwv2bWSjRLYmB+sRJdThHZO2i6rp/FObxmr4SwGW2akOoJ9tpIk4331L+F1YHz3L+
	 IsCU47EOo1c+QORqeNqpGrNLii2kKZD0ZB3ZdNVrxqRWtdNUrkVWPED+WdIUtlUG5i
	 0cB+wzDAowaZgZKhx1573P5ozNEGJrrPd0CkI8Rzq2PaVuc+SfkRbUT2WJXxoz0mfI
	 r21AzpMrtIGlMWtLh6WvERagYhVmWkHN8R5VyI9gFSjPsgIgFFXsCtZ3YgytkaT/xG
	 G4oDu+cYimD2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD09ACA5FF1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116623368.17415.496216413371684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c3b71194568290247457ab3336fa66bb439fb9b5bd01dd0bb065e5dd7384338
Date: Mon, 05 Oct 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791166233
