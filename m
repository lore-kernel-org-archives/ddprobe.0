Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C512E632
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707563897; cv=none; b=SNtHCOCjsu71uRRfbq/VMTpzP+Y1WeGD5H5WCZJn8BFrZ2sl7pbobnOnjHQ5AArU+jeLLZ5Gd3VqpJGM9mv0tZyE6NAGkgQYojk1hk8Qr8oJXiwWcw+g0koAb5qFXd5ehQvTh9wLYAnNnrlkCffT3azymVmkA9qV/eZp4tbe4rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707563897; c=relaxed/simple;
	bh=oh8jvDjq1gK01tAgWxESIGIOPJDfC2Ly2y0gAv9f3UQ=;
	h=To:Subject:From:Message-Id:Date; b=KNKg59GB3v5zReXLv+Fl0sNrS1MyXj1cpVCBHRfbnGv8Mlc27t19U5YCXlPq7gqzxOWtvATl/VLCh8rKZBzwBrx3DUK8KxrQVDjbnZot+1AAbZ3UiGAc+ks1Bju0M3xDW3UqtoIQAMIvdClD9gHTSabxi3eNAgtTDT6Pu6ueDDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTM0LKo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTM0LKo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 807B2C433C7
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707563896;
	bh=oh8jvDjq1gK01tAgWxESIGIOPJDfC2Ly2y0gAv9f3UQ=;
	h=To:Subject:From:Date:From;
	b=rTM0LKo4Q/528Z9V7xrJ4YOb1+r/ovBSDBom2gafV+2obMU4LfmHOmPta4J7KHnWG
	 8vdCLv0xCYBi9xtcv67o3TpKxu9YArZ6ZMgzjB6uDmIVbkwBJzL7wPryc0frAMPK7R
	 nT1zM1aTTs5vO5I8rr2cG0M/b9KbG7wzo3Lx8qIWE3O/eQFvPkMc/wumwqiiW6wJg/
	 6wQKJJt6kyAH6OwfL1lPJ3qTqD3P3b02Wn9hYStkSd6trc+gPTp/0NlCFhk38DfwJU
	 FK8zPBD7Wdk7JtnCMZqwZAwhzlrxN+N7qM2vABQDKRlkzrsjQ+nYvxDPz5kcM8h+sj
	 M6so6kgrvjqZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 650E7C48260
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170756389638.30804.6785951744434469309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f71d0c49aed4e9bf6372b3250b08f1124e73b4fc098d5370d0a70b713dc216
Date: Sat, 10 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707563896
