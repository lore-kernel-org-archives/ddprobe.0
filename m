Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDA33D6CBA
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787646034; cv=none; b=lm4uwBU7N3l18984ggJHDuNHB6K3Q0k59+uiXa/1TKQt/9QrmY8LAbuaC9WcouzWz2BWbRh73ay6gukuRie0NUxeCHpXgzW4M/X6Qji2llNBaB2Zl9MNJLHQNd9KEks+jErPVTSccnmyGLdlVuKBXmKpvcSBKFJpNLyzUhXhMIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787646034; c=relaxed/simple;
	bh=6BUmjj0Og5KLpv3cevR7H5b6uBi1mmMDFITv+3kRe1s=;
	h=To:Subject:From:Message-Id:Date; b=Xukpkeur2fAooI2UV+91vHB3uzoNV9cYtCtkJ8V+qlJh2dWNr0t4IaYNS3HVAHpY5foTrpTAXxS9DA2G3kBSaYmcp0bjQo+XDSICbgBpb4G1Q4H4Q4XUIdwvC6n7QxzPqDf04hqiM58H7aJbh2wpOgf1O8ZDxor071wJBQoBscE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QG1EgRPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QG1EgRPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED1AC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787646033;
	bh=6BUmjj0Og5KLpv3cevR7H5b6uBi1mmMDFITv+3kRe1s=;
	h=To:Subject:From:Date:From;
	b=QG1EgRPDnJ5hOIiO6sJVcQlmTz44s0jcXmkrPr2JYTYL31aTS9h+0M57D7Xxka80P
	 TisRKg2wYY2um+uICd/svmoZYTkURFqQYBK7Hl82zOwy5KKGtP64WnL4iY1aRKRqsq
	 e5K0gPr7aAZVWmPCN8EBSL9LTYeDb5g56Fq7GViggCsJkTS8VySrcbYVRPtu4tlJqP
	 jGmat5HV7igep7b9VETb5j6WIfFW/AIN3j8Zc4QzEpON6eIxoE30BH/tu3f5kE+BFE
	 isPP15Ks6mFZ3oUrp9RbGpxfATa4ekC2ZCGqxFtYT9pu3VcljDY/5Ucvrms30+mjS9
	 fiPxEGcyJDPZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB585C61DB6
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178764603369.15021.4226949884232582764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743124312f1d6f45f97602578823b6afcd8653881d74743b255eed20654935b6
Date: Tue, 25 Aug 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787646033
