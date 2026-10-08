Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 705D23822A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791479434; cv=none; b=FTltlvX3e8J90NVf81iR9tGXDB/4DxJIIbdHLmSOqAYVjLQ48Ko1DGwDCxm4zEW2Lxq67V5Q6LhTa0A7u27hZBpwKMKFZoUiXDIcHjspkeuk9rLUelJyBn7csC1cRDsJxG04uAnRav0nnazlS2QOQphR60+i3GB+FMTlK82FXSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791479434; c=relaxed/simple;
	bh=eMoor6G10+VYp7lVmY68Sd0pHRp+1opNCsKyKWKC2wI=;
	h=To:Subject:From:Message-Id:Date; b=SfVgXjVj77rBM6BXi2SdlXtEGDK46759YajExo02AwQkqnPMU0gNZu96WyjX2vKWtqmYkMLZ9VWkl6i0DfF+6CfiFRO+oCrcRffFjyYttfeXcs1gRx69X7mBIVzNr+qv4NMo1/2iOp/DmfYxFaispSjstT85OdoYqK5WIbt7W/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EMfeflYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EMfeflYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44CCC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791479433;
	bh=eMoor6G10+VYp7lVmY68Sd0pHRp+1opNCsKyKWKC2wI=;
	h=To:Subject:From:Date:From;
	b=EMfeflYTdqesMIdo2qU2D2qBXj5SQysbl7dQWYPvOCrE/MZj6vV4/6/P/jcyp0fiO
	 h/T5Js1F/ReNaec2mVZn3bS/papzle/KA+VgZ36xlWLUEGb3LILNbKfPHgPSyBVG6J
	 tysaUFkcKVAfdkmeKGYAlO2EdxQIFlMWuwkBWT4adOZMhzDomyIuoj+PC+WILzUKpi
	 C6x2Hb8NEMZC/2qPSAyBFQieSZWtviQL42eEq4/21299NFYznjfVOgIreDIA0nUh3c
	 QCTuOYrm4m1g3u8XHB7uya9JcRZ/FIVKVSIINdbdqR24RowBfno2qkVNYottNr48nB
	 IhPg1zykCNReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA737CA600D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179147943368.21427.13611943586452363400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45b29812822e7b7a7233b94672869245c933ea15aa44017177176af91dc3be58
Date: Thu, 08 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791479433
