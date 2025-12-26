Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F3921FF21
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766731434; cv=none; b=lljIRttmgWbfeTe2NYiUJXBX+cUrdYY1WY6KrpGvcnE53tZbA/WhcPsCxW/1vEwoOb/GMoTYDe/EwaV6AB0KAjPCjO6nlyMz6rv8eoJ7vAMX/MGjqZdwO9uwBqMx4HeGYpRn7o6j2L79HfIo2vZGJ3Hw+lP2AGjxiQuHPSCJRvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766731434; c=relaxed/simple;
	bh=mSgkFZpAcq8EP790PstyVJdQlDpxHAFVHuVRIsWabzc=;
	h=To:Subject:From:Message-Id:Date; b=SjyxQi3bCh2aB3NMP3eRhdURnqAASOijK+EqW5ZYMqNUXN81c/XS688Ar497ZdlzLfbk7bjknViTFe9kpYpQc2CgQEpgVnIaBoLmmGclDbrwgvNLkIrthpTMJEk5tLHmn3zKPUh6Ja4pd6QIAUETXKVOkieWOlAFlGjZa6XG2hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OLCReyRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OLCReyRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B192FC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766731433;
	bh=mSgkFZpAcq8EP790PstyVJdQlDpxHAFVHuVRIsWabzc=;
	h=To:Subject:From:Date:From;
	b=OLCReyRD6s4Pr0jPp5kOUQTHVJ6IRbbSrYByS77WJDuqoFmZr0z2oEptKE0G5Rzyi
	 rjr+F5l5g/0rE+TRPj5LQUN5KvhemJKbdWffiVyICLpiWxnoYV0AAiratiNKI+eAwK
	 EKNArr/lOCd2gijgBGkHVgwh1XG8u6mkzWtqdZDb6vA7LnR+Tj06ioWLComtG9r+si
	 SUUsK7kSgmRnlsmiQnkTtru1Ff6Kj8xVs52LhVeA3DlyiVpwwKKRPgcYEVVUm+a706
	 ruyFLoQxB6QIciH6kQ1cVnHsq558JRwOrifIIcH7jyprVZ0nDZDkw/HOyltgYluuvY
	 6GSYd1gK7L0WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC90E8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673143362.22124.10581863047910676950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145298cb882ed3ce9ccf3bee026e1cc2f8fee05cbbec897dfea433d5f3ba05ec
Date: Fri, 26 Dec 2025 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766731433
