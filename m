Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F43813C8F6
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723263354; cv=none; b=T89KaALTG+wiuqrOaavB1TCtAlrFvkrjbhFZbCaA4ISS217hS9o6cNi1CuNT4Gs7THaJ3NW2bpBTJ3hiOtBXa4fs3hIXx8GK+idEBrmnuMkq5IYF/3L501a6KrGThke57+8LSQmQfGrac5m1X7n4Fk+oHhLLnWFWQTAQWqxT5TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723263354; c=relaxed/simple;
	bh=eyl8d9/SdSKE0oKXqkBnazG45S7+Esuo2bNulv/VycE=;
	h=To:Subject:From:Message-Id:Date; b=LGJ2zODG20ZYiPtY2Mpp8LzAnJAEez6zTC0IToLbMLZlTl09LKeMHIbC91iK8aJaHxEPyr0+YQ/D/fFoO0xvd3ZNBB4xb+WGTLUXYlFRmrpAjlfnIF7pMZHJ8aYYQXF0zkSOCVpRvnyBOXma2/hvMuUQVSM8iFCqYo/9Yji6M4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mg7cStw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mg7cStw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC7FC4AF0D
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723263353;
	bh=eyl8d9/SdSKE0oKXqkBnazG45S7+Esuo2bNulv/VycE=;
	h=To:Subject:From:Date:From;
	b=mg7cStw+gQgQ6AbBj4Ydy0B+VC7ivQRsyvRTB4OVzlqxEGaMke6OKgmMQjzw8sYEe
	 m88Vj77DAAItY1dY1HHG2jNHIjUe7ICIn88xc/TRfgaVMOXJtdQkGAS06mBuFXLa1T
	 VISTCmK27XKKj4k5cSeafCkivhLzit5sDEIn3m6snCJVSb8Q4RaTeZZAatqMhKEbvQ
	 c2eXPf+1gYRLmxPK2If5NUttKBUpKRSu6PLd+54KHGe06dWWiXTVGMlIjna/vIi7UP
	 YfLKEe5j2t2ITDg8zSb0EayGK6GMlVnknax7gp55s6aOj1QgIQYkMnJuQjCn09UO4N
	 kzKP3ABNvAJPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7842C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172326335359.26421.5862648964921109358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9e632d22139d319cfb8c4782861e5730c7f80b6655e4c8efa1a57450e92890
Date: Sat, 10 Aug 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723263353
