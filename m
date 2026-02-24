Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0221D33C195
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771971294; cv=none; b=sTxw9RrY7g/WaZFtEEx8b3OhDvqKgw4iG8V8yTCnLZWA7L9r/C1icqm7xbGWM+k0qSF7BdaqzvbrzJNsmpebwteRGoMRtRZuzP95WdxatJd92x4iawgIrKwrkB3m1yUEEqOtTOW5lPERCLQzXp3ezADo8gBr5QyJgMkoHhfePhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771971294; c=relaxed/simple;
	bh=TmQBy5GeXNtzWWfsYgHhG4pdhJrML+ZNqAbXFVGBJPk=;
	h=To:Subject:From:Message-Id:Date; b=WmT5iU59nzUngb9MrfvOn0P7A0TEr0IQoDQ/wLbl/iNPnIIzA+WKcSntlvgOT4dfmKFyEHrqECD+sCB7GvHksxM54xtYZzrmxuzVd5LpnuYJUhiMWx+l4nYoywumIBlb/T85swA0krCQu1TgaBDNnZ1tlc254mAo/g9CRBMpv1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9eE8MCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9eE8MCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DD8C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771971293;
	bh=TmQBy5GeXNtzWWfsYgHhG4pdhJrML+ZNqAbXFVGBJPk=;
	h=To:Subject:From:Date:From;
	b=E9eE8MCHw5m+ht80a3RQrgY7q91bRRPdlE1L7zOYCPDdSknnWrX7yfjoFsGmReEk5
	 2S8UNwQCOp2SMO8lYhMjjjF4LKlkblf0rYN3M3UBZ0QxUNR75vp920kWN5zaTVKYse
	 I5pnVfiYynwFJb3HviAIkuemA+pV62VPcj52Z0m46/Pkkm4DfoDhGFbAmiB4zr5xzc
	 Zr//EU8W9u4bGXIHOn3yItwt7kfclJwCOLiFSQh7vMGvrOBEZ6CzZ6CzaVWR0X/re+
	 UvZdVYgWI62SaEplY2XY54CP5co+YLS82NKSsZN+/kGG73yvj29BBGoFaJmuiF85jt
	 WNQybCaFmLbYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E3F4BB93
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177197129358.7020.8846922465617228389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a291418d41b69a815ebdb8d03aee7469efb43f47e610a18f4c2a16819ebbf9f
Date: Tue, 24 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771971293
