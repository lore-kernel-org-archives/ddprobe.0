Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08305277CB6
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758142795; cv=none; b=Z4qhysu/pcPMOdfVJUDIMVUYxAQWitD/l/gLICiqSvXES6KPCncrjWZlhSz+iPQPKMMsZyg8DO0zQz+ziWdsBAveTv5+7WLyC+gwgfmHqe4kKYQGDj7xCWiIoIiOCf886aWRbQqxCIgtzaxQExt3wMHknH7N/7aBlDOkYkYPW9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758142795; c=relaxed/simple;
	bh=zM4JMefx9qsDgxIBMT+pp9BCZHYQXLziVW05TXW+EDM=;
	h=To:Subject:From:Message-Id:Date; b=Jgd6I/XnGncV6qQ58jUbd2u4aROA/HkL6E7E0moiEYNlUWTIS4idwRfUVnZe38Pv0l3Ag5ymxF1GO8SJKNl55ORxJm+n8/+n+OISx1AATv0ZrMQv7D69vxXugOIl9/5Febvyw93Q75lJOI0h8HDJmuhxzBh3kC8rAIJtpAGzrNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQMp1Jeh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQMp1Jeh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2237C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758142793;
	bh=zM4JMefx9qsDgxIBMT+pp9BCZHYQXLziVW05TXW+EDM=;
	h=To:Subject:From:Date:From;
	b=mQMp1JehEScD0uRigwYDVuYu1H3hfWOSQobxirt2WuV027erF0XteVxoEvt1ae1P6
	 6d5HAiiy3uCgGb1C9Z6yvrAZgCygEZMbsP/Uan8kviaaTcCxU46z7u/CdPBK6NYcsE
	 ZG231EHGxYaZ60xIZzvOWIhr5F3+2zXXT7orwh350FoxE+2lH4wLpu/hGwTodx6Bih
	 10v4fwhX2WX6vaoykFNQTdIc8IsdxQBlBCs3xX30t1D25lNXQj/f7B7HCFNe9Rb5CO
	 BLdhzRsaGQJYyfwuUMPwtRx2kETl+etkxhASY+9zgffuB07i6z8vzdgZMzDAruSys7
	 v8alMc0zXzxaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F230CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814279357.12698.11001693168492941142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5f7e1f3965532aca914db38f019d06fa6ecb6287de20ed7a1a2b27b8f35e4b
Date: Wed, 17 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758142793
