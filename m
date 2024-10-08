Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A62566
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728379554; cv=none; b=a1yyjzaQANUGRKLmFalryaJUwdLA8q38YfxzUTikBgy7aI5kjO9m3gf8HMsFbfs/mqTEFaSv3W/0D+Fqc0oDqrz5MWPKdPGDugnKraYt9nWr38eTnIrPVzNCmmvijA8/seohsPZiSwyuC7XuRH8KbI9pmJJK7V13yOEFN6uJaTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728379554; c=relaxed/simple;
	bh=18EFBzvZ5P1RdrsO3r3MQ12Dj8jRmAIRmGwABf5z/ik=;
	h=To:Subject:From:Message-Id:Date; b=L96lFmlSa6Mrqvgdq64WU+7AKLVjVrRzIbsuhuvE+BI8zyHssYOWhlv3KDc+1IRy1iFTfyDqzsGXoxQy+4AiU4QCT/KjhSWHSVamqZzg5jHELjC/NK5T6TqWHvLbYiVsjLm+XSUlJf2cGbixpjVojqKOMOaoj9Xcuj767vW2XdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqK72+FG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqK72+FG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9F36C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728379553;
	bh=18EFBzvZ5P1RdrsO3r3MQ12Dj8jRmAIRmGwABf5z/ik=;
	h=To:Subject:From:Date:From;
	b=HqK72+FG7X1OOk1J1g0HSdz9oIgxMfpK8KONtZo6s3d6sbJr3Dv2uYtaBtop7+uAe
	 CcoTfZC0UwlvmNGDqU9rryJodt+ueR8RZtAp2IicDJU/BB3u4TTiflcygYpQT4jXbI
	 ruSXJJCmYSI9j4CeY5x6Zikjkvj8hhbrOzeuivhJg/9Hf79Su5jntu5eO71P59v1N0
	 /J+wQJN/o0jD3HlMW+qHnSOdyraaC+VzzoMKlXwBZt1WC6dbM/t20+3E8Rz5CiIlMJ
	 vOqdWGYlFc5GV8gkedQYPe4YPZztyHWnXtq8akZAQ/LNprYtTpU+CEkhfE7WvjvEsN
	 HNZ3QNSFSdMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A73C0CEF141
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837955365.1450.16255822489175464155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f08921baf66e91c9cffb48c1ac502d5dbdd6d72dc471a33bbd1fc933c5f19c
Date: Tue, 08 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728379553
