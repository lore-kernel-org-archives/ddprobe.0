Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233032236FD
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778466034; cv=none; b=Kk5uGs8V3BQPZyTB4YSFoTfxtq0+QIm4bPaoejZEbz7arCMvEDV4Rgi2WVk4WhoKpFWzebdkZ8JMs3YFyVacgXf3p6CIqjwTdfFsVWuXdXD2kz8OEHWXL7JwFQy0H6z9q+UVgDXWuXWRFrFBnluiZWnF/YlPUEVi/yDB8fu38S8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778466034; c=relaxed/simple;
	bh=pjlyxBPcarFRVechx8ZP5jZSnfVtToPj2N1BYeOV7G8=;
	h=To:Subject:From:Message-Id:Date; b=VGwEfszGpX931TkFb9QGREXlQ/zLDiq4YfA8095PETCyIxjMRNc3LT85skxqhsMa6U5/tBFuNH2+Lce8Lr6oCwnNviBAQmhyrYecQURsBwhRvEZ3nqSvg9K8TQopRsgPWroZu4jokvEaLsiZG/7RUlV2WueV3Vmt7DWoNuf8h+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJZqWn66; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJZqWn66"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD25BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778466033;
	bh=pjlyxBPcarFRVechx8ZP5jZSnfVtToPj2N1BYeOV7G8=;
	h=To:Subject:From:Date:From;
	b=eJZqWn66JZs0a4F6SK+q8j8M1WjmR/wv4HXQ3FwadAeQ4+eLGf8ooQkuAVitRtzAr
	 2E3zf35JEveziYbzGjPGNIzxcfNiutrhevamwPgvh0HLP+kdquwzXdW2a6wqpP5QG+
	 nY0pKWmYVKlFkJQYYQqTqu9Yt3iUDa6hQHBGBUs75gIrHJdQDOZ+oZMkKSdAG2SmFK
	 IukYqedph8vlHiBbjINlIRFsho66UkRNQFmxlK7cDw+9af66+AYGCFNxqvChQSqyod
	 S1Z6wkIy0XbhjxX7tIz7UdHz23EkVlTpH9P6Vf8f78y2ARU2m6T+71Ycdk3wYYdzzh
	 jl3azrJpKUsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8EECD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846603368.14426.13546984280420743631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92826f84aa8f1fa42dd0eb05fccf1a12d7f33efa6ba3f683d46a52fe9f4ae615
Date: Mon, 11 May 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778466033
