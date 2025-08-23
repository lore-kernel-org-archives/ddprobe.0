Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E6431A5B84
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755912595; cv=none; b=XUttlodHlVoTeUeucU5AyPcpxBMv8/9ilCAkfkkG0qQ5Sz+o+GulxKbyRg2+vhs1d/FZ+sDg02Ppvv3ZTdSRLg+OVokGuehgqIYdMWW2NBRm/PJSAh6KpnKqSKxjQvKfAYyak/b7aDHUFY0WU1AOPuG1rO2pLT801Tzh97GG4eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755912595; c=relaxed/simple;
	bh=GGGO4lzaaxETR9Ma/8SEuIVMdSY211xYz0U5Ply6ex0=;
	h=To:Subject:From:Message-Id:Date; b=RchtjEsxt0SG0Fcg5C8DXv8OFp3gW66F/4YUnocV1zkkQDJs11DUfrrQjCkiWfeamxyYqP5Tdre9B6X7V5s0m2/yn7INIhPA1KUExOLWQtBqmfECthgFybjzCLpVy9Mpq5JRRMW79boABN50fCdP+kXSmvoTrJtTPBC/GkT6dfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TntsBghl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TntsBghl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44DBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755912593;
	bh=GGGO4lzaaxETR9Ma/8SEuIVMdSY211xYz0U5Ply6ex0=;
	h=To:Subject:From:Date:From;
	b=TntsBghlDlH9XqYlofsLilfAJZXT0wH1HXdTEAo1I2ZGOiyL4T32ayS84Xgr/fXBq
	 KYZ/JGVZsYfKNkIcjNzvhE45TMZ51Rn38siCyBkNEyN8NjGMoCxBJvi0drsTKndoI7
	 cJoOumYfVkvSDnNCz8EHr5YzmvE7QTUpber2XGFrDCtF57HzMnAZm3EgWZtRgBIgny
	 JZVpHobU9mvAssQcZ9B81XrKbtIaMkCu7cs1kBzz0WkR7h5LKFxIDrx4uzk0YDub5g
	 FtAYDWRCY2nKT5h9gxwllKqgx31nSko3MzNS9BfnRpy6spracxtTshZEvUbjuRogRZ
	 V7lIYgurC0VXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9259DCA0EFC
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175591259357.8983.4028220753879337980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b037ec6361e7fb27c07ce9885cc047ebf5f943726148629665aed476239d79
Date: Sat, 23 Aug 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755912593
