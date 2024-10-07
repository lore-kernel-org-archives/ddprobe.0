Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0127841C69
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728293754; cv=none; b=tQ2Q/3aMAOYFPWsn3JQ2uWbTHtkY+3ONu+rmCDGX2dfL7iCRZY1OZ6Fo5oOqud2jYoBwfpat2auCpNKYV+2GD6ZrBuJ3PpkQ2cjk+wo85v1KJb7Jh79sCyYAMMKDMGSVSe597TRZkY8iPRLyTOgFQS86i9LTR34mv9YNUiDBZI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728293754; c=relaxed/simple;
	bh=PlBezzfreQn06wc2lD2sv0wPMzUp8dIDmsDlT+M5sh4=;
	h=To:Subject:From:Message-Id:Date; b=knKDczYckNS0FcN0iiTHibvIWad2tnt8rbuX/UmT08TtoDOSksr+eTqxM1hzuEVQ9+SVmp3Ms+kR8bkb1PZnT7/+xJ0YNNK593poe9ju3dkC/15hRUBdlOpcre8dekBggHStBPConMcdTeMy7RRhL7U5O21r6Jn5RcPGiltJWOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBkUNmeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBkUNmeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7198C4CECC
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728293753;
	bh=PlBezzfreQn06wc2lD2sv0wPMzUp8dIDmsDlT+M5sh4=;
	h=To:Subject:From:Date:From;
	b=kBkUNmeRp2wjw4APD69bcM4eiaJsQtutLdLKRHUI1Ay6NT3xZOt8ajqz9293OqjWD
	 atz//hkqcdySXN3saZbKybAVJ0GTC8Rllm2QDUJXJ/q90mRA5k9C10K7yd4xvHzcyr
	 3GZoer3N/0HQnXOwSq8Uu332Wwa+ljaJ/vNEEFT2YW73EKe0Gi9ZLJx4Z+JL4rmVw1
	 nb3qumnEaO74IjXnlqMfz3XZ27SETan7DKYrKS2PG5pappv6DVJWRXfaJP0GMOUlGp
	 MpkeN4NIt7HPuy9Y7caYg6mz+4zs9Q6F8wTJDwJrKXjTZ18LSVVocfQRH+NWnSJaUh
	 S5bmCDlF3OaOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0BA1CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829375364.16284.12875898283710556712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b5c184c129957c9e9d62d670b046b7bd56108a3fc7870b2a88ff3d60a627bd1
Date: Mon, 07 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728293753
