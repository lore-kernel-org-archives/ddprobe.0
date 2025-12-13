Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D764E17BB21
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765601573; cv=none; b=NGGtIGDRMMfJFpZe+SDBJyxheFwW1h5o1JZ62UdyAfZcWOIKdTawQLCXTe9ufPzcSLuiSh3yVC2slxzWYrqDuErUry7YX+8gdQORyENjtVMzJWuTI31SU+lM2035hv0XsP3jLWWULMby5Kdpi2Qwqf+WxOR0GvZvCyr+r2XuQ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765601573; c=relaxed/simple;
	bh=OjTZbRHanPNCvhPtA1+t7r/hLaKr7iEuiddbA58DYhY=;
	h=To:Subject:From:Message-Id:Date; b=dnXxCLfVlblUUnGE66Ci7x3/PcMOTBkPiaTPnRKixWcVDfim1s4eApBBsd7HNLo63yFNbTr3GOJwAN5X6o6XlWB++niSxDoGeKPuRv1+Ba94U6Va7S50RUdVL/iQ1dd96Mz9uKECpYHLWsNioDm4/eRH1w9x0SurD8LRjNQjIAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2oihz3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2oihz3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EEDC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765601573;
	bh=OjTZbRHanPNCvhPtA1+t7r/hLaKr7iEuiddbA58DYhY=;
	h=To:Subject:From:Date:From;
	b=g2oihz3IhqTm4ySBLtlTHTqeOSXAUrxzY/K7Lvt/LME0XdFw4cFHrCiZy/Q2L8WJB
	 0w67DCwzOpKEdvx16vT8G6mBeE1lkIgtqnMu6eyTPMIPHi1BkbuSkLd+pXwLRuu/Pw
	 jsaSHimum31dm1BSsBl1HKmekdQ0JG6eC+ILGurWpoTj+WQncWPkW6ZdkLiNvJamRL
	 i6+c2yB9QJ/JwYxDGQ8dH5q2F3Z5GWlzPtZjDgReuwoDXA/bVSuZ3DcPq6DNiKOtgZ
	 zTXLUkdsWR107xZMfRFr18LOTRbniAzU5mhCCIKZgRKmQHkRNH+m4XpS/dib0q0NI3
	 tOKlwOZbxw0lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9638CD59F6B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560157358.9632.14990055913162781653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d219cebeded63106fb044b73fd8c7c2e73c6b96f0caeeddbea5e1a8fe109f7ed
Date: Sat, 13 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765601573
