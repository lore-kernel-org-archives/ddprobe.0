Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212E3286430
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770264834; cv=none; b=Rj05gIu/7d2jR05/bHwyVVPKCyuw8itwLhXdc5HtuAyhXMsPzRKRtETkhfQqNFE7EXXnvw1/OCMTjONGZ8vfInubM13YrXknsmAy3fWZ0L5CJnywIa9RdUvXx6xxO16VR3UpEIoexdMwgMYVg/hcB7QYHoMldHi5gn9J+Dq8iv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770264834; c=relaxed/simple;
	bh=7U461lzvHpQB34saECJxTSnSXwHRbHacior4Cd/8knM=;
	h=To:Subject:From:Message-Id:Date; b=isRhVFG3IWO3Jqv3x8tmTxicqwoW9rLOVeeVXKbic9eDT5yP55VJbA2eHoTeVEeguVk1yGrlR63Ep2ipwvHqhhWerVXKEPKxUGjtWgdVxllsMW7SkloJwIhFRQpDVOI2Z7d3/bDkh82Losn0htGToH8slJEKM/DvTdr5Ekmffeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTWU6AbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTWU6AbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC26C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770264833;
	bh=7U461lzvHpQB34saECJxTSnSXwHRbHacior4Cd/8knM=;
	h=To:Subject:From:Date:From;
	b=PTWU6AbN3+iOJvUsoReTjmWFw/hco4z66+/SBqTMjvp+5B29BwfUA4SGeI9xHAhoW
	 IcEZaULIw1w1N3iezn4XzmAGHVYvkdmJUk9waL96lZOimRfa+KeR7BVXiOpTpxxmVF
	 ori63HONQk4m4YUG7wZ9jHTO8FpmgQTXT+uKRQ97wMoTZa0ukTC0l3Oh+sGBU0mbVo
	 DVwGWmFFPcsZ3XKl1F0re1/vdo/jl1muMtsIQGWF6xG5gMPbxlJ5M+UzHN6H7CnCaC
	 Fj9LuDVjMZLGUFs+7PEmALJLg0Cy1QAGSj3HHK8jszGw0OEcGra/QW04WinW73ACPy
	 90M94prMlDaQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9954FEA7966
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177026483359.18655.10098839362750517155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e6121a7d5a09867bd01d88186316347dab59624d8f35255f204ec84406f5471
Date: Thu, 05 Feb 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770264833
