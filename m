Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25972175A93
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772563494; cv=none; b=uGcddvTgFuSVrwEVWhjddIUPDGwP4Xro+tonG9O9MtNHlzTPXYLYCXGk+1v24uvxbmDLow0g6cu8tV1Bx3Lv/KyBFiQ7zhRNnqwLuRXhRxeECEWrTexY7hdyg5Bx0jMhDlGmKlGdT4cQ+YWuimamIqinnFsaiM5Hp8o1wmH16IM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772563494; c=relaxed/simple;
	bh=aFAEoP/raYsQ4OuVH8aW9yem6kcLEUugMetwScqjIiI=;
	h=To:Subject:From:Message-Id:Date; b=f5Bod4C8F+RtA4WbwpcO1jU8p+jupJC6ssfQqG9/p8LwYz/uLXy5COBjYRKf6vL2qM3dbOM/WfmYJfh5LjE96ARsuEQ9DEQSLSTlmh+b5nguREZzcmYqdxoAILtDqsNB7jGB530J7OzbrXoOQG2Z1pYVQ5UFmZqsbYq1nk4nCj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epuAVMIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epuAVMIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BF2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772563493;
	bh=aFAEoP/raYsQ4OuVH8aW9yem6kcLEUugMetwScqjIiI=;
	h=To:Subject:From:Date:From;
	b=epuAVMImofa+HtwEg0KNpPj7Z1Fi412hEYuicecy6Pzr27PC9QjSGik9xc6VBdo+x
	 CP3U2BV9fRyQaFyE/YD4F43qDa3NAbtgNGf7/ngXoEDkEpNxO2ZTVD/R+b329fJXVp
	 Fr7MexHVU4RzsA75H8aiKehgXsqIOikse+jpWdZGgJBT15+sDh72+vjvMUFIxGnA4o
	 4UDXDITCj17fJKDV8X7mnXqX3lASmfggt/61msyPbZaPyvXA3qQqxTePByPhm9i2M8
	 7G7lcVx3XOBFd6P7Qib9EEkfVMGMCNiVjtbtAYgwyDyvwCtRRXKPc0BimLy+c5B8t8
	 dDrmcIAtL85ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957BCEDEBE0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177256349359.21529.5429005769483909400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b5af2571864b3d2dab2a1679c31de5e204e2e42e98789d3b269a3dc56b430b
Date: Tue, 03 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772563493
