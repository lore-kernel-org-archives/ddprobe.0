Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1ECD33F381
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771703693; cv=none; b=D59owUKQcGPB93fxNhsUDraOKkWVZev13vR3gUi0ngXhR6jizz9EVjLWeWVWhIvMAk053drnQ08e5dgI+q8y5svgFbnkCyGw5uiVDxX6GgvEdeCtxPuhrMvX1Up3DmI1rLGowkjysCbToFhlTEWgpejBxdBj54Z0XVtZi+5zo2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771703693; c=relaxed/simple;
	bh=pCOmFfH3EY33xI84m2LZpryYPw4jrBLmkSfiHcoouus=;
	h=To:Subject:From:Message-Id:Date; b=cwwcytoGnL6HMc0VMvy8BObaDEm1FlcizTatkSV9rV6KuRMQhJQAiLXnKB4nKfPW7tYwKlBYEKBJ1m81L+t9ore66eOeeASSA9yHsBCGsqdDbM7qZBvEHprpNPWVnz/ZljQvYmo3TfrhwWBWnUXKWIyS686210wSDnL4uZfVvvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqM5/tKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqM5/tKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7413C19424
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771703693;
	bh=pCOmFfH3EY33xI84m2LZpryYPw4jrBLmkSfiHcoouus=;
	h=To:Subject:From:Date:From;
	b=QqM5/tKHFmD8Za2Xi2kj8kJ9CTS2HuWAV/UnpauvGtxAT+1XQb5wbtC3RPEZ84lKn
	 a1a6w6ab1Br7IH1VumRVyVtM/+mIo6rj4WnJ6KcgKBr+jwR0cnVCF2RV1AyGZEIv91
	 /pyHq5j2Xs1VTq1RYlcp/LNbUV/m/x06waGvlWdgW/pnfyWCBaW7rcn0eJbiMlF1/t
	 5AUhER4ruM8B9wD4SURdnQbi6HZd2wo1RmTfSW2RrDCQTg2RadrQQP2s8DMPP1f93C
	 g5zfAJtl1Aapqd4KbrdCEbZCFhR9fXcDExZufY2PGO0j3dcHglkcg3cRyd37c04k6o
	 ImNsaAV4GcRKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF5C61DFB
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177170369358.6553.12158229250186105587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0464e3ee079950d3b8ddc55f4fdca0cd05bd417c45f0c384fe7c1aaf2a55a667
Date: Sat, 21 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771703693
