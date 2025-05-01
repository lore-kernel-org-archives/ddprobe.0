Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4921311187
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746098994; cv=none; b=qa6mufinrPWxVqK0yO9v1gT5nbJ10sZKa9cKQTB+JE30rIQc5cw8ox6BLqqg9JSY9XNKPeHCKAl9sqS8sdiAW4LKse3TUGiyfGhdKdSTqFg4kHQ3Px1l3Wsf/cBu9dk9SX70wR5tqUcSF2+Odxae52X7BSMSGCHIkR/EO1HjkOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746098994; c=relaxed/simple;
	bh=4TWHk4G1Wcl3iyRw/Abs3MkDe+WA7P9GjGKV1xi3jtw=;
	h=To:Subject:From:Message-Id:Date; b=hg4VKzcMcN9XFSEyrahOqWU6KuSIdrBlUYVCZ7UQ81cCItsrqJiR4hwB7anuqSwHZer7rpEAudKLyVKQUYDClzYHmYZG9S/hbdcM5B2YIU0/5a+bjplFHUI/0rD8zewfflQ9P50X8ISGJ5Y8yNwSe6wIV684Td+qLfxFoRYrd8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1tvozeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1tvozeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62E0C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746098993;
	bh=4TWHk4G1Wcl3iyRw/Abs3MkDe+WA7P9GjGKV1xi3jtw=;
	h=To:Subject:From:Date:From;
	b=J1tvozeoyoOQMEfsQSusnUsM9KZiBUP4x2OM/GIfWt/zIdmC7iKRLn5I7wovVaZb2
	 oQt9WpiDE33SbaeoCOCpSkYQnjiziH5LnvWs3ZX6Y9pjiSKBKpFtg1z6j3Y13mcxKe
	 HqWkz6qseu4LbwV2JVS7bGNN7aETy2xEBoNxRdIy8rBwWksb5y/KyaumVp2GYdEk3Y
	 hE1wyWEbPVjYvMYltpI/r4e5R2jIu8AOTaTNi+EmWtgyYb1YzSqdoGQbpLbLX7r4Yq
	 Pl6XXYYCMtL/2I0zF0/87P5FAa9fJ9cNnQXniFccqS8TJhhG4wJ66MBXVcncCTZzX2
	 kklYFlnaiqgew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916B1C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174609899357.32385.662503463660639002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2637f6786a963ccc5aed7601fcbbb44fa271728365040c4bf6c2b45d85c764
Date: Thu, 01 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746098993
