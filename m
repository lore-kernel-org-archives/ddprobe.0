Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332211FB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779528754; cv=none; b=gOf7nvg2OH5itsn3DB2J9ZvK5MEIibh3Q97+PTWPK4qV5JSd9IRqTCiCMeqwGQ//F5k7W+KWA1H7p672E18SCeCIs/iQbo8o78we0aFE+pVx9w0HrA9HHq4pKv72B94RTvQQhHBo8Kb59V0QxIZ6+eKfnLvXCVQ1nQ60F64J418=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779528754; c=relaxed/simple;
	bh=pJNFMKz05YnHNaidu+MihCx29P1wYw71pYFNuIwgm+M=;
	h=To:Subject:From:Message-Id:Date; b=Ymsy/5Px5iHmTLqRjXlGSdOdOLNY6FZytCl9m+bzqClvvOobMlULnZw0GAziYCxENInpWVJy+TcgzssZOtoDrSqlHniIqMhflYqS2nqmo5TwolxIk2/mn/c9FqlsvogWSwerueRobF+8fSqh/7Gl9lhSSCwyEZ5f8ql7ASNXei0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXMDvLli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXMDvLli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1607C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779528753;
	bh=pJNFMKz05YnHNaidu+MihCx29P1wYw71pYFNuIwgm+M=;
	h=To:Subject:From:Date:From;
	b=hXMDvLliOaHyd19si2WkBtBWg1Ikk0S7Keet1O/Djttw8e7aT/KtG/27k6LJYmrD0
	 z0A98vJvuWGR4S8rq4/5AxWdxoB6/LDo6E4/ECviwe81liV4vrCqG7r4rCPHmXQue6
	 J8OxhExqxwNrjTviiyLHL8L33z30YOsNmv86zqMQA90cYrRcSxau0hj5LgqqZkDlTt
	 81Yq/AsL2bSF0GF5q/8Tx1meSK7bN5Go/d1vZhA0YKv+nDdiLGfTaGw78oqXSyfCxo
	 yzfzFkOP7Jiwiev9cx/8Qm1WJqCPANkgGiuEWktEUhSOhSrfpkf2Ph9Ij8Nr/pjw+p
	 7Cxlq+PHxs7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A881FCD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952875368.2272.9168612835879918413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2b11dc19507dfa1b8daef1c98ad0db93817e4ab53bd1d501f512d2f4132ac2
Date: Sat, 23 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779528753
