Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F5C334C28
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771488294; cv=none; b=riVPDcOMRTrtzdXxt0uztngCSSPjsROcL6pf6iiUsur4ZhTpW2MIJmKQt+Al8cJ0stXKmaDlX/7Ljhcvm0V8/4ZTwfJiEv1WsLtxyJLvPS+BZwVdcdkPmS7Dbd0ZcSkW0f6qU2F5NYccFTwB/JAUeU4cxVdbwVUAUtAeBW9Qiag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771488294; c=relaxed/simple;
	bh=fLZnNB7dUQslxFraCR+VHT3FANMyvevlpZXxqtA62Kg=;
	h=To:Subject:From:Message-Id:Date; b=QLnkOLaZYOCIkjI6CtmEyCIDooy4gsA7W2Hrgoax39F/ECnZQMkRkEN5kz7mduLHbeoykS3AkPhemb90hUupIs8OoQ2d9/sbkyD8ghqPPlo3ERHltnvxsz75b0deac4XP2oKXQO0ASQS8/gY7hjVmBcrJpkvOQyCK/yTpega5Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHnvvUmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHnvvUmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28FDC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771488293;
	bh=fLZnNB7dUQslxFraCR+VHT3FANMyvevlpZXxqtA62Kg=;
	h=To:Subject:From:Date:From;
	b=sHnvvUmOIa35WBmHEr5+bZh9CA74NO9yzkmSVHtNjPu1NSq6sXT3cKvZ9OZ4+ivun
	 yuCzg/bCNApKBoZEiQiR3tDhjcLkR+C2HodJlPhFgY2DOUGkLVZWJLgO0mwK4EpGcV
	 gj+goLU1LF1QbhBkhRNpICjbUF/6pkOR1iFs1OA9cJlkVBrmOUnqYJG49pZcS4VcPY
	 YI3kgMy1RuurOGaPwNKquT7UH1F69GYup0BbUtRuNrXTgOdisjKK2HqpYTwcFBtwcu
	 uVx4lvS1mKa8Ozchbs4ZMovbKLBKvxf8M3eJyjo83Ogizk2Wv1iw0XGyFLeP/mc0q4
	 fik6hivVyiA7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B16E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177148829358.14707.5433710146652799865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a70d2fc9a935aa4d6861652b4a7d844830b795bcef987b52f86c7bed2dc6316
Date: Thu, 19 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771488293
