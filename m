Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6F51B3930
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756793394; cv=none; b=llhmVhLuOcbwNjv/7aq0DprCI9wjTMCqsBIOgPkrlMo72Ysu5zkgU+zDGapEHJJM2QSuugyFmd378FzWgwFeF6CMxQoFZqU1Fh0oeZQlK7TApVyUaa6tWyht++q6sWqS+uA9j7Ax5anGLisQRyfFgU/p4PSgPx26kSlNUZt+8B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756793394; c=relaxed/simple;
	bh=KFkkMR9u+Zb1eHvf5e9Cvz/BWP+wvUB5/NB3LzSnXkU=;
	h=To:Subject:From:Message-Id:Date; b=qdItjWFWfUo4bk0BAil1sgNriZJ2JBQXAy04PfF1z/ZiLAclJolkvq0bWJIxh/17ALAPJ8Q8gLs/IkuqP5HMZW3437AfiwglvcRdVzCYBP5lttmDztWD9DFysKED52ySXr3H4CuAf/4k1x7PQRkqQ2k3C5hGv7Dvv5MrJ0TWt0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H77/VZUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H77/VZUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2734C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756793393;
	bh=KFkkMR9u+Zb1eHvf5e9Cvz/BWP+wvUB5/NB3LzSnXkU=;
	h=To:Subject:From:Date:From;
	b=H77/VZUnzxvH2Wefhe6b8NptGRn5ZiGlHp6k9TMZm4DN8Fs936l9kDoNlEMeLOU/h
	 YF8zjDt4uUCfg4V9677T0h9AjFUD+XVHFfECDSjxme0qHCfi1Ico/YlYItE2veCqaC
	 fpWwgdMf16eN08bB6zTFEQC6EnaoaE8uzyzZF6T5dRXplj+UPI/0T6f9VLd14r3Sx/
	 vH0Qt3pWxFashTBTs1R5Eim2oxuxb8vAtG3VlcQU6hsB9whzRwOJ2FjzylgIb40qiO
	 bjh6SFOMU+71CzQZLuTTv6o07fArOtPygiJ+0f1qa4H8FIBZ79bcQAEAj3yN/NSoCr
	 og6PXcgxfAs9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E5CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175679339357.28967.5378376752585245971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 072a36c06ef4cece21e28a4899849d6b12b3cf981b0bd5c6fce97be02e61a597
Date: Tue, 02 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756793393
