Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B67A14C588
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728207954; cv=none; b=BBp+gYVMUCsguBVCELJhPyG/lRiO4lWDqjlnwrK7xxr9usKcAXARRCcS61JOxZRW0/Z9fNISASSPdGbJXoyhakEgeI3Z4pjjeToMeUBgEknq5Fj/5f+s/RkA2bipJ66TgmZIBhoC/Y6Cnn3z4Nh4pjCGduaXtCkBEy943pF4u64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728207954; c=relaxed/simple;
	bh=VmSWiD/LvR/qw2PbhI1duSH8l5rSbquO83XUIe/heZY=;
	h=To:Subject:From:Message-Id:Date; b=QSL8Hwz8nT8+FOeIibP/+36ETxNkSopEgWRLizZNAVsHiEjvJAFnFjQP0JNN3j6jB3CD+ebcOqjNqlydLlzann0uQ25QNu+h8iggofEE2DQemINpU+lqcE3o0DNbj/t7dnDe59IBrOcqK9QGsf8pUHyPPa9xOx2wFdcb50m8FQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZKhJysTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZKhJysTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B620DC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728207953;
	bh=VmSWiD/LvR/qw2PbhI1duSH8l5rSbquO83XUIe/heZY=;
	h=To:Subject:From:Date:From;
	b=ZKhJysTzLXcXSOSpIPnVH9WfbL4YGpr1YMW/ntNJKZsn5+cPM3yWCnbCdghwvieji
	 SAFOIhyLvazJONcOILuMNtf2ZFWcXdttxgZSWvRmk2w/YhGHfQ59ua4PiEyDfNptx+
	 1Te5PMvx+MdPbN4dP0D8gyJ1fHs7l/ykuw5kl5pt4t/hDJBhVsPSfW17hxQrP1xiae
	 Cho6fI0W5IkCbnLOpNlZ5IsfJ7XTbGevEU1iaPJyiuYJAaRNV8fPMyTPgMOJIyj8q9
	 8TSnHhHFpZml6xU23MzIMmgC6EOTesKFu83Kvs7dOFT74OiTo0e3rAvZtJKxATUVcO
	 /aUoIoFptWOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99EB8CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820795359.14857.15852070500775654878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4244989c9837cfe1d2eb55a14cee1349b4ebcd633c2f11764605e264ee546892
Date: Sun, 06 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728207953
