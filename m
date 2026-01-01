Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26489FBF0
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767261234; cv=none; b=d9bvlLWjnWEXqd3dtbbMmDeDMXvSAio+EcKoqH8m7bKeiUka1P/LdY+CX8+/dvOcWgKB/3NiBkr0p1jZm7Gh4aw42WM8QdjRFw2YTp44D8QshflbL/dStc8oH5EOk8PxcD+FCDnyg+D5UyE27uGj+W2S3A/hRsblTzZAP7onGVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767261234; c=relaxed/simple;
	bh=E6t1k+Lk1O1NCyqGMosbt3zcwkVLLwDcN38MHj87aas=;
	h=To:Subject:From:Message-Id:Date; b=aW5nj1xGA08hot3Wfs1V6dW/R7ho1BIEOwbs4uT0ieTXNC7PfzR6o7dJ6mc4GO/CgJqcaZ6S93T0Crjw0CCpsdLB1HqByx/QEs3s/vHNdCWllEJZvX4tFf+5Uyodk+wc9yFMHgPj+cu1k3HG3fyoQ5ldQvIt3Cia1xHFryvkER0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmUANaXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmUANaXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41DCC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767261233;
	bh=E6t1k+Lk1O1NCyqGMosbt3zcwkVLLwDcN38MHj87aas=;
	h=To:Subject:From:Date:From;
	b=lmUANaXoGeJBjm495g+V1ABAV/MYRks2sMO6h071TKq5DK83VGLtp3+g2MDx/0AEu
	 iR9d8VXblZnm8//sb78pKruFOghz+iEN+UBV9W49pTcmFCaj9nODLM+J3RUtsHhxM5
	 JuTORBdlkAJhAmgSnPhrIgwotReNKZD0c7mxg0HPSJ2VMi8I4H93hCcQRgNcxG6K+Y
	 SNmWI3rwmtu5zIkO84oUdmwB0wU/dodHlztnnU2eYnmL/OYNIFEqCat/heZDRW/1fV
	 w7P226bZLyHA5i5Zot8W1Zn5gVnzcTS8lrVdV+FwYT37gWg4i/aJzD40DlGZU7k6q5
	 lW1I/0AH0CcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94013EEB57B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726123357.26167.15522479576049727208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29eb7c38ea5f2e936a31ef786ca25712aeed40f3f04aeb59858edfdccea63bdf
Date: Thu, 01 Jan 2026 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767261233
