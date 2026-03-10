Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105683AEF4C
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773131694; cv=none; b=IGnUDg16FvGFBFWO29uvO62hQlbPpdG4HGCjJiBnVDGAwnmR5SBc72lefXIrWkx5QRafXY26ukPVpQQQO2w3LhS1FIl42EuozZAeUsimTpSBh0gdzXVdSmEhd+sN1FhqcYlLOfkWvJ6jfLvbcR9urnX7pYq39C+x1q6zgMIe4Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773131694; c=relaxed/simple;
	bh=VtcIzQIEGwgUtev5lBpPk7XY7tEqVbkf4cu1eqeL3l4=;
	h=To:Subject:From:Message-Id:Date; b=LBTqDz7pPQYZFE2QsPUBeVGlghdcMFZ6jIyQ/FJYjoHazYw8V/uMBqA9rClmuQxNwxPXP1PoYL+UJmKbMmysbN67ZLUqFlM7UnixS5L42vcPmhP7x0VFaUEleQyERRNHh3O+4en671TfgFdnxK/jw6zTozsEmIPEQTBm9HYZ6cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mh90kcWe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mh90kcWe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2C9C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773131693;
	bh=VtcIzQIEGwgUtev5lBpPk7XY7tEqVbkf4cu1eqeL3l4=;
	h=To:Subject:From:Date:From;
	b=Mh90kcWeTLgoUY8jKQ86sLXbzkqqdRsnaOawSfFSbkD1jdrMgfw1yZEXtK8R+05Ud
	 0CrWssTjewCrvicyj0nuu9jss6DY6ZExVbdXuc7UFwIs1ncylhjxy+71fPPjyyMp25
	 1jXi6f0aQ6ClWhiGQB0JuU7RS0hfit1UBWbqatSIYy2jIc8q7FSD5/1UnczePHU1dP
	 Or0+0ox4f48vATzh7Rss130XcnAOGTrUpNvfkYa5lnciVfYAaORaIx5gu+PFt7BhHc
	 iQddmOwsIbYxIpFC7kwG0MvHW9bdb7IOh39+0W3sbBmuAlromkv02gulkjbT86iE67
	 EVbEIq/QBARLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB21FCC9DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313169364.10959.7367728995392616613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a466cc938d8c3750a484ab02be4a7b1e136eed44dde34ba8e37452a4ce8329e9
Date: Tue, 10 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773131693
