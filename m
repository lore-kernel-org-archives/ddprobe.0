Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7A4340F9A
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746491995; cv=none; b=dPgyriO7tkEfBgY+Yu2I4e69Ia4FyAlvQ+GYiUPYQOD7El6CxW+Chyfg5JDH78rwrXO1XItYfoaWhxwrWwPz7pKKWvgpJdY5+s41/16MNti8lbppac86FtSkFCiUzlw9ttcuE001QT35eSMqoGVUkN2VWcfpF0EBHjlOUyo5X1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746491995; c=relaxed/simple;
	bh=3xUsJhjJCANXGhRcASri88ttkHlenzkC7NLJ6cXhjs8=;
	h=To:Subject:From:Message-Id:Date; b=SdNDtmbCzQt1575Pmuxihecbrsdasi9sDXdIStMRh553UJFZWSwoSZXZl/t3W5xqTq7gEk7Wz9PwND8HZs1gV/HyvrXfENjQ8gxLLsPpJ/mafWoD0L3Sc/q+S3pLNNJeNjLHjvWSRoi+ULelR8lRk7AvtaFSBN6v2L+M2POXSXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYheL+Kk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYheL+Kk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2138C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746491993;
	bh=3xUsJhjJCANXGhRcASri88ttkHlenzkC7NLJ6cXhjs8=;
	h=To:Subject:From:Date:From;
	b=OYheL+KkyX6/2kEclXNKoniCG8rU1nnYr9D7T7LiwltDdtzG/Kkxg36K/T0T/psfc
	 qYorILjBVc6UymmB2gfvd8jF914YLQPkhBmL+OQXnpc3Qdyncm0qUxr/Aitu/83+ES
	 LZyIXaS2dVMIeyJ/nWCgqRGgzuD/vKJR8FhSAoTxyPtQjhnRfwWucZgODNiu5wvJok
	 Y4o2l0liJlNBJb03dOGp/k55szK0nL18S/50YUUOI2tc4iqwLfBXfYkl6XwFhrB0dV
	 yjJmAyxpLaVjK37mT87DjCL2RjWNEIMVMP9rS4J5hgwnDBq6Tz5j8X2jLwsc76pugH
	 LeyT3LRK140iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91807C3ABB6
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174649199358.14770.14828355267442745379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba65b0b46800daa20fa02d4bc34457f8b4b89a983a0fcf95acc8b6a75b36e643
Date: Tue, 06 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746491993
