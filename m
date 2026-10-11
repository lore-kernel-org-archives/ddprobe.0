Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F847352008
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791693634; cv=none; b=NLt4IiCWBqldl4umHEoAjEnrlJzmYVi6aIJ1HSwDAxvCMA9iyRtq7GS8fVUTFzYGaVVHZsTSMSY8fBsk+ab7ztFNdvN0+X5qRC9ZfSK2UMNIFBBlsZ4yk1lQa5ZKdow2nLHiiKqgPb0SCJGNDaC5bUgZHDMQZX3aeY5rzSJOcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791693634; c=relaxed/simple;
	bh=TQa+/OjwdEGrv/N7uVP7r5vGXQwY+esN90S7SNqZvgo=;
	h=To:Subject:From:Message-Id:Date; b=JvhZEsgH9Dcyax18AVLGy8VDE6UTidOIvk16fSqedcNnJJ/mgY13pW2KQsILPymDy/6uuPBS+J1oG3OeYHPYvRqY7HvkU1Vo0J8JJ+OAztaLstaCSihuELihqfyFs2JXDZliTlh1gFl4tq2IkHpCXPVOQItzfQCoI96YtPeYVWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZz811iL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZz811iL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB505C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791693633;
	bh=TQa+/OjwdEGrv/N7uVP7r5vGXQwY+esN90S7SNqZvgo=;
	h=To:Subject:From:Date:From;
	b=oZz811iLhjKtr3OQthMvsTm2Yq6v+AVZ8oWxmklAB1yv/8ZhEsZG6AdXkK64WTS1P
	 L6VM3VZh37nN4oz3owWfke28mSmBsRbaI/Vi2zdl+6Ofl1Vku5+6iyRRzd9zSQxIeU
	 0WsFyu2PM/KTasu5rs43uTvEsaZzDJRfAVnss4hGuvLkUoVhKVCvnbS+Qk7Fok31Nx
	 yHewgFPbzjuXlx+xOHjBaeS9dMHcmxKsnngFUZPi9mXXaVy3miuqSQ5Sz13L8P7CEH
	 eT2wH+2Veed/hNL4RbaK8Wci0DMKhM44fkHyWF1/1uBE6GiumeA7mNxrtSfZP1li3K
	 0Y2c4MOlmjr3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2877CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169363369.3685.16873772913688549944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ab9a4c428ddf396c6b4a4ba2bddee456d727b97467dc6657b1572c674d18ec
Date: Sun, 11 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791693633
