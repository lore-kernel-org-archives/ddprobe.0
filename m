Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB9B223DC1
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760468394; cv=none; b=ptyR5ngvd9fqFuCvuNZxiRRRwbpQ316hP4XdeYtHStKw343tz+1fgw/7E+ckIkWKRxbum6z8V/zstk69rmGhOlWsFo4HgA5bwmSZqg6KfgfJkQRu9MWD87MXldkGMYH96DUGEXNjgLcJOs4K0lB3JKnFreHb5K8b7tL0Y7oNnmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760468394; c=relaxed/simple;
	bh=nfZpRJuKqpZDMWs0ZU+Lgn4buUPqQKQBLOg0/yCeyK0=;
	h=To:Subject:From:Message-Id:Date; b=eMtlN5yOiHybgTZwtXHdyvHuGT0wkIYiSs67XJucXxbdREuTfBCUaC9HTf0M/Os2VIlb/QsvBoay1lKlN5R+qoZus8hwB6KRLE3MJoz73+TWyDMhHS2NavKkpfvmp8L+u3vpwL+pdXzdGr8iiEaiFeS1trYqmRwiuVvm8750byY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrNroDWI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrNroDWI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E6C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760468393;
	bh=nfZpRJuKqpZDMWs0ZU+Lgn4buUPqQKQBLOg0/yCeyK0=;
	h=To:Subject:From:Date:From;
	b=CrNroDWIPn0kNGQVagvQM/jknP+H8S+hSuq2swz4/7DHCZ+jbMgacIjir8UKrtJBp
	 /33UnRKNZFcwzxC4RJfR1K9qysx6+hKwlge59tDHPXUDPiWsSe0PCMlwLJGOA10kml
	 j8tIk07WLvTdLAuQ0z+IknQQ3u74RyEYxhPEM8KGA5H4qmkC0TB/0svgSaO1viz6XI
	 uwnuifjVFfAmwXSbDzR9XufoksIJoH1Df+9nBTmhLI/9qR1rAdiP1tf2rfI7syOJaa
	 ToPdz2Q9edcM1kuZvbA4lMEqNFQ3z+Z03BoF40e9Zxgw5fXT0BhSd4aG0E3YWeR57+
	 XwIGI81KotLqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E977CCD190
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046839357.27032.17973676256447870762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdfbd2545f189bae9f5a4f26958b82784673ff4f05fb63eba8913e519578d0d4
Date: Tue, 14 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760468393
