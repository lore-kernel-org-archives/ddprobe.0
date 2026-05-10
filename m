Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80BB5258CD0
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778386834; cv=none; b=Hb2nzMApD8eoKEJYVT005JQYtYAbsVjfmu+xe0sY2R3n9gIwsn6xPlKlRbvgF3bYlfEC+J4qUZqEDs0U9M3GH4PuEkI5e5fhRvrT69YgatN6QPaILSYGpO5fAUqwKY6QM83byVm/+eWisPbCFd0/SOntXCtW72ERqblf2tcQSIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778386834; c=relaxed/simple;
	bh=vH+iz+mIu5lWyFwoMRqR4bYWGL0W9HiRGcr41C1Bazc=;
	h=To:Subject:From:Message-Id:Date; b=h0hO/F5sC4fdldEFOJUTDkK6jr+n85A6LREmrv69WZFwh8fbw6ipjIUSUV4AqzOQC/mscMisZNQMkZKLydC0yXZFsJRdHqGBq9O4SwJE2J15lwwWEoIk+pMFS87fW1J/v4Xpq69iVRz0pez2sHwuBxyzMeLoKoC5mT//dWavqHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEZbJ1TF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEZbJ1TF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2B64CC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778386834;
	bh=vH+iz+mIu5lWyFwoMRqR4bYWGL0W9HiRGcr41C1Bazc=;
	h=To:Subject:From:Date:From;
	b=jEZbJ1TFwGFYfcxlMYe2OoRjOENksoqT74/Pay3TKIArh579jAjID3iTdwwwp/2Qb
	 gOpIZMmyRzEkv8rz6aStUS3YGWlcZknptd7IBlTiImMqb7xP9mY+lFiDgQakRgWfbe
	 fDpFPxTH7LvUb/v0tFLfl5znkavkRdsSlj7gTUsHufgcS31Kc0X+qs8oQm1S6aObFb
	 vSfqAk/VU4+8DvaySee9ztnVAY7DcERP1YEKrWtp2uXBmfpZEg+hNRZbuauulsS47u
	 zDkVhBdOVt5XaThkPvnxWVPPl2NsZFVwb7tGvEWKQ+20dUHKzdU1Yg0V43PqS6f9g7
	 XSfFKSnOMS+nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0344CD37AF
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177838683388.15818.11025765142494097996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2863baf60baeb2066ceac8a7397191991cbe04a48ececc3efc9e0f6ae281cb6d
Date: Sun, 10 May 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778386833
