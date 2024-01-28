Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0376F2030D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706437697; cv=none; b=OaLACxLOfilepBNGAICCYCm228hpLYCVCble7X3OPaJems06CAoUHeMyUHJPKm4rVbtNtvSV31O3OkzklvxzJGDQMQjJO14HEQum7ruqPtDRdSzbNhNdcwXfpYEDbpt/EjerQp8IWdEAldrhdHdYYkZUGJt+th/tkpklTFMCbRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706437697; c=relaxed/simple;
	bh=oK1r5WhGz5vZ1UhYwmxBz6lB9p4IfCc0X0kPzDghWEY=;
	h=To:Subject:From:Message-Id:Date; b=OnKoymeQ1koDG/NlwigK5ukXjMn3TAW+TUpMxwNnbqxlWoRHYNhx2Sw0ClnM47QHoXICX3i2WnAYjOgZycw3KJ9Nn2ss5vbZrla2wLGkP9w3fE02WwPiCV/Tq+B3bVSzVACcFu5JW0eeqBRla+zdjftkZ/cWSpP2w0cFB0KylIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ld+3JQUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ld+3JQUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BC27C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706437696;
	bh=oK1r5WhGz5vZ1UhYwmxBz6lB9p4IfCc0X0kPzDghWEY=;
	h=To:Subject:From:Date:From;
	b=Ld+3JQUbe9wHqOn3NYAzT+cE2PQtUTG5MYgdzIR79GclPpSm9U0FrGwRKNf6yHVtA
	 ijqX/IfO3+bNRp8dAYTQUxQYU5SuV65k8lACi4CaPPdxjwZ3T1N4HcbSLJXwUBOoO1
	 2LJZvTQlNpc1W3o8VvgAISRvkYop8JEyPudBN2+gbrCHg+FdJeF+gKEAGv+BjXAKps
	 VILo4hIcfPYaW3aI1UGNjeQAU7ZkcUqcTfjrN6gxF6eZRKXWUeem40rXkydQOYRA0E
	 QPEoTc1XeC2RRH3kPa86wc2i3noQzp5tYveEDrjQ+ZjNDnz8HUp85Ug2naLVPGDX5X
	 8PXFK2BB5JReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D2FC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 10:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643769637.29118.4550142150920658880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a03eacfcc5e78d318bf8a3490228c48c323354ede955b4bf81c13cfe87e01aa
Date: Sun, 28 Jan 2024 10:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706437696
