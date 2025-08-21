Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D8B28315D
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755809395; cv=none; b=rm+AxABb4VAheOwpMsEhbVLmGA6MwDERH3qoc/9VuFGhHtvhqDljFkyHK24vmt6bz57g6lGpp0g/qq5sklmm2JHRtbtAILYeYmhNuBHhNorW5kFhzibJtQY8bGLuLej1lQWdN3uFjS7E/jUKNdBEIR7AyzZI2KVs2Iy1XTB/qc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755809395; c=relaxed/simple;
	bh=Q7dhFoc362kLEYpqPg5lvLwRRu+GjQXmqTSPn2KUz/c=;
	h=To:Subject:From:Message-Id:Date; b=oDHhbSaIamdrdbifxZbSgi7ODO6PWMv0FeBzXwgyL8kCJ/ij3rVs86eaF+dagUCY8uqbImpmJ1JyPVxRrrD9wsPg179Us8wmreHOY/MISJu8uwsBn8jS+aGCZeTB73I7oL7AX/uRKpygLodZFdAa2V00cx+LLtd42XmL0O01CcA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4OSGuC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4OSGuC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3EEC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755809393;
	bh=Q7dhFoc362kLEYpqPg5lvLwRRu+GjQXmqTSPn2KUz/c=;
	h=To:Subject:From:Date:From;
	b=O4OSGuC0QqPrTUcYYHmxHiBRoQ94OTlHoOtTpMBkzGKSX1RxRmlPEzBlhe5zqxrNb
	 w2e1f2CA0ptQJx0BVwOFtmkTT7nDe7EcY0t6VMGFrDFbxGhayP2Mhcoujx6QNwWalk
	 91zQhp1kMfRTm54hXbIg88bNEJiHJXbQhOu7BIqBfUNO6Emer+wxnbhZtsAw2bG9gN
	 FvL8j1tKZAYj9oV7nDYIs6StioFCcKMSevfTvRIEGmMI4GKBkhAL6bYxLcRjoARv5A
	 GwM9GVbqGpgrpNtIfajt0hxco/w1wrSh8iUNytIHRAaweWvTHSD2obYqDeeQ/mutNW
	 H4Z3MpAo8zL3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD70CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580939358.23229.1571196277862065853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c11af7ac9081d9fe5febee86586ef8135f3acc9bbc4db3eae75a04e151304707
Date: Thu, 21 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755809393
