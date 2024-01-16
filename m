Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F34BB1D6A8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705435097; cv=none; b=UWj89xNv5pjPPd4yUHpp3kdAoLGMrBI8Xk3yQ6Rm77Yt9Ir250BC5pLD5YEpjTcSD+7orLfTxyQfypkc6kGRgsKxIS0z4EAO2PDunvKUawSsfyajjLRAM/wKGfGYGrbkgD4buFO/a2eTr7yA/ESHeXvJmt9gB2gOpxjlVAkCvm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705435097; c=relaxed/simple;
	bh=IC7QXfsNE3Jc+EsamgbMNaLMKRh8Q2/bWsuttaJ+a/o=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=JSgFhQ9kBigCQwGC4lgvRwdjWR6HJlR1rhK9Rk8hDxbnaS1cnJTcbjMmz063eOJAMFYF9E1baW0jFHFMXYiIxsCJ/9oLJGtiI4Bx3MPk/iz8sonJXnyIMh8mHswDIvFYRay1nholOWqwi4kR9cF60R/4wPekBRaVJofArXkM5yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyuURs2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyuURs2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A50BC433B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705435096;
	bh=IC7QXfsNE3Jc+EsamgbMNaLMKRh8Q2/bWsuttaJ+a/o=;
	h=To:Subject:From:Date:From;
	b=EyuURs2s14ZgWl+2ez3s62ea67HyJ3esmtD76PhW+O4rZWsiXm9PKeJWbfRYLB5O2
	 wMeZ2+D4jurn70w2JLdmKKlof0KlLs4oz26kLmvvnzOUSVhPYHzE93L6Ax/3idH90L
	 OnJTrm+xrpZX5/mqKQrIVOJmkiyDJ4aT4Ufi5fYVa7AchDCBscAYQ1/S1zsbCBUUFk
	 xkZfpuCJbZ76z+XwWGjnGKWP5Ev3NPIQ4rq1R14Cg6NM6hbowLwa4YvtWFWM+ImNMV
	 UHR5OZhyYE+OlNnNeBOqqGAGXb9i0i9sBuLA2ZaAAoTqq7yKI2ragGD/mxstRScon+
	 tGHg8ohR251rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636F3C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543509639.385.16674607924604480958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcc8fe6d5cb5732f93462d5a03cba7bde824fbf281ac98742c6f30828a51906
Date: Tue, 16 Jan 2024 19:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705435096
