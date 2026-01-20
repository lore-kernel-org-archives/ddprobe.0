Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE84BA21
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768912433; cv=none; b=hOiOVQ7EnevXQjKvmKzQHeB2z+2XuFY6LJYrT/WInb42H4UFPZi5DgFC5XbPf28eNKLCQ3MVMMSPc7YXuCCkQ2I0hI0fc9rUVUtkYH/xRcVn1aZRTcEschVohHO0ZcRDrlRFQq4kCQqHSZjSHdyMGr+MRXDH7+oBhcyuRYwmcLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768912433; c=relaxed/simple;
	bh=tjIt+g1ki9/sfiWjIMkEBZiN6KXOGzmmrqp6axvQx8s=;
	h=To:Subject:From:Message-Id:Date; b=N9RictJi9JloygmkfEWHWkGgE40v65qUqqZYqCnk6VRNrqeu8zgn72O066oWjaL8poLRX9mMjoLYvyPrPB2+i9ILJYXS2gArhdjl4esbHQtkRWdXjjIeVBGcx6pv4m8D9TDkMaab4UGfHRhea4Vo/LZVkFH67c9zZynVUVln+p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKLrx3tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKLrx3tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0131C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768912433;
	bh=tjIt+g1ki9/sfiWjIMkEBZiN6KXOGzmmrqp6axvQx8s=;
	h=To:Subject:From:Date:From;
	b=dKLrx3tWNXeWDjmBft3lZtjIfeuOzdoV7/G+ENnlEZspM2/w3comweFFY/7lUyz8u
	 g5DejsCX8tFw2QLt31Aip5LerTOhynx/nhUcJRP4i9M+vkHSGtiCIQz/OvIx5UTxKu
	 7xKi2kxRgj/2mN+ryaZmLz4Z1DH4S/24cYhB9mkGDhYwB5uoZA5Isbu0TJRFduFjv7
	 DTgJRnkbw2nWf6sT0RFus/r865IIEiSe22eg5cyMWFm6h10CCc78240jZQw4bFgU5s
	 jlF5glQkK6v6OkdXLDvRp9wnitQKAMMDkHhaoOp7co7XPZz3CRm60vEETpFg8SxBj4
	 T3LTgGxYljpOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92883D2ECF7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 12:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176891243358.1483.10240360112509863831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44b749a4dbd8d0066b01dec22c04083d8985130fe85346f837ed84b31dd6c22
Date: Tue, 20 Jan 2026 12:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768912433
