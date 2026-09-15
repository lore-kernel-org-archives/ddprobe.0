Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB5F8175A97
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789431034; cv=none; b=GH+nixpcnZB5RhRbXnmsrIZkUbRRK6bpw9bOFXBDEUg06wXp+DCQYzE3wmsJwbEiXTztU5dY4O/dm0bEj9ShaJp+UfUOhK7pxblelOvfi4t+PSAeUF/AG7PDOFn7C06BZ+EifHqjEhom89OAWFOYFvQtQNzijerGSqU1ElE+SjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789431034; c=relaxed/simple;
	bh=QRPn2Pmyk5GwKTlCch68kKXFCi7YcjnWoVzdoaHHbtM=;
	h=To:Subject:From:Message-Id:Date; b=eZBygEvkBlI7rpaPkq+4AxlepDzhYb4+Ig2TwVd6RoFZXXvgxxDeRRGXLMNP87abUXsYryAXWqKgBL7Ecu6goa1vD1rw2O+Fx9OYofO0DfcQNL5QYhjlHwY2zcFpzdkoGHu7NCkg12Ig6tNX6UYRUHdd3AHdRjFN5IsmW8ZaQLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUvLTCeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUvLTCeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D515BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789431033;
	bh=QRPn2Pmyk5GwKTlCch68kKXFCi7YcjnWoVzdoaHHbtM=;
	h=To:Subject:From:Date:From;
	b=bUvLTCeJjk4ralTsoSnj0r6IC246Rf82Inxo9byiF7TQ3gx/TCUrnzVooSfqp2d65
	 Wr71RpVJVx1f7XCyhr8o93E25YMC3H7TUnf5KZN2F3covaKc7zJjN/goMQ2M0eTPZ1
	 i7ARwJgKH2Ddh8KRep8gg9S+wDLfE2CiThnBOskhCkdLzwy65hSw3iToXnEtGsm8SQ
	 gHNCDuRlB/3OYwgNgjXjsrt3pw+oHfdujpNw0HfUzjTNUt6L/ljBq3fUUKl7wXmWTc
	 5llP3u9vu9+g3nfI68ZYsDhMJQQoEKMLQzrPX6jN3HTo1WVIXr1IPcFBbwmc7ODcDZ
	 BCy+uakn6hb0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B169EC88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943103369.10512.9180579917166369989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 915c58532e8cb48f0f2f01c5eb5d28731116ff7f339757b6078f5fb46d393765
Date: Tue, 15 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789431033
