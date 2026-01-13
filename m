Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A383033D9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768277034; cv=none; b=RaAQN0L0jIsP7Y8xur7RyBTS4ln9eemRfT/n+25kPyZ+bZSQHguuPQjSpeLQr+XAxlgIqe2eV+SmjpuRBHwlAojayhC6jRe/F00OrRnm1lr1jf/QO2dq1GBOGGaGqcxrvk7iIu89ru/aYKium9OM7CGhImfeMj1MOWJwuQVUmSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768277034; c=relaxed/simple;
	bh=q5HFhTzWBGOgGonGAriNA2uDrq1COVlQDwCn+b9x0tU=;
	h=To:Subject:From:Message-Id:Date; b=CkpMxNzlZLUGHJopQyXFLZsS0TIeH1YAJnZyMH5Vh6GRAsiZcigz3+/zmlskg7QHxlISfJs6Md2XuJOB8AE1xpw9N2tT9+bh25Dq5qXWZH7KLRIAzOoTBKS3sAg/6fSKUiD6NnN8sNOIPXF+3VG+qHSQlywnaAvrd4QA9Gzb7es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5/sxAaZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5/sxAaZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F62AC116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768277033;
	bh=q5HFhTzWBGOgGonGAriNA2uDrq1COVlQDwCn+b9x0tU=;
	h=To:Subject:From:Date:From;
	b=n5/sxAaZ+m7zJGKwTqdURiiRTV9itEoEZv8NbZxeoRqFSKsG+R61poPly09MjEPpA
	 X1UGTc7SKo8wcb2xw/6xr2qFZJDZ4phBoMUooJDTbdQ5MtTKe8iD8InCqwLvU24TXX
	 f6IsMLHjlGUZ5mQBUEHovxconWcKjX1K58F6fbuXDkMcnmhN//2M834TNNWQ8OFntD
	 um/PVxakfElu6KUOSHRWerS432gMGbJx9ayS+bDpKFaRVREsrjykzmt2hVYwJkMWv8
	 LEA0mjf4DQxwhgAmSOZ3OPE0jMSFUgMrFBMG1wCjWv0WJ4xrwJqBRsOlo4qn8WE30h
	 i9iR+UcgbBgaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA52D29DC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827703357.30395.2454556624974803499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e2d9cf2fd09a5373f030f366bb4a068c0394c72a0294451bed2f3b93514bce7
Date: Tue, 13 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768277033
