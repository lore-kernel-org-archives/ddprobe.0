Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58214233941
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788802834; cv=none; b=YW0b8v1GGnMP82iGeEFbUwAegugo50vOrgtf519aZxbysakw9IKP20G/6R/F03YPQij91Y1s96jnqUJ8fldbWbPDHC00gs3j/D46D1U1kX12rPQdxxKsqpOZO6bTm+UUC30A0/xXOYHsbowjVf/e1nw/grgX1whdVM80zQK3NPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788802834; c=relaxed/simple;
	bh=RnY57c7QBnpyeQhzKjORUYqAmaiJSCqIwYXpSDeJ8B8=;
	h=To:Subject:From:Message-Id:Date; b=Fp/25clN3yAtEKNEpOjwcbkkyouiESvvTWVLUSojddPfjzWD2i2FrxSqqrzVn4mtj7Lg4XTFDH6SDogXaSpKeoDJ9hXBI133YuhP0XAqagR0O73W7veV2swfxdpoEoby0zR0J9iTwlLYl/Yxhcj0GcIdxdmMneBGGC/pyBSnKd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DlgZrCJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DlgZrCJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C00F1C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788802833;
	bh=RnY57c7QBnpyeQhzKjORUYqAmaiJSCqIwYXpSDeJ8B8=;
	h=To:Subject:From:Date:From;
	b=DlgZrCJeMePtgPqqcBRi+NHJCvYWfGLWFpFYbYoKt4ezQhFECjknMujQAoc/3wiR1
	 42z2LB9kdC0ftYr78xqsKbTmAsk7vTzm+q7Se4k+cBPh4xQP/OVpaZ2oAM3OaVaKNv
	 C8zmZzs2hgxPaqymnHtpwUumjdAzhvcRR72CsCpjWuSuCHilNGWDaaHW14xC1U5jdN
	 pn6iGLku6cnjHIavRqiXl/Of91PqaKp8z9BbBtQAee7PD9iHdg15txo76SIbbcFqv5
	 Fo6WRZq1bSK2ONC5TZh9W1Qt500pu4x3+t9u58nT7tZ33K7koIuBAB5fp7CEYqadsw
	 Q8v132mEua+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9E8C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178880283370.21541.629205935519694912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e7b2ac9ad56a04573475540ef26ee660f4b8aaeeaca8eaef466c8b66f5e96c5
Date: Mon, 07 Sep 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788802833
