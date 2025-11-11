Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE0125A2BB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762840193; cv=none; b=S/5vD0KEEe1P+DPfnp8H5NIr21rJbRqyWd9eUcD10Ftpo12ZYllfi8bbff/nikJhLeq0aMiCc220EEzVxtLLDJ0910pKxkfkxp13qBfh5YphtVZ7tPtRnpmodNEuukwssfmcvvQaRrtylMDxr6HBDFtEcHXnVLzwHq+Mty8PPzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762840193; c=relaxed/simple;
	bh=ZkbBsiGPDovsxJnNHOVWApUCHRFrvb2mDPOuXD+OT9A=;
	h=To:Subject:From:Message-Id:Date; b=fM+gDeLMlOI7P0kaUqTKNj9L1AUZRKDOiiX4avfFBiYb10EG1vWwNPXG3I8CSStHScwWL5HJbftbh3IqEplO4WF46uHbSx+B5TUoSqVrJQenKrbE577fNyoibUEB25IEn9gx5Y8ElUtq1tyR9bmhODpBZyQaS+QQrCwjzWHaIVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LJOVhmKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LJOVhmKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23FDC116D0
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762840193;
	bh=ZkbBsiGPDovsxJnNHOVWApUCHRFrvb2mDPOuXD+OT9A=;
	h=To:Subject:From:Date:From;
	b=LJOVhmKSXgv6olPZZajAk13uiv9nZeqOTEePvW8kMAV9LbyT27iqqBdDtT1LZvUXA
	 OkhH+Ug36AR0RID5ulhHD0sI3+5SoQsMOtur3shYCKYq/cIUXbSmNGCUdeGwV3Quuw
	 Y2q494CUeyYNZEPuqeDgAokJEgUSlMUVXR7bfhIYO0JmM1mGq9jbTEeR6pzvmL/8JW
	 ZLKYMgQCHRoURwuYbrN99FieUcAlE+pJx6Oe1ZE6z8M1ZgIXS8+eDtfP5pmcQaMlW1
	 XRo4mVtimph52fS6kOyz65UNsOIK4Fhkd0GY95h/mJMW6Wrtwqmqp8U88hCORabYcc
	 3gX3DTUz/BApQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD6CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284019358.5911.12938727650544720461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c33802d50b7b012a946c0cd1c0e8514e923afc971197bc7410563dc3fd9baaa
Date: Tue, 11 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762840193
