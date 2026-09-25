Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E74C35C181
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790316634; cv=none; b=fIU8AVfcetTsCDwmy4UuezAPlmQ/SP+Gj8fjnN11R3yAr7Urt9dF1h8f18kLnS8l2Mj1RGwdxABSP4VbkJL4kuDew6oI9ticZu0TtrsHJyZt3E2SIBz7gTlnGu8TRf97z+s4lj5byP+hw4u57Z9Ma6Jw6894ouFe05oC3/dQKqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790316634; c=relaxed/simple;
	bh=Fv4lRW01bnOHjRnTDDHS9TM1PgNaS0k/Pnn2X/FLvcg=;
	h=To:Subject:From:Message-Id:Date; b=eWGFkCBQ6wyBq9OjUpdXojDJ9wQAD2rERfTS6PWOUdjRdy3DcVoAWMTTfMupen039NK/DlT2yrnOS9atL1Hoom3z+XCtYavQgigLRq2Xoz8XIISO7bj0Gz2bGvk9R8Vk1epYo2MBDTlCSPHpiN+ualRtIKitIO7pxDFcJyrjlG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAn1NyZF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAn1NyZF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D478AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790316633;
	bh=Fv4lRW01bnOHjRnTDDHS9TM1PgNaS0k/Pnn2X/FLvcg=;
	h=To:Subject:From:Date:From;
	b=sAn1NyZFO786Ymwuvy7JN5R0MQQwtrdKCEaxNsrYYGQxj7ZL4t2iY1pWDekVhuxQq
	 rBDMm5pj1prT6hUJFCxewc8INpc2AMEnZbrO9s/smaJ4q310nm5cJtdU5lKkKzuaJE
	 mc3pRFgtvlqjKTI58exuYT616XG4ri84KJg5PJSSzCGy/6s8amriRL2/3Sk98D0Ouu
	 O88hAcyhtyPDe223FPErvBS5zCvWpDA5zxHi1Oy8YhJTpzohavElmE2TaRNiU2M9Iy
	 O7faD1ZXoD0XTEvfoXWj76yuq2krfzeWIoW6cfaiRpzKpyOHh/pJaaKdQULGMSW8Zw
	 Ig9PrhfbK4cQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B132DC98306
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179031663370.21003.3483231748647716525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c9d171399fa0f6db139c8372d1abcb75c5622d136fdac5a538223157c9a8556
Date: Fri, 25 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790316633
