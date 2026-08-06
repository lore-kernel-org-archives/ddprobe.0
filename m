Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 583A9430317
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786009834; cv=none; b=I7M120vbLuu4Mp4TjWvr2LuX1C9H749VItWxl02zV3MnRa58tFk3YpLt9GKo7ytwLgOppA1zitsBA8PDI2EgdhFkIJbGldFEq8nRJmFuw+1tWIeszJEC+PtMkkd6ueIGiUPOHU5HZqM0b/GETMwOJIQfwWy1b/Fsn/Pi/kekUIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786009834; c=relaxed/simple;
	bh=Dl2R1Dr5EmHZ6yeayBvyLgqNDiBk3GhfMczSctaipnc=;
	h=To:Subject:From:Message-Id:Date; b=H/+XgSGyfgEKLrgAOmFjIprsso4OwBpeyP0WSM3xK5TiLiZSheMXu6tuOabHvRhOv28w8PCSULSgh9TPdSPrWBRBauxwIjFTnPE6kyBgQwsZ+RD2cdubnJR3w/UYmcm693rpMPwPFxFhA/xtXw36fT8xOvhp9oDH1T+kgiQiQvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLZRnBCW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLZRnBCW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D59E8C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786009833;
	bh=Dl2R1Dr5EmHZ6yeayBvyLgqNDiBk3GhfMczSctaipnc=;
	h=To:Subject:From:Date:From;
	b=TLZRnBCWgtl22tOHxLACyvl3xAndfxve33jF0DmO4FhNJvSEGgEIxTueqMjSFI/Zr
	 M7/rrRS/6XnXg5YvcsUr9S49fX9QzBlUpp9LYfzXA6ihsMT72AgQYMTXeNr3dgZE4z
	 tkrNOmMBhsFhke8qXdqWZzbvl9Ds0EtDh6RadLn2vrhUE4r5w/K2e6urLljrdZJeYo
	 sfWXlJx7QV8aqsf1wx6N00vOCvLeL55hiWfh5sGaS/GQZks3ioEgnJ7GFVJS1VMEeT
	 ad3rWy+mx0XDy+AvKATdijQjdxZtsGjdYCaQ3TzX8kS9pIqJGNdjtrnKpFcRJK6kHa
	 TCB6QgRFQGF1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF246C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600983370.14939.12085544160433565455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcf94b72b6cc96bc9096d0ce9c203845604f39513448cfa0c6a35de44f39ad85
Date: Thu, 06 Aug 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786009833
