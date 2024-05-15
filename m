Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436034CB55
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715764343; cv=none; b=YrEL0mMgodbIyVaJwFHmMsK3BMv1N6wSodFPiT8q56eNkHCth+30kMSLOsjgIi9qdIczoYU0BJhnZX9xuvgo9UKs33Mk5XKbmFX0Vn/L6gToX+WWmcFHwl0+51BW9D/xXD10jGqrSjW+vALzLdjSTA7v70mW54Cc1WRUayrccJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715764343; c=relaxed/simple;
	bh=Y3spAvDsV7eJlgvnifJbi6zaN41DqdK2eVRn9n4u2yg=;
	h=To:Subject:From:Message-Id:Date; b=UxZmikTtVduLutaUWn9wA9IdTt0S842uM1755FiJ8ByKhZZYCda0sPWR/qmBpXre+MkDlRgtQK/Ha0Ya9Xikx1zHH9bDrEXuxo9SZ7q3j/aFc0ffbNHmHHXoAtY+3LR34S8ZwL6BP+KASc8JZeSvWCh7uUcfvromVBoNuIGs2OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=td5RvIVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="td5RvIVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D7FC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715764342;
	bh=Y3spAvDsV7eJlgvnifJbi6zaN41DqdK2eVRn9n4u2yg=;
	h=To:Subject:From:Date:From;
	b=td5RvIVbz7Id+NGo8E41Gdg/fprxrEq0ykiTVn7l/p6hRZOho4Wdimkctwyg66Cg5
	 deqmLdIUTrs5gMpnnNjKrT4mxcKKVMtjSUNhgJJsMSO0Pxsr72WWp1ERGhNbyFZfFU
	 +dKh52l/dJ1t2sIkoE9MO1bs5xA/V8SDMAXxb8CWglERaTBemkOLPviP7+2XdG7La5
	 yB61tdVkEdM8M8HoJfg4/cEo/L3zLCdJYcEYplnL8uwwjjuEJ5+ugWFc8TwMWV34nb
	 ywgr5LBUFrjvTxwUk5eCWLZXZ/Zx/TIgRz2acXHOjPhCW6AlNkbhd2H3le9peph0g6
	 +22E6NI8J7O5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58E7C25B77
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171576434279.29106.4292750245832078256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52f173457ddec4946218804184610253718615db0fae6546db6762f1da0494df
Date: Wed, 15 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715764342
