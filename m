Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BE23451B5
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774049694; cv=none; b=NvovQnjxPYKahMFEtgle1Ye7Qg+O7ISgkUnL+nxw8U5mHSdr1fwws68CfDKb1NRqX3GAFlpTPfXcpm1De2/RzBRMDl6IEuui4zkKvQvZrRguqn9pyCz5q1/x7kfaOzUPkjgESAyFpSZOD2DGH7GXLlz7KtT0JH2IjF+VfMeaGJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774049694; c=relaxed/simple;
	bh=KY7XgPmiAGNeYxnx9zvXbggZkSFM6yX/UMgnUuttmLM=;
	h=To:Subject:From:Message-Id:Date; b=uCu6BrfY2voTHxH2wJOU/9snIxpNQ2dXpCgB9cvrl+QwgAYJHAeCg+dSqiRO1vT8ieWnEYa1Q2nocppBpVdSXWV632pNPufkKbwYJ8fJwn31UsLzB2opKUqD5U1lIP5phxjxH8uu/Rn/KFveGh45znoBBC8mGTLNjvreFf9poi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYjW+4Tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYjW+4Tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C7BC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774049693;
	bh=KY7XgPmiAGNeYxnx9zvXbggZkSFM6yX/UMgnUuttmLM=;
	h=To:Subject:From:Date:From;
	b=LYjW+4Tc+hHYb/xwiSgy9rhB3nhB+1JggdBJvM0MYPJm2G1Tx75Z0+UjoAq/ce78O
	 oPm5ojc9AFVT7eS02NxSAubqVtR0cJC59Xcn7Wybk93YfRYyGzJ62LAWsiKOaMQXqn
	 8AvlYs1qznJo2Kr/A7r/zhMiJS2zcEFSLEZURUetZAI3+nc8sbrBkx2FV/9IcxRC3K
	 9F1h9wF0D083VdbABzmxeBELEs5WQ9Rf895AYME/bSJyft/kAkrRRJGU/UyPgY5jYE
	 D2TdGsCnd/RYf4VynLhqxD8nsPewFJQD8woMTOpq5WZ7WMWi1HJJNsx2kwtk7CFRdo
	 u8GvaV+TlHQOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949161099B27
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177404969357.6467.4861631779829299878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f16c3aafb79c2a894f3610313dc46186a1dc820caaff5616402499a41f187f0
Date: Fri, 20 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774049693
