Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7E23D4107
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789440634; cv=none; b=fxagt/sQzb+rRkMtu1aZ5ja7B5FsZZ4Blnwvn52vT30BGoN8Wi1a/kvoHr4yRHkXhosxI7pEgn+ZgQiJA0xsEo92uVfqdm9d8GERUtNN2YNtiT+sUFNuwZ+kDD2qSC6eRwcS67D7KIiAiguscH/Kyp7uCM+CV99RcQgJ8FB9NAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789440634; c=relaxed/simple;
	bh=AfiN8/Rv7PK0BtkJGdtDCBVgirG52k3/vsBgGt28Jrg=;
	h=To:Subject:From:Message-Id:Date; b=rqwnHXVyuN8HQU0mRJEq+8OfY0bpPcjKsSzJ9KD0xlx2YRRChhqEh73+kS6skxCPA/7VuSDp0QSRhhxiPyeX3KDACDRkt6VHq74YH4fXuXLzXQs7m2icbkveGn1SJ9xOcfyRzCACbzk5UH+B4eunO/k4EDK73+oACeCstN0accM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=InrT0tAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="InrT0tAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC459C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789440633;
	bh=AfiN8/Rv7PK0BtkJGdtDCBVgirG52k3/vsBgGt28Jrg=;
	h=To:Subject:From:Date:From;
	b=InrT0tAZcSnoCteKVwImoMLTGl7KjW2/siom2Le1A+UhMqzidDL5aUa/yNHTW10WJ
	 rUQJVR31/oc2rYaZIC1cmJmks0yG7Ymb79p5xaB68LJpaz8wD0fAMw3y6QNDu0HCU7
	 QjbjM4mMMBWrDCrKT+FdNTTX+TRlt7tmZqEXnkRrrAeC2KBBnpDklf8zGBHfST70sM
	 mzp/cjD+FwAdRFrmEdv+aPmAAUvqZWJVEBV5Sem19bcUZw9lUc4xPWdvJ3BZdBgsIS
	 5eBBBq1lO5oFi273scAKGYC5rAAUiJR24p5rsqd4qi4HQumS6KN746bH6ERQCOlrJX
	 CrsFzXCB5UZiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A936FC88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944063368.24589.3018121592284476133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfa2783b63fa556372e1e23fd8d7c809f5564788459e8a8e0905d51cdebad22
Date: Tue, 15 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789440633
