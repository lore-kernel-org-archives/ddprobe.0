Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DDE1FDA94
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755200994; cv=none; b=n7tv34RG9IdKBeoWP2WfUGOWZtcEy7paOshN9dM8yc2Y58gQeDvCOmRm5TVEA/+MvksFxauP+XlRGdIMQun31P5PSEm0MOXO0afXIiA2zx/sx1Q1jUIe+5vxqKgtssoHVi9p8bTZPkEfVAWJc4c6m26btnv5dOYHFQ96yeM4F8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755200994; c=relaxed/simple;
	bh=S5flOTqW6wc9t+POYemzYEHeWbh2g38qKDnNjNlDE64=;
	h=To:Subject:From:Message-Id:Date; b=M3Zwk/q7FbyKD+ENhQSBsDMkPR+TbFdfadvngPGJsaTlkukl0fdQo58YPlO4jjk4Io+OaecmDMHbgs1CMIIyn06Wi7kg2ZYnySmXPwA+YpEhpSAVVIFcMIwTilxsAdLQpfDOs8f/SKqZ6wfUuO6dNsH3PcHW/9Z6h6kFbjM1mEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SdCNVRml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SdCNVRml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31EBC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755200993;
	bh=S5flOTqW6wc9t+POYemzYEHeWbh2g38qKDnNjNlDE64=;
	h=To:Subject:From:Date:From;
	b=SdCNVRmlzbv8VR4YLMxlTLeIe3CZzS6mWHnS7ID+j0ISGWY34+vOBOPmaqSuBPP56
	 aMGlt2kQTgXtpW+GmzKPCT1oPyCwxkSq6cqzN0z5f8OnWWO2ztFyYUawK8h2QSzj4F
	 4tAduFTCjIRYK6PjG1ZzmpV7NuLHrtE/vVZr3XJICQS0c//9qkKfwzDuD3ROAAXeoS
	 xc1C7CqH0TLcxbtSqte7mQ7aYDc5BCzbhzHZHBEK68zHO4/O2RJZetefgJQp8aGT8P
	 +ga2H+MTMMMq6yX7iUex2igsJytvcyNflSC7Sju80dxgAO8iZeMNTqPx/Ae7tZLiQ3
	 BWSzzDp0zqQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DC2CA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175520099357.10484.3542165439195770144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b50d72fceec339ea436a0a6c6e841c562fcc0ed86599c384c1019c2ec14902e7
Date: Thu, 14 Aug 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755200993
