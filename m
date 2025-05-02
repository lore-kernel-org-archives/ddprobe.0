Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B166BA50
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746218394; cv=none; b=SLtzOqwLmPqU0Ob35MyBJcG4wgvND0xcnXsLIrrqNsCqIZxQLHQnA2pQe8O/kMqwPB1TdVsLA3SZckoAeg0JUuYp3Ga8blP+ktmu7Et1mkYi6gdD0MvkP925Ede5YgJBFm/XfL6a0m1eNszheso0xowSosEhINGx0KgenWbnRd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746218394; c=relaxed/simple;
	bh=AFxUdmiOSnNIMKfaxKUpaxuzeKajC2MjoLXE9O9/HVI=;
	h=To:Subject:From:Message-Id:Date; b=UWktuo2R0B3RRIp9qChGPLieun35cGDVSjgPhwBxyklVqeIgI3LF/WICp57yV6cGNKmg98VKplM769b5CUDIvl0s1BPMZQrff5hX1XzuyHNSVtVWm4KC6YQXvN1O/wz4RwNeK1MwTko/9W8MFUyu9LYkqPBwYWjhL+mAFIIYbt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pncxvQfu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pncxvQfu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F81DC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746218393;
	bh=AFxUdmiOSnNIMKfaxKUpaxuzeKajC2MjoLXE9O9/HVI=;
	h=To:Subject:From:Date:From;
	b=pncxvQfuLH1V9LO/+v8mQDiEwr2LRiBfNrzWwcbUeeFVGFoF+5N5mavZi6dJHMu+b
	 oPAvW/ctuv1AoXOYKOm1m4KULUBxvk0r9E+kJW+BhhJbr67Wu2meSIdESiqF5xPO0Y
	 bgO0DmdFODyKv9U7XGyzS2K8YXIqyLf8EVtwm1oJ2QBdLimMx5v2dGIMD+uysaxUOd
	 t4ezxm3Jcwj1UQBOZDFOApoimzXqJ/9Fc21X0fKrnQnuejxQ2FdP3xt5ezeRNPLa66
	 dapR7Zrf2xOp4pdT7vWIFlwFswbxUdO+gb0BMnUY9gqSQ0oIudfkQXqhrxH9blsgX6
	 8L4VOs3mH4Uxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1DFC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621839357.11985.9931140323678039845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0802cd4514d478ba436b3386ba07b2e4647bd96bd72e2ff3436780e2683a1831
Date: Fri, 02 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746218393
