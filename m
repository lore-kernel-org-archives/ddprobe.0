Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D73320F
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728333354; cv=none; b=Bd5KgCTvrzst9CJRfuJin3Kg//FptfgrRDS9J9b5boE9YdIYazIfKPLIZaJxEPEGjLuNc2hlczylwwcUBzIn8V+NhdFVixbRiO6rq43bqOvaiTEs/8mGzwvfNhMPqWQvIVmyuNXWXQOQhTMPOeNOGfimTRNT5rUnzyCLaSRd0zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728333354; c=relaxed/simple;
	bh=ZPhk4dKZTYfRFp3NSL9zFXNsjQwaemRTOSJ9XTBhjY8=;
	h=To:Subject:From:Message-Id:Date; b=PaT33ib+HTaLFuGavj5S8jHpgGIgz6IMfIDAibXIq05VA/p4V1zQcAYt1edVLrs7RcIQ5WfxauClFnx3r0NxRdui3n31jP+rYWIT+xrM1VyDTOBeKE3+ILhKfsru200k0Pll+vsdI/QvB62hIzUv3Vdky6zNGe4vYScwuADacSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ctu2t8T5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ctu2t8T5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5304C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728333353;
	bh=ZPhk4dKZTYfRFp3NSL9zFXNsjQwaemRTOSJ9XTBhjY8=;
	h=To:Subject:From:Date:From;
	b=ctu2t8T5s+rZX1zsEdbN61+9iLOFM6Wwqul2xSONcT1NkuOoTquDErXTAgaoLlVcD
	 dNuql5WsMZs2LIpZV6K9QiNMVyhdA4jhloMCojxF4pEX58JxZzoYFKhCvVBQjA6bJb
	 gPqfMLEHZ44yiGbNN5/ZudpHXQ1I7B9uisxHCdPTRc19q7z02V2KljrJb/cAt/3Kyg
	 z0t1SUUbSNSL2TuOWukouF21XL6PRRjTiFhXyvEMiTB8G/pMiUnepyBC9oFHeoZ2JF
	 15+VCHnju0+y2ImIwHMlKV6qzkA0wZy7+n9+SMFcXLzFzewb0bMs/7B5U8IORbw3Kh
	 rKsn3ngTKF6YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931F6CFB45D
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833335359.12221.8747065571672544605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c92baf1e95469d4d33c84cbc0fbce0438535e3e2bed9de069e7465cc376e5ebd
Date: Mon, 07 Oct 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728333353
