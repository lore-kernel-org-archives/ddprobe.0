Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8472D7DF6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770023034; cv=none; b=qz6CY1gDhzgyj+ZSP4Cyq4HcbCt8Uyfe9DWchUo0+a/BexBvCU04gdZ9DzjJR7OuRI1dIAR4k7m5XY5D8QAzBzKqG77PT3aqdv3BEP2ID9FqdFdCsXI3s520+tYm6R0nACEjbih1DZ5GQFcykd7lQvygWH6XESjtX3DmZ33FOCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770023034; c=relaxed/simple;
	bh=WQimM3mHu7XWLaXLcOvhWt2XLGHLKhIFKZ+YoKUDs58=;
	h=To:Subject:From:Message-Id:Date; b=oDZAhAhVbeQln1k7Awd+Rma8/hM9eyzSggTuC7dzAqEEPvgkg/fqhSrt8HLwSBz8fmIpr3jE9e5/3kqvuQFqmJgxqpsGZaxnAQEzL61BE7/u3Xc3ljNamt8qhxycPNvxObZtzqUh1Ag6kWIej5JNL+Z2vfT/kxjS+8kCO/Qgozw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LLcVSbHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LLcVSbHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB539C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770023033;
	bh=WQimM3mHu7XWLaXLcOvhWt2XLGHLKhIFKZ+YoKUDs58=;
	h=To:Subject:From:Date:From;
	b=LLcVSbHMGrLMA7H7vGaY1rOUeUmpZoT3rhxs8agCen1OfvpnBxyMZoVp41CHCn65F
	 noaQpESudfUtX0vZNTqDdALJNGtdOOYowCSUMRKsLT8/isstjoU8FFWu8x/wc/ufSs
	 aWY12VQertc0eiqZdwzVOahO+GkUkUJErp2f7+UnHrY1t1fcrqQr5itR4BsaKv7clC
	 EOJcTxVju8aTjjeEgYSbjW5dGb3RC6nBNrARjFAI4798cnjM8j5W1z6eAhzeFcjvUM
	 vmHNYgucKL31lACbmuutT+8506SmJid9Rmssh40zEB+PspT3avMWwk/w3tPxJdHPto
	 ERrba0kE90lyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A44BE73146
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177002303362.23057.15512699721673253824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f75d16047b0a25219d83af7d2e70282dda92e3e4a988d80d912391f04ca68db
Date: Mon, 02 Feb 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770023033
