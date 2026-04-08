Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5A62BD030
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775658334; cv=none; b=A5aa6fGJKF24mHVheKYD9cIOkVKW+labT3rYP4AkKSFT31ARcaDuCl4k2IUemG95HQK9IucKCaa8lDL/HtXfHTMgoxwHsf6KP90VBJf1KxPg9Sq4gqxtLgUP1jf1WV9uEjfh1U1bX6+bywlcFQJJfO5/wHGQ6fQKx1L7R6Qg/Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775658334; c=relaxed/simple;
	bh=SlwKGUb0DM5ZqHnzfDHbY+fuYpEJt7G1X/84d/m/vuY=;
	h=To:Subject:From:Message-Id:Date; b=f8hsDEGw0CYZSU7kDbNmMEv8pvV1+qM4Ji8DL7ZXVMcPGs89aWq6yYDOV7Y+d7UH1HoLS4eNARrjit1RE3hauQh+cEeeeIzQcEh4cMlTk8NIXhW9VKiD74Ugs3vk+YUOvQtUr1K0EXxqlpuccgeWVKRWnBIxKk7gAf8n5qEjFCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjH4zMt4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjH4zMt4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B73C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775658333;
	bh=SlwKGUb0DM5ZqHnzfDHbY+fuYpEJt7G1X/84d/m/vuY=;
	h=To:Subject:From:Date:From;
	b=MjH4zMt4xcd+2kC2EXkDLsPt0P4AJ1iUiyUOUsbRiFKXPRn+gKTNz3au6wy+nvEvy
	 XL/rg3UqpJ97uVTrSUrnChqmIWKmRnAa550cFiUtFnhHbtS6rDiD7gCP3rffmZzp9e
	 0ThWn0wFFigDuaU0czlUgRg2DIoY7A59tGXdmxboseGpZTmEEDD/8w1NvmysW7wJ7K
	 ZFEvPs4F6tyip7g4NNiyedYq7HHtn9Hdf85zMRBYg9UuF/J7rFLd2aQJZULfJVmVA/
	 KAhJMPQpGnyIYzJ41uY61QCbDMMpU6VNfh27k6obw/45qUuTzZQwc9/xXcve2ol+Rc
	 QRSTd6gx/jXow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B021B10F9943
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 14:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177565833368.2717.4894382829266853518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1869208f2d95b5ae9093c585153719f8766649ad6af164b825069c4b8811d4d
Date: Wed, 08 Apr 2026 14:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775658333
