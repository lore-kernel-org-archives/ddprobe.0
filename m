Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5213CBE89
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791319234; cv=none; b=ggGo3h0NHmbf6GTholNQKIRPInDdCEx6WnuL2cQLVWcRQyU7uayFLkxzvJlcuLc4wPTCN1Dlt/DB/+qzbA8xmlpJ6r9ZVxXWKN/yPQHSgOaoV7umkLyUF5GiU+s8iJdV5uNvu203F/tlNa4jxSd3Go/WnE6KuCgspMtVJU0KGVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791319234; c=relaxed/simple;
	bh=CZF8qC9A/y65WDRxx+EoWb/xR+cRZO74X17bpEq+mbI=;
	h=To:Subject:From:Message-Id:Date; b=GKoa1SC7XjTuwEf45j31bdeoD+lodQcUu28j3i2lz4PdIP7roviU/1EVx7eLK01woxa8TWRuP4swQXBX3FTtAkKfnFGPvNf4LGgzDtL1G0qE7C0U86eK3P96Z5IdQX+aFQXo3QFZc/iIGJjTqCaoP4E9OMSeTdB1G2YPcsCzRVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljaVx1ji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljaVx1ji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB032C4AF63
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791319233;
	bh=CZF8qC9A/y65WDRxx+EoWb/xR+cRZO74X17bpEq+mbI=;
	h=To:Subject:From:Date:From;
	b=ljaVx1jiX0c3ReZ7ae9OeYEg1yJbiUvELc8Cxd2IMxeu6o6zZlIqGRoSTQSb+ErSf
	 KwaTBk3gcVCDz8z02kiXrFQbmko9AQ2QmhPqMQaIluuVwRAuACviuue61X8QJDVvsU
	 C6dHH0+dP8unV2LflHsl7VEOTQwPX+dQuSu9gQXgIyikSptihVQD6TgKD/5EgNbgKt
	 XD1wV3jb2H3wiyWRYOrlynKjsQufT9wMCSoF16ss2HkrW+BwEb5oyakOV/LfCmjy7M
	 6bpaO1FY6o57DDHunws+UAGbEjUE7u1J+TdbJRfVWBpqL+POuF/KbmXFqK+9MqlAud
	 2oiXjxlknZVzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B432DCA5FED
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179131923372.1543.14938709405232367903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd60c6fbf9bee618fc31695f38369781f91cd26c3fa105827d9b002d061b0513
Date: Tue, 06 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791319233
