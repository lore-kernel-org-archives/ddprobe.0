Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1916539021C
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773399294; cv=none; b=b4JnESOP9JG0KaMCF6M+EZSWEMr7xhG281HE3BaRhz8gMr7wPdS6vaEufstVVhTcPHKvwhTw+wJtJe581az+N/bSDxASsjJeOBrOZ7asWEGPbqvndNgO62E4D64mN9v9xRMjhzF/F55hvZ7V7qahZLu6RLD+20P6Do2YjXMAJao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773399294; c=relaxed/simple;
	bh=1UZUa9FGoxhhmO1mEXocTI5RmSikKMQZosgOXdwOUW8=;
	h=To:Subject:From:Message-Id:Date; b=DBBAmIkgi2n86RA8eRPtIPIvMwsWRABpZG9ANKImnQIKKzNARZmxXRxM5csrwlhWkZS0/9giwqKcYapfwyVYR9lJ41bn/YJjj6l2TwkkTBFCOw/7ICVMjIYfpmPhvODcCjQGT1boa3TcHzSD5z9Fusc5EojFVrnibK2EI3mOwx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J2IlvSqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J2IlvSqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0E6C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773399293;
	bh=1UZUa9FGoxhhmO1mEXocTI5RmSikKMQZosgOXdwOUW8=;
	h=To:Subject:From:Date:From;
	b=J2IlvSqzqesvt7ru2D3+YbwWl0ZP1XjdrotBfPOjBl7Dq4eu0H5Wjn94k41P6dH/f
	 v9ixepP2WuB4kJNrxtvXhtTfkVZo5zNJ38rNP3DoM4SdQEc9jRF5XPUMim99BpNMFc
	 HfrublNNOUybX3MiqtprwtsF6Z5MEA40m1/VKF2IvMkVsDUcgGs0wrUf3tlJ9kSHYU
	 0/g4//Bv7IR/BgumnCxjuABoT7YV/rjQEhrLET0Y/9CGSXdAqtiOhFnfe6rH+EAgK7
	 yNBSb+RlfrtExTyFqQlYOG6Y4/TOfHZJdBJW+hDzxZF1cYdhL8vvIMn3iIZxaPBsp3
	 9r5iOG5xhVC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7B105F799
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339929358.472.484959177687266378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d122c7adb4e90bafdb276d45db891ce03d10e1897c8b89fda8b47b0998f7041
Date: Fri, 13 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773399293
