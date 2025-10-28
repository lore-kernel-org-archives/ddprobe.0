Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07C1E2494FF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761651594; cv=none; b=g8vjK9PvSlJUEZpU8srpWfrvoh34rOPcsfczjVy1JaGTfYGpCp/BcDTEyvrtzOVBQBEXculE1V9kwIhpL8Ua9o1P4gkfAGEzWDY5Lfcmaf/+ohQrI9NCXngNG7alcA9jtkuert9NFlhEj5Gk9O58bmDTI1E40wmbQhr/XUcw2Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761651594; c=relaxed/simple;
	bh=VuQegWGgte4xByjeY4OU+B0VxLo9+gdslFsz2kBSfVg=;
	h=To:Subject:From:Message-Id:Date; b=eOOI4POqrW78ZLXugNK0DIk3W7uwOK/Ov/04Y8ByxWoXDmVbQjdjjRSSo2gNQ8NyKT0gcA3O/S//N6E49eqpetZd7FYGgHNsfx9yWRFt6lgsJRQvIaaffYNDBYa38RRJziNtTpnF7WRJ6gXG+UNt8FsAL1YCx5o7R3gi7lFjEEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjzGaXIA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjzGaXIA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C9C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761651593;
	bh=VuQegWGgte4xByjeY4OU+B0VxLo9+gdslFsz2kBSfVg=;
	h=To:Subject:From:Date:From;
	b=IjzGaXIAmX2hbCxD74lUbfIMgiHe2wJTWE8qZD4SzRSfIWxlEG4PDYSg+qAmpLegp
	 ThirV9i3ZlbRecAZOqN9WcfKgO0408uO/oj7Hu5b3E7ZWxXtM74a1Qw4tNgDB3s2DK
	 gqWkqJA4hyCBCqJjETZyskWFzICzR3DkTTJjTIU41JubumwZzsJSIaJY8f+OnNod6m
	 xqRb797NbeeARMW0DpvX31xJu0coxhR62H+JqzEoD1+qQZcB9nd6zQUqk50sVPISUw
	 J7bzDEx+krPzIoYygbvOSzX+YpiqmI+mcexsWOHOsrBJXrpIdxvqTbkIUXA2ft5tcz
	 eTRr0zth6EQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F279CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165159357.11689.2245806626194392307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b634e0d44b3d7975ff94b6b9056ff216d0283f905fc8c5b31521e61ff89ea18a
Date: Tue, 28 Oct 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761651593
