Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258141DB125
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736941554; cv=none; b=PskljzTLyCbM0hwSDtV7bVoBUru3CLlpCip+DrhQ1PC3WEmuO9TAJxSYKcj+Ng8CWmZ+pqnOJGLcNFsJG0MrjcgqA9Wfk6S1QEbXStfIuXS3X2sQAN6RKHOzUuXXBxB2MiYRIKQVsw51QERc7TAeiOENl/A5bFNbZ7Q59VBZ8rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736941554; c=relaxed/simple;
	bh=RCygirIAPeVkAUe5SKejM5MKodvBEsPzLHq/oIrPUYE=;
	h=To:Subject:From:Message-Id:Date; b=AouMPG8hdJXMzOKkiDAkq4GgaeNM5kr59D/g9iKnGGT9B1R7R1zzNWecr1t95yY+ZSOwhmf7CRED7iHVtO9fvKHIDu38HWppSowxgcc0hjJZseu8fS13YO8fgbZVi5H03g3bb89oA4yEh/AIIQxOfylh5EuWVr3J+InDbGe58lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VXdPLMHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VXdPLMHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC42CC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736941553;
	bh=RCygirIAPeVkAUe5SKejM5MKodvBEsPzLHq/oIrPUYE=;
	h=To:Subject:From:Date:From;
	b=VXdPLMHzZqEdcd/HToj1sZseTy21gGOgJhOy7k/RzMiQoxsAtdji9KEy8QwVjAACN
	 lYXdySzWZDFOeZPRKI5TU4Bel2U9/Kq0EZJQSrDDBWe4f/Fj5EvJiONJhVl5PfwxU6
	 S5E9cTFqXY2zMK7odyU6+jCm5LMR4dY5/JZ/2YDJC0nDh51VAP2HCcO5tib8NY1taT
	 PzRZFzaz6pSEUbMV4No0wpwVaZ1K4iOPO0skgVLQeAxWps0bz3+LYiBV50HJGczaRM
	 bWnWzIT34R0Iu+C3BAbxWdmaW4oA+aT81h/d10w/sSwyILkzmoZAeWmwGfDtzGaQol
	 r+FO7o4zyFtiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98937C02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173694155361.8867.3087504996896981268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 780edfce4c6aab568c1c5b094d20224abbf21de7a11746e747a61b2bf58d24ed
Date: Wed, 15 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736941553
