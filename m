Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C723B47F0
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783072714; cv=none; b=TKDu+dIVtKgRZLLY0vnNtPv6IvPLHKhYsIfffZVD5IEQ3UbJLCQZ8zkCCmUmE77+iDQrwkj2+KdtLBUNSu3qUyLBGi0FArfOY7l+Of2l04V9N9D7Z7wHw7ubBUJ6aAnxi6A8pjPrfQggHJ28YIow9J+uwiAn2vC4IaepvwOuEXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783072714; c=relaxed/simple;
	bh=1E1vFCrOi9yxjpB8IjbKNKc5hTsLSxrwSPP1WQE/tnE=;
	h=To:Subject:From:Message-Id:Date; b=GwGlNmrhoYtVLq39yeoWD1PQiOZWmVSliOhA80fwlUCRHTO5FSz84GuULdckj0DmZ7O+ZOFGe1eZWUJp3xzy8QzHB9HefT2Iis3CFB1DiRKkkhD8iIrh7tAMj7xY1YzMoIedEXa2vam82zVOr0302R5tPak2iHdVAIbJDEgCzhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b98NlcDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b98NlcDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1008C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783072713;
	bh=1E1vFCrOi9yxjpB8IjbKNKc5hTsLSxrwSPP1WQE/tnE=;
	h=To:Subject:From:Date:From;
	b=b98NlcDoPKQnnw+ZWMwwB8uXJd+0PE8WaOzf3zD4pcXOuJQrQEOxgVLl2GdGyLBE4
	 LO23TY8fz4Ef3F6g4447FHYBzSGHrBeDp8XbVfAapZqVpvKBYNBZTSkAwrrQbGAXKt
	 tTweGtV0m8jlfEPnk6sBeDJpeGcIv0KKs2sGRUkFeLslImWHJXSao+nyThPTQNEb3h
	 dV1OqPdvKOUhCiRWiApHRHrgmB0/3ooucP4/Tdjxj8VZqZwTf7naMnSmolLmlkjJq1
	 zqfSezUyxjVQVoXePOVllzRMSpz3VUY0/JanDOEbw4mT+8GWv2r3yWoc3EqDzTRXyF
	 5uwxINVCAvQ3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD99BC43602
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178307271370.8338.4774523819323294384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23666f392ff4022d6ed50f86a625d0496d9b945768c655b49eab8160ce236ada
Date: Fri, 03 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783072713
