Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4668436A35F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779688954; cv=none; b=Ri8WLzDR2LqPtJLytGE5wbPUIUZzPxqIGZnf8oc+fjedpgUUWAg5UMMPZDq4P1ArDF6v/VgyP3aHbXAX6cSIzMN1hc9o5+z7Ph+G+spMJIP29j6xr0ACJUXcwjwXIavm7qwjrLQ1XrZ18f9Ie6GRI8B0jNpREFSsqSRP1NIzR38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779688954; c=relaxed/simple;
	bh=pP9e50Bg9PecC/6zxvOlTN9pdaQvC2rn/XKoNvNMqNI=;
	h=To:Subject:From:Message-Id:Date; b=K7rJOAl4tr9zekCFUaQU9ux6lPB0fPeyAYfuMb9n59JQ/MOxRT65sBY+fol5zVNb1R+2MSf7EhbSlc8AlDkfnVABKGSzY3OADkgMweLYyGJjjJKZi5ggPkqKEpRFBOl5kmA6yN1U9GpjX8bpldr42nRn+g8mpHe+5u809uwopZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=piuNDOb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="piuNDOb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E76CCC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779688953;
	bh=pP9e50Bg9PecC/6zxvOlTN9pdaQvC2rn/XKoNvNMqNI=;
	h=To:Subject:From:Date:From;
	b=piuNDOb6IVy2FhIiu7E2iP20hd0F7ZJ6XXZwWOK1HsSXA4aM7Of73JYsYqsr89dM5
	 uPVto4L86ikVeyzl1gebAH12pn5qxTFiZCRpd8sKFUIjhklv3WRBRa64k1tVbPQApH
	 JTfdrou+JKfUAJOGTxrGyDFnRfZxb37BQZjrDZI0tIsoU1/fAIaMmXYs8iwauAARTQ
	 npJqiZ8WaUcKIUqnCWswgXfA7jxc5Mdm6AjK+z6PR7PNJ0qK8fT54rmmtEZzfx8F+P
	 O14h4LDLpFPK+f4z4iy1c/yjl8r5i1Rstq1+V2cfWVvsfsFcoZhacIer/ChThbznAB
	 +KGstpCC9UHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD844CD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968895373.19771.2949945509820946380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eb597ac9ce8e60f4dec0501fa1e214d22d6a2dc8709f8ef5714f1eda01a3def
Date: Mon, 25 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779688953
