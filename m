Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EABE3224
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732934154; cv=none; b=lONeahcs8Zo8C1NQi+FBMQflObyH9+o+XoujXrjhMYHOXT1qUKvXFvsTq8gsQHs8upvgdalczmvDpC7JqEH8aKRYDb+/2QP75j/nZJ5D73a3Cjmq+4h8fVrPs7cWa97kX69ch1/X46vcKCmkTTxBHMOx1TmzF9IoEutoQXtyauw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732934154; c=relaxed/simple;
	bh=1YyavKqJfd/bDuqef5LcmQrYzbJG+3w+DZOnGjuc66Q=;
	h=To:Subject:From:Message-Id:Date; b=DlXHDNhODGG1NS7dMfg8WwlY3tZpUlciPa2OFSt8TdaFpS0uCUORKkGrWRyhxMLFEfPovKPt0UGu14E88ZwWd26A4d90n/f3vP/3Oag4EpKNWiaIPgEh9lQ5+UgiYq9BytHKYIWEk0MNTnraNNWp8kxEe2hwXgQxa63k+bm5AqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pjyi1gnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pjyi1gnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB931C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732934153;
	bh=1YyavKqJfd/bDuqef5LcmQrYzbJG+3w+DZOnGjuc66Q=;
	h=To:Subject:From:Date:From;
	b=Pjyi1gnJyaSP65w9stq71esDXjh6O3Ccx1w0WlrUkM172V6+nugQf+6Qj65sGHNf/
	 QZ0uX1HQ7uvyNG2sLMkx10z5HpMGnlTXuBxacvXwqEETcFeE2iRXI9XIcJFWVln+5T
	 dANs4ERNPXmZCJW8M9AUiO6Fy3Wg1vsqsRKyqyRMzcc3mYPoqYl3Zyjhwz00b8MdDG
	 GxIFKVckSQRY6AFpqlO6vcA2k298TjH+hES5jglBffmzXMfmBnyQ3zZKxR5wvGgLvh
	 wRd1lSRnaP+DnUUYpqRaxs1FyS3wZi0L2U9LGF6K9w93c9rs+V4TribtbAxA4WRoEj
	 dYRJazebb4mwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C500D735EA
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173293415360.15584.12646224230283106496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb454567873beaf7722627cefbe2423bdf44ec8cf2614747d21c9d63f6058705
Date: Sat, 30 Nov 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732934153
