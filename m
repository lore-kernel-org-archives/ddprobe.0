Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96C422EEE86
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783147114; cv=none; b=Hqz3RwzA/CMss78KJD4fHz6fVkjGeXYNwORBWPW+NGfSRQ0956NgmLqolroRm18buSgKeSj7VzHHG2R7ugJLUi6fBLw8Exhn7ljNL3rpBGzywXOxlDDTdgBY9X0Hg8mbLbimhszNFxI989md4lH7zJbMOwJMw905FRWxXR1ATuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783147114; c=relaxed/simple;
	bh=d1xwo18egAYReChT/js3YK8rwkmbgoy6UFQq86ERMPE=;
	h=To:Subject:From:Message-Id:Date; b=JZy2KiVn/6swZqj3N6ZMLJx16dv5jsFxJPDeccB/E6HnjkUiUme+6Ztlagvk7h5UN2dTpFa2li2/Za1osPjd6VUBC8RV5cdJdPqlNK5EBjyJStvn2QbYphmGJpowDw7guzXamIZGeMJrgZIXPyOv0jmOe0BN5YuRq0eEmo3lBmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvqXcCzK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvqXcCzK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB922C2BCC6
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783147113;
	bh=d1xwo18egAYReChT/js3YK8rwkmbgoy6UFQq86ERMPE=;
	h=To:Subject:From:Date:From;
	b=WvqXcCzKKiwtGfo2VMSk44iBoP/4JfXGkVyKYKbuZS8NIkwqh7ajORCz+lc4yYuSV
	 9ynmFQ7haY2QIILHU0ZHOiNxm6D9ys8YBGl5z+wAZbu6Sm0KrJnEmCF/R82Cd0uTPe
	 RSO9/9+mQaebb2MhraEmaY+FyNm5iPjpY4ZCFIQimHwKFAx9Qnmx2aX0Ttpf146ID8
	 d7mm7WOEvdZW4fjqNGuD/nyiS2MUumBJrlaVKXpkT8+xa3SgrDsLeHouW32JIjVK99
	 YopfF/a8eW1/AlDoWx7lj5WtkUgnPxXPEH8cywNAQADayXFWBIceOQwT+qr26YyDyH
	 jGOVZ9sfEEdTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1D9C43602
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178314711368.26971.16023255532924390159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a133b8e21713bf5fc9acba10054e61250a8ef9ce76967717cc164e140cf7c83
Date: Sat, 04 Jul 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783147113
