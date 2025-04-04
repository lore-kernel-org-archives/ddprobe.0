Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F71F2E62B4
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743734394; cv=none; b=Xn1UuFk7xQoz4tcgsHTZWvFNf0AOS2r9U8oM8jHZCqQNmvelLYL9/TnfI+i0AjM7g/rkF1gkNah/z38S+oyf4oyqmx8guwuxfv0Xgyk/5ygZmkAuRFSVI1JF3PEgK/JFCdF7PzwMRo+GISp3Sfkb1AfgsySQahcOZzXrNM8JLzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743734394; c=relaxed/simple;
	bh=vBvtqfHdXR6qw6xWOPHK1qu7g0rf573Immyc9Om0A4o=;
	h=To:Subject:From:Message-Id:Date; b=tOLQrxWeN67vSM9+TjodZ3kh58idOzoEnl4iZwBMqNcvvhFRzIsiIjpPmzG6n4zesOa9iL3hrYCspytBbmW6Quph8A2s5Ct9On62mlfrdkcWFfLOyKQ0zuMawYBiqjlo7zYE9md5Z+jjXt3UFarCfwG9dnbxFLLso+3WfuMoMJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+Mqhi23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+Mqhi23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DDC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743734393;
	bh=vBvtqfHdXR6qw6xWOPHK1qu7g0rf573Immyc9Om0A4o=;
	h=To:Subject:From:Date:From;
	b=h+Mqhi23XlqotcOKHrR9KTdC+laqvb/s2hf/v2XfZo9rMSEQvL5VD55DHVY78w+lU
	 ZjLhGqdbjGLkGeQi+BPLKqizedvvXfjBIF8QWvulck+bpMGdMkPlFZd7AYUJZEf0lg
	 9f5hW24V31nAOA+L8V0W4H4WxHLcmvk7htK8Z92pYyFHR8hPI14Qq2/wRQ5vWFIqKU
	 DTJMdqIdtYlRv6qAKO3dpO6u9cPDJVGQjoNw1W3dfUbRfICVRHYJjGZvaKaXvIzLrO
	 usWUEwPBLLhOwjCaz/7QOe4ErMtKCJ4o5lttFyPrA0ZUNtCrJkAnJTGf0tixXf+cou
	 t2RLrv1EjTIhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC8C3600C
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373439359.18720.13931237149015649426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a7db8509c30698f7bd41c076c406fcb28681e176bc5552c3924fbefaa3a50ab
Date: Fri, 04 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743734393
