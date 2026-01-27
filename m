Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0962F36D50D
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769542434; cv=none; b=VdBxfs9y+Qut/p50udCCKomrjsBWzbCD5dTUe5cD39bmcU76llUV6YSKNGPXQG/HFXPzHaFAdAjMSb5Rd7G0R2g7mzfbCkqn3AmfgvM4dAGHHXzMvUpLAf99Al1IFsREWVIlmeYSk4ZrghOqekg0gvnNv6xmwW3xzwccuTHoilg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769542434; c=relaxed/simple;
	bh=bfZQx/e3Tk63cWY002jGtBbwIzX9//vsZV1IXDmlv/s=;
	h=To:Subject:From:Message-Id:Date; b=cjADtlhh5QMxLjVelKGUJlTfRRD7YOOTeODJWpNVowaGoZk7BOa5GwH/38HiOoJrfI5JSOSH+83H0TZpNZxtxSeEXLixZ3Xo7r5nSZca+3T0LAkygfRN8vjqkZTudG9ujS1MbphltyMOuDtXsKgKwhxkEVW1ea3u3ETsu5RNu6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n252+Nqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n252+Nqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF99C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769542433;
	bh=bfZQx/e3Tk63cWY002jGtBbwIzX9//vsZV1IXDmlv/s=;
	h=To:Subject:From:Date:From;
	b=n252+NqzWB3dzfwF6ISAEenvQg9blq4N/ipVjFdV+/K1ht2SC+PE6bl2dQffbIIHN
	 pRqyP2AXcxLMDm45gvEjQg33HQFVbcPDuX5BmLB/YXS6O8xZnG91ZF5Mdvdf6C9MJS
	 kditFw0Ji/1/ATHaBTtCeo7ry6QuwXW3fduAWhcj5Q+0v6mTVB/6XMRUh+5G1vNAn2
	 uyjr5yUCdeSBfnf1X/SGZGr8WHjVz0tLbCy4klsbHpABPKg82k7qADhkQOtJoDCt7W
	 C41S8vTi8ur8iMIKY83PKQ8msH32SArA/j9lQAJDAswZk/f+OWz5NzY5jfzfgA1lV2
	 7AMlfBs9CICFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DD9D2FEDC
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176954243358.13503.11929376534308539150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 407b5ac4a1ecfea199a34e218abe5b22c385784ed1021be5bcce8f9f98f74c41
Date: Tue, 27 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769542433
