Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2C53B8D41
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782684514; cv=none; b=kKnWfymb41KUNg1JE2IFxyxnsPbX/aiQym0edcQ2iKF7ACNOgohxcM6Kdst5+DbR7fYktMmszZwouj/AtPctwwrWb9WbQ8VmJ1+GVnTcaJ6sDcZ3Tq+v2Yn8VbcmRC9R3C5s97F64qC63TC+jJCkglruAMzR1Fnd+6shEBVjabc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782684514; c=relaxed/simple;
	bh=0xBJa9LJpW92/OyEnoa0kW2a7fAnckukg4GSpYTHwrA=;
	h=To:Subject:From:Message-Id:Date; b=H4ewJNLLfIHDCAhWraAFjaWzJlkdAOLLibsYB+jvcXIMltkPfZesN0Uiq3eU6tdkB1GzmK6NKUcyZpdELmsdNjb/7oSdLvTytHnoN1+1RL5wsvOCvVGtzus0h98aoZLMpOfBcyXHHcWdP4HduymftCXng4qVV5h7WiwTF0432ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkHkQOUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkHkQOUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C10C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782684513;
	bh=0xBJa9LJpW92/OyEnoa0kW2a7fAnckukg4GSpYTHwrA=;
	h=To:Subject:From:Date:From;
	b=tkHkQOUJiz1roT/TDtRaJlXuKiCKGsE2i0GUVaWPp48mHkLyWuWp9kgJ99IBIGT/G
	 UTDr7pkOs8WP2CBMBxAonRjuDRJz4tdrOoRnu1Zl+esyS08vpR0k9dSyT3HCJU/om9
	 4jBMUggLIiNPaULsGCR+rv7oUXng1c0fH49L2c0l/S7wu3AH7DPF4XEbfugk5881Pp
	 3Zl5hescBED8S+QUpuGCUErFD3IvtKt+0d/KxX/+VXzM2gFzci1ex+VuuYLM+B6/Wq
	 j9oWAHSH7INU8ntD3y55s5a/MyyShGDswpiLfFrEJH/F1b8XisKAT1NuDzLFcIXrvP
	 tbIzRUyPO7Tsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2DAC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178268451368.14642.9534738610576028300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2b9858a1e55e48ceaabd04ee7aef98b039d96f8bc9319dd9dc92ac39c7c42c
Date: Sun, 28 Jun 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782684513
