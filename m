Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200F8EBE
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727132754; cv=none; b=q/h0b6a1M4sHW3g771mtR9iCmje7jjvUEP1gVfLRnHVAAlRegLmwkLAskWvKDHXemiO4ezKK1JLznG4sPXEsm7ZcZ32//8oU2xaWzcbyI31s67C7tl1XYe/Fb+SAbEhEHciWz+rqPmxNRabSvDwSwWFVqYqaN44DwvwpNdtMU0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727132754; c=relaxed/simple;
	bh=xQ+nFP81js9P7g9oAUv0nIdYTqfVHqTiDPI71yylRWY=;
	h=To:Subject:From:Message-Id:Date; b=rjO1SD85jJdazOfo2+kp7AcqQuZGjYbAaozKnM+RKD7C3OMM6b8n8IfCFr30sxQxz9dRLOoJNEMtYnGNjeGy37SXz0UCuB0STtFfYENwkJUHVzu5aN4X/gxFk2+KeyoOYrTMrPpTNlXnqeZW7gMMJpV5yvoXr6cRCRJ2wNrjlpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QyAxkxFq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QyAxkxFq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C8DC4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727132753;
	bh=xQ+nFP81js9P7g9oAUv0nIdYTqfVHqTiDPI71yylRWY=;
	h=To:Subject:From:Date:From;
	b=QyAxkxFqawGVxU061Q9I+5OTHfBze/iY2iUn8giN/5QqYsKqSlBDoxCe6XE2SyGUI
	 HJBZxfS7OW4RJo0T5pvSOktIt5VHa1KGap3jWV265mLlJottNQibidn/6X6PA2RcBS
	 TdCcblZCh6ST9AcE4pYMvYoto9tYasuTSBZ3qvsY1unIPgK9F3FKyeBjRWck9pCoKj
	 yDwcir/gmIoujH0TewOtQPrO/38qdlEb7KS72js6USH8HrIjNQSN7KYTsLc7GTMAk0
	 fnOKSRnStiGxxZ03ZP0dvPgWySn+dnynu8pHjfB7ewmb1Uq6hO9pFviY0Zz8ICvfph
	 EUNsQeX2UZb6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D78CF9C5B
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172713275360.24746.7003423967375106150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eba07334fb75a4b908b6f71b5332be58906da21985a51cc1afd360d5375b67ee
Date: Mon, 23 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727132753
