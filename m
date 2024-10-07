Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A68515D5CA
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728284154; cv=none; b=ex4HV3NiZvv04O8ZtqyxAJ9fQ8BCRTrw5x0Km8BcBmZuPB18q+Yw74tJCH7NTUDYDB7Ua0BLMamtZl5djm6NDj4vNGJQ9wFuVHEiE8FgvtOp8a34LCnphtf1Z2CvVDmRtOi2LJpCKQb0fq4g7ZxpjRepyNXGVdAu8eUru593JJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728284154; c=relaxed/simple;
	bh=PqoUEe82gS9+hhWuzzqM+PsiSDhQ+YvQhF2Iq8vm9oc=;
	h=To:Subject:From:Message-Id:Date; b=eiDfh1sL4cMBVcJV1S6RfYOnmqf5+qluvcx9GK2X1tWmhLfcY2P3mCxfNehsG73t86/cal7PcabBY7LCkREdYpk5d8OpM4NPEu/4JYnfJr57P0yVi+m3VDTclEO++QDIgM9iWrz2x1XtbclKkdU1Os6LFeQY5RXffxWjrNqvqxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MEbqfRun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MEbqfRun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3706C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728284153;
	bh=PqoUEe82gS9+hhWuzzqM+PsiSDhQ+YvQhF2Iq8vm9oc=;
	h=To:Subject:From:Date:From;
	b=MEbqfRunidqPn/Z6PzqsKz/ayphsdFkQME7FcV8L2/64b7Ygql3SfmDb1mt3kguvK
	 aS3dcwt+mX+yk9sNUzdMMJSEYSUY/Gge5tmmJokNIgQjYvHylNVLAlct/DjULq0cx2
	 tLqNdUPU9HrjKZpmcZFqSrgk6F/v1uw+SOKeVNLFt2nGT0vxH3UlqlAU/YY+SucN1m
	 CJAnUl591eDw+Wz09djJ75vYF/ksfL+vA4WrmNDIXFxYdJ01WMco4UJwF26bqe+xSW
	 /qALgiPhPHRWMfUPlX1/EHRbcatj7wYRUESNekXQJdaty5in8+AkT8vnI7vEnQ2HQ9
	 oFdz2E8whH2xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F70CFB442
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172828415360.31404.15911680760333445795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a4e6f16ec532f5af0f8bcec6fddf473e78ed523d44e0527330e25bfcbc25ee
Date: Mon, 07 Oct 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728284153
