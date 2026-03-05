Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2607E15A85A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772708094; cv=none; b=jJLpOOMoaRw9tjsQpM22LoYluvhfBPZPLs+jhf3PKW9/bVlauSs6ai1dg0+h/m8Ws7rkUMZZD8DYmf7FD7WpNYp+oiKcMm/kDB+/MEDQ3btMM9ucNyw1bTpB4MwHfE3SeRNzA+w4QKqyfVAsGxwQyM51xPSC4twZNK9ZmDyW7h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772708094; c=relaxed/simple;
	bh=8BFeN1cDqvo42MkU/bEUM96Bc7nz+7eM/CD42ejqUJc=;
	h=To:Subject:From:Message-Id:Date; b=C+FZyhnmt3GrMdM19kJROnuoWDTJwMzL4uvcpEC3J6J50PajpgFJP8yZ/E18x2Uu7M2aw0VGtkoOTInmyS81I0sY//ac8SYMN/vc5VHsZVhYiRCXSMlNrN+KAFG+v4nBTFi2kgG70NlAdZ9zntwFFkB4gOH+7ccBRw13eo1bXU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdgqynJ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdgqynJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AE7C19422
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772708093;
	bh=8BFeN1cDqvo42MkU/bEUM96Bc7nz+7eM/CD42ejqUJc=;
	h=To:Subject:From:Date:From;
	b=RdgqynJ9qs+HYArlxvrufa5UCE11fhOm6cXolL36sK/7Mb/dFWj5DzW9iiU2cMgUm
	 XKQnjRGV7lqKUO2J7Ky03DXyVXRtTNsYfLTQvfkvhoDKX90C/FqJESNxDYMrJEoKey
	 riejYlL10sToSDnLBJ5ZXUXbHoXVNJFr98ilr+MRdAYfJROvPoPSMPSIM8Bd8HugE5
	 MrAE5N4dg6CzvtUOupsgzEwm9rmhKvQy4LsU1XIRlqKBczG8JACGpFW5M6QnDfrGDW
	 RhMVucB9k5BXNwdtdmqhjbbUBDcEkeTuqogpsInMAZVXBJ1cgliupIlKztXHKo/0LE
	 kXHlJOGTRL2Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920DBF30930
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177270809359.32611.12988993771010282017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a673941719368062b68b176e132a391838d3e6dba50ad9e142c7823b32fcf54
Date: Thu, 05 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772708093
