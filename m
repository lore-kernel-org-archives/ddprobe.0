Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B03815E2
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785867634; cv=none; b=c/0qWAtoWqNlO4TWMRApuM4NzLD+0SiH8JQMXJqt9a6qJm1/qEm1UnB1RNYGvORlTwSWWATgXG2lcGKV/xcWr2gp197huEjXXv5EJ/AhpEzm0OaUf70x9xHRWr7iZqK5JraNkcSOAjM+FejsqZxfN9onPPRAhL+YF9o4SPC657g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785867634; c=relaxed/simple;
	bh=EqYv7+3YREkyiqr48nx31iCS2yH7JUjlMPVlR6DnM1A=;
	h=To:Subject:From:Message-Id:Date; b=gLh8PhJ8vBvdycPQCx6O4Q5jeGAbXXLzo+PJ5Ou5FVU5oVNlfH9lK+2nVXZRvKjID0cqqRcZFrMAR4yw33ihuh7i0+iF9fJQhwmJXWN6rOGHTW4uj5nBN/wzgnaoJCpsImCyrxKGlpWkvABxWjYJY0RukubGmpKNY2D1NZaER9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nEKrLOvE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nEKrLOvE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2F82C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785867633;
	bh=EqYv7+3YREkyiqr48nx31iCS2yH7JUjlMPVlR6DnM1A=;
	h=To:Subject:From:Date:From;
	b=nEKrLOvEk3RluJyOC/RhjslNSMjNtuFTnx83QVftMV81mZBD0ANk1cq2kekiby3ze
	 0Y194OeqJWizYRKLSeECG219iqHCsWdnn1xfwbLiTXUpwVyRm7Ys3uQnOlHGRb7xMW
	 +vasPK0o3SXA1uy+2VH9w1VZwoZrR6xOLzlvVoy0Kk4gbz2MZB74KJmaFTPRNl95XO
	 gbD0rZdu61FgjMxnZkIs1CTH9uk4p2imGZvBeY9G6hxSxVx2AWo8+uUPQuLR5IaKB/
	 JLn4im41R+YoU2GZ+FdXZuKgPAkLIGUE2C4mkQSDKihvb7WI85vN5Ss5T20s5ANs1+
	 ZmSnWpM5kfOjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7ACC55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586763369.21632.1092563072087069707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425e98573fd746d92b3c8571032349678d7532b720cd25f4fbdd038766c2b2f1
Date: Tue, 04 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785867633
