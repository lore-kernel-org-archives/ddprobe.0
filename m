Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB37E25C711
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759784393; cv=none; b=QnlhfNF/4VZPyq1HY4boiSlZP1zMrxqV59KxsvpTyXnqKGeP6KVByXbs2ecANAnPGgy8Qd75nGZzbhA5xZp2gMBLv7kGX8dvqSjnGT3BlpZetyQIu02ak4890Ac5wVEYe8FfMFuPKQ+VqVFtaR7G/i3nYWrm/EZX7iy/I6Ii9tA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759784393; c=relaxed/simple;
	bh=Y4lniQCW/qTGBS4xo2edaazhZ34sbucLPZtqXqWYK2E=;
	h=To:Subject:From:Message-Id:Date; b=G2mjurKC1XocWdIkAmbz6o+8lxcG6iiiTBfAtxwldRBD1Wc+Jfh9ytNszpmB1EvTQmNp/E7TuJHmDp/87rSboWiMhbQmNemDUNQv7BD72cmqpuJ3c6gWTRPM0UXFn84x1KN5nLvRqvJLPKyNDSNUGD+5RiEqqYYF+uCWhxAz1HY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQdd5DP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQdd5DP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0366C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759784393;
	bh=Y4lniQCW/qTGBS4xo2edaazhZ34sbucLPZtqXqWYK2E=;
	h=To:Subject:From:Date:From;
	b=FQdd5DP59JsQg05XiRx37cKaUScmXduQkqbiYAxz+nwhfRC37qgiOTRc3+UWfu/Ff
	 vy1NNhXntnpVjZewzSg/Zx+vZNxqUGAm66q/b+qv7tkystpwXwzoroZAdvw/GN2Ntm
	 srJ8VbI43UPXQ7P7vFCLOyEpx1S+66MRT+MWurWrnSrDwqtOsGlRtZH8SPHJ2dzeja
	 g0OxH9fe/5FMrO2c8cicEsylgx+mIetAT62CPa/+cMcrYeGucWGoZIa3lZHz3xmLEE
	 mv/WGxAjjTM59AJjHiReVmcrB+cioicSHkndHvk3rjXqn6SV18Iu3FIQe5mCQEhp7b
	 KxHpoD/oz1U+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90455CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175978439358.20221.15458128530819079190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd62ee4724360daf99886584e352b357dc1664dd41284f228eb1f7127e9a7dec
Date: Mon, 06 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759784393
