Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6517F49658
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 23:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718580503; cv=none; b=DeQn5rB2+kx+5CafR1slcKBb4IlFM7NZsndlF83hVR5sA1vB/bw7VjzgdbdeKiGBGpoUHeA3DYkUTQ6V3gpz8/d+Bnx7pJGuSaTmGZI8Ygo8hPcJ5964gdwg74rtINfGKA88a2sTK6cJNlFnJljgH6p7mcnI52V8eHzzv5Wo014=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718580503; c=relaxed/simple;
	bh=yilMfdekAUs0Sj1zZt9x2MTc5lMfESlDVlKj1trAUaY=;
	h=To:Subject:From:Message-Id:Date; b=tNfGegWw6AAU7IpKUd9vsu2kotC0c0v2agU4Jz26JQsWDsvEPedjOc+SMgb/m6WwKQZXhLSXG+jDHE5Tmo7uF4wnABec9s5qaPp9sXdmkf37N19RXnAoXRWROsGt1ETxMNlhIdb5MPb/TveWGyid0Z59HL3iJMaPfjNFs8GAytY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=skktUUS7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="skktUUS7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAF3DC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 23:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718580503;
	bh=yilMfdekAUs0Sj1zZt9x2MTc5lMfESlDVlKj1trAUaY=;
	h=To:Subject:From:Date:From;
	b=skktUUS753pN7kdzqhvh6sQzQnVFlQxOlvQVI+Is+LJ5uJupfpWyd78RELyFFh17T
	 AQ1ceeWXTpUtxTILKyNAifkETx++Z9WBvAX9oEfZWhAWPiDy+NkcgRC540kUMbxnEb
	 WHirgu6snu9mgtTpLpx2XzSMuzxWLFhRXKEawqqHGXFKklSkmOqTJ3HzUaGC3/qvSk
	 GRyQZ2f9n2BmhMQk7FWUTuoT9h+awLgvn6vn/rwV36sL8PV4UBRRKdvz2X1ONkzQoP
	 T56/QG8SCJzPanqT3qVTWRFFe2X1BtQzHUKOnVUqBbqYhhvBjzPdNbyo2HHSVXaNRn
	 Q7H3g0E32j0Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE0E5C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 23:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858050281.12013.6201744990265013258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55578d936bfddabc6d528eb2aa6997c460cc45479d35843df585f4623f5f71ee
Date: Sun, 16 Jun 2024 23:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718580502
