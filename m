Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5250D3CE4A3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784536114; cv=none; b=rzOnABfZvO16JAaNBn50eS09q38UW2jo+bI8c66VahD04QsWwiKKmtADw/ADua2Q60qALiS20Fv9WWjjXXagVyGJ32MGk8PTq6blnQfVCcW/g2Q6iuTcv0y+VOsf/DsvnRuKt1sybWpWe+/hQt07QrlX9WzgOySgAhMmjgRRAmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784536114; c=relaxed/simple;
	bh=MFu6smhPo1cpDmaO8dfoLchKh19a96LV+sEyIurI1v8=;
	h=To:Subject:From:Message-Id:Date; b=B/6zUb1+cCPbQMrj0n6cbZ4ZjVtH8+vjZ6lalDWYDK9arFG/ogNAeN7keO9UGG21ZEl712JMj2DDLM9sZMv2OFzwBurnp1vIAhqD/3Zi/BsJW4wExu/mtNhSWBjLL0g+yULw/XyLjMbqobNvIvz41fP/1UQcCL/uNuTUcwvDc6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTcnZczk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTcnZczk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCC1DC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784536113;
	bh=MFu6smhPo1cpDmaO8dfoLchKh19a96LV+sEyIurI1v8=;
	h=To:Subject:From:Date:From;
	b=MTcnZczkXyT2LtPaV8d+FRbT22eQG+7eIMs0TX1QVi8ixlAACM5YgS1mrYTt2Ly7j
	 /nBkRwV5tRZzMzmzCqxrZpPTpunTXvaDUH7unCqytr+uA3ey3NppJxCW7B2TYfu9S9
	 xrKhK3LIzzGkIHdxO+rjZUu/Z6b3C3Yql1zQF84oCYpf4cRQ9JS9FZYUPMYa9P/l7F
	 hHtLZxAZ173CNd8ObCV26ipc1KJvN6uuUKOhUcjAjXRh3eNz8gyoQO/IPyXdnc4ZlW
	 0Pm5t8Rdsl6RSmoxvDN8Ks7LHLLD0lgjtNE8DHlSxD34bOvYm9zRrrRIYC1v/prh3+
	 0deRjNseSwnpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB274C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178453611369.18833.7366801888350708526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc550aa9735b1eec59555caec1ca1842caa944ff951f51256f82a1ab166921a5
Date: Mon, 20 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784536113
