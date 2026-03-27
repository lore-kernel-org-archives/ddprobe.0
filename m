Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B6C3D9044
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774602294; cv=none; b=cTywALGcLF3AYwrseXkORsRwNHDtTDsuK8h1cboEFjjMBMDJPHgwNcbzu6EVnzQk2i/eD8aRzpw7ipru9f8TmYe0vbCSlL0KeeJm3/uMKXuQj49o9IF8Jh8ApqDqnKa+WpZYepdHyFQc5YK6cUj4X/qI58bCtk88sxhzDl40gtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774602294; c=relaxed/simple;
	bh=RVHh5LgGT7oXpe5HVIYdklJc//xGT6tq6ySRVaTdP/o=;
	h=To:Subject:From:Message-Id:Date; b=C7fH+iRbJQM9qyqXjxJ2Mmmocf8L5Sc27g2PsOkIq0gdFe6WU/66CuL71Q32955JKVlgsRC4wbvo67mIgSXYSizwQhUL+fHVd4fTk7xkmhVZGVsUQ2oMqWIu8tWy6axCaXU/N+vQSWU3PZEuu1hlcnFmo1M5ompSUfAawZDXDLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRRWBmQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRRWBmQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B6FC19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774602293;
	bh=RVHh5LgGT7oXpe5HVIYdklJc//xGT6tq6ySRVaTdP/o=;
	h=To:Subject:From:Date:From;
	b=fRRWBmQtqr0CgRXAr9Lhu342raXIxUPQrgSdI52+kIQI54a2ERUKc5ModisM+bi3Q
	 4MCxDemqkkIgneNfXKZ3KJ+JIiUzbnG7AvCYVH3RG+AjU5kd9m1wSGfaaygqyrxgXq
	 /tDQenrF72AGbxFqOpyXopIYW/1L74ebNDg1zB/8d3vIwLIkIfcnDCijSHVNQrevAI
	 da1IP3Ay1ZhoPeGRGtf9waSDqn9adRrmS7Q/wugUsltTYclCKnXPwWGmn2S9dKS2SO
	 DbQhMEg8lh2RFBxRjHcTVZZTgEanWKOUPL988+Zc9z7MZRD9BHZHKeb7J2ks7cUWfT
	 rYOK0JANwEijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CE810BA454
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177460229360.9435.17153364862098898636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4527fbf2b1d05fc8a41c62429b9f9d7131c5bd489cfb6c738f5ba3f1f5ca0694
Date: Fri, 27 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774602293
