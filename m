Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361A81367
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761494994; cv=none; b=hZRdWZ6HFR6ApSjI1ov0hI1iPVTF83K9pQLyanxfIA/ZVOA2mwWp59SDOSUSfwpW+tQ3h38aHPrJQtFRvpdRGlv4MFhKyCmOoRlJh1zjse8ECoYk/zvZcKxept27VhkwLx+El0SU8fJ3obnjZ3OQow8oWSApz2dJChaleFgfEBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761494994; c=relaxed/simple;
	bh=c57qTbwG5tqVCeJcD9XwQ0OudGURXKm0JDSZBSs247U=;
	h=To:Subject:From:Message-Id:Date; b=HqoOUKTBeYRA5QcxC9Slun23pKqO1EnolSaT+zxuAQm8TbZ5WB94HCOZ2+T6DpaDaDYM92BkACCE5K8cL4gE858EeNfmjGBfXTBR21FuYuiycUKB6JvQc65zTcY5N02lXSXcaaNKnj3x5rC+1GXlt59tqlVdTkotPuCzWqa450E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qESj0NWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qESj0NWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A190CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761494993;
	bh=c57qTbwG5tqVCeJcD9XwQ0OudGURXKm0JDSZBSs247U=;
	h=To:Subject:From:Date:From;
	b=qESj0NWS4GJdD2U7mu69nS3aFoEhDq4skoHIri8hgKfWI0ihYBn7fY3/0/zge/n6W
	 Javisqu2HUZMHo5Q1l8kR7JQ+a+OV9qJRjkc4PgOflQ+EwB7KvapfkeOCntWE3tQOs
	 4DLvFOupo2RdkndgGVyO2MqhH3mf2xDb7c+FAXxE9qRprODnSR5z/wlM4S8iedmrGQ
	 5KGjCdpDlv4KzNbckZ9U4nDzAA89L7yHE1Hm5ehxLjTK7cUryraVru4zmmXDo0iDbE
	 jLAg2f234A1KYGdHOKqMKMCj/3T1HbNydOH6ErIaixVak+TixMVKouP1SkJf3W6kf1
	 DFc+o2S8poNjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC70CCD1A5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176149499358.2135.9834453781559138043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037e885fc57ed99609dd473f8f0bc366ffacd6d1070e2b3e1934cf767e27a8a0
Date: Sun, 26 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761494993
