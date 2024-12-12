Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B310158DB1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734003955; cv=none; b=R9YWAaEtBNIWgub5ZlJ1Gg0E3RKIy1DknzFepqsg6HEUozpC+1xWr5QsM7BvHN5RTQ+2IJPe5aTpQD6J2RFSmA4DQxkx0cxenZvEVTbc+tAtizRcpKqSjS0Oq/aHvVctqkd+8EeeI6pbL8x9gt+GYdoJNbpwAmNShRgcZqU+vkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734003955; c=relaxed/simple;
	bh=P4WpmwAARGr/oeEf9KMmVYtRb5VAoWvK7pioBvfeCIU=;
	h=To:Subject:From:Message-Id:Date; b=jsUj/cjwybhmOaoh2CQvBIQtUuCXyFD8tKYNcD8iqgjrxQNjNSTJriIxDJAQrxsAxfPfqB6sYoK2fLwVfEDgBzefkb+v1EBfogq3mWzB85sy5/TslixBqGjq/ifCcZB14DMzeqP6CCLFh9OSvlVV5ormS4np2o9qgoxCZJ+M8s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFG609kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFG609kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF8EC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734003953;
	bh=P4WpmwAARGr/oeEf9KMmVYtRb5VAoWvK7pioBvfeCIU=;
	h=To:Subject:From:Date:From;
	b=dFG609knoloiQK5PO5nngNuT6JY9KXcQottZq4JIEGdjliRXoEbdI3AbZgNzv7EBS
	 tcH7SyW9PqGbXT5NjpqcKXq4LD16el9bkzqZCwywsjGCHwMqBHjuE7rN2Tae3Hi/JG
	 OJsmxY7maQugbEn2/2u5kMMOsBjaLL/xs7X+yTi63JMNnsmsBInoIk24kh+Ej6XfIL
	 uOTiDXL2h3rPN5qlqf/cAXbEpAugHG/m0dmnksCfFhvSG4HE+35aig43dG+4G00z6c
	 YxH9bRKz0H7Bjfu3iRa0pWtYEv7sz2hYa24A7aSEtBpthDY+qt3KCwf0DsPGQJURV3
	 YWk1SssqKPllw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A0E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173400395358.8055.3082521441548309456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b44adcbcf0bd4c63b648ff4189c5dbeb4bb173d53d13275c6a3fa96b0dda025d
Date: Thu, 12 Dec 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734003953
