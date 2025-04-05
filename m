Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50481189F57
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743872394; cv=none; b=JYnDPTYCa0akEHkqsR6YaUJqzIAAIAUWfxLs8GuO1RThnkn1IlomrcfRuOXPYhdKHhyr2qh0oNorhYJiPDd52aEohkDYYcK0+fHcd8D1Eq3VDcmgjmwvs4zSAP5JdaO21qmqp5aTxOlwxfufjEdy8bfZUwSgfzYssB8DitRP4SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743872394; c=relaxed/simple;
	bh=txHdnWdQ+NzVBV/9w6RVk6lqKUpOMldXshf+MbqWEMM=;
	h=To:Subject:From:Message-Id:Date; b=HfhMRt43EC1TwmYkreth9tgoES7GzDQ0RqphKzyJ1pVJloVgP+qld5uwYMPCX9jAraUMhvid2u0lOXjYfK5qaua0a0gdWxeKwlKqhf/anXSzPINcgj1MxKoOVjljye6XAxZD8hY8oyuPqXoIjbDqKhfqurfMxzcrG/itrVVt5dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rMYQLxhU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rMYQLxhU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E3DC4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743872393;
	bh=txHdnWdQ+NzVBV/9w6RVk6lqKUpOMldXshf+MbqWEMM=;
	h=To:Subject:From:Date:From;
	b=rMYQLxhUECuEqNrMGUPY3Rkrot9aQtXusy8PSllwb/KXiZV7HTkmSupAVVD8rZGyx
	 wlzRs5y3O2BK4ergw9wIbGlUqQ91wt23DwFIBNgmV5EphvmJqcNyO/mpWZoO3UFgSG
	 ZBJ3pWNkej7UaFcvuKo6M2wA1akCqB27zYquDFlZTusXnLIJfzmXD/QOFptq6ZMIn0
	 7GL7hP3IzhTeZzWqzjIDODnffn1ISTiL9AUhUey6/srsvjyPtkgjlSypIa9ocVS4E5
	 MQDj0kNOEr08yMB65ZWOsEHsBmhWdewkvSld0HJ/Zs/P+mIhCB+fnEjo0rs0bW8rZW
	 MqO346H/Xeuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2CDC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174387239362.28484.14403707694293748569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54d602a868dce4200f0a8cf6072ef54f59954cc1e2d1d3c740ea8c35dcb55634
Date: Sat, 05 Apr 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743872393
