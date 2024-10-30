Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41A5133E1
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730274954; cv=none; b=AG41NABHSMlG5ZwVMUBnmXXnXsrEKMbnLhOUoImPD+FJcQJOU60L1inwYtdSg/5GVN3Qmspaj7r06yRbrSPKWlSkDc1MYAM62QQFu/4qUb4rSSlliBJna1GNKJ0yYQZ5hlfJhM2VRO72S4QGsQLT/kDuwUtHc/v+m3Lm1ZNIZpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730274954; c=relaxed/simple;
	bh=tABSnAmujGJF0B1ABMgYbgFRLuuT6kN/DLH9wLyYGIE=;
	h=To:Subject:From:Message-Id:Date; b=q71uF4MDGy4EMlF8kwndhxLaqxFSE7rsxn8kCmwzB23039UhKTMgJxjltYPEOrdU36I4DHxtYYaHmW9mUjiBPPwFJD3NnxIgeYzMNNATvZZ30+Ob0G3XtIy7yyokkU9gTngP5H9JdUEX46HK2sDRN6SGO9OXnRwiKP6OMmDlYN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXWwU0Ky; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXWwU0Ky"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2916C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730274953;
	bh=tABSnAmujGJF0B1ABMgYbgFRLuuT6kN/DLH9wLyYGIE=;
	h=To:Subject:From:Date:From;
	b=KXWwU0KySIJ1db4Kl5Co860YJ3FnRX4rz9GkEQsQDXeKDFodmDjwD6k/+YGTpvISz
	 HrmujLVLy6xXtCYvLR/9oXhJ4542SL1wKOgPEyFPnTEOO8p6kOBrl1khWFXV58s7BO
	 LFA2WKUmolJEASXzlic8y0p4TbCN08GZZXeHfsYrfO2eesQmQef5K/ko/LHuVQjuCI
	 pBYQr94m+lCk4sNOAcwGOKweER6cXoGlotBQ//82YSY7x2z+zAOBp+T2wh+iSOoCk6
	 jPRJEQUktgf98Ht32z/bRhsAm31Jb2bS5um84istttCseYg3MGkoy/y9evFQtscCFW
	 u5khsuXA3ByiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC842D7497D
	for <ddprobe@lists.linux.dev>; Wed, 30 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173027495369.10142.11168848660154959231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d2faf4bcfd66a62a339b14af2899e62f4a5dda74ffe909d58c40f49c0ef104
Date: Wed, 30 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730274953
