Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADA81EB1AA
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776645453; cv=none; b=bgv4ff2ZF4NVjynKzdc8Efln3M+xRPARl+uL19EnQQadmVkSpvVSZmeosyb9sWQrxQNEMNlXVJC8HLdtV7JFg1Y9n2zi1d4dY69a3Z0LX5v2LxCb/3YAfiszCFatocB+on6/VyPQ+1i7BT/1/8AFT+cSz15pdvZ3TGJM5fc48ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776645453; c=relaxed/simple;
	bh=IZ4iWgU307k03iYez4IYNzsI1EY1zvcDiauGjF9xi/A=;
	h=To:Subject:From:Message-Id:Date; b=hCEoUNKZUE8nHwxM/vhXemgaVEoVmQaPgxdTOCEfbOnDZcc7+RE+hm+8QCkZUOmET14LOcmkwU5IRVD+6lypQPUw85gD/CoFPPKgYGuMtsDwbZ+t4DLOOw9vrhKAcq/e/d57dIJWTK5iQW9M6WHUo/Kk2fl5o1mCtAzXtuBmlKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fd1GFT85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fd1GFT85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBBBC2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776645453;
	bh=IZ4iWgU307k03iYez4IYNzsI1EY1zvcDiauGjF9xi/A=;
	h=To:Subject:From:Date:From;
	b=Fd1GFT85g0puPQ4J5ERL98tqTGgeGa7i3Jk7OTcwBUKueVWPRco2BKUOSDV1vtgh0
	 cW5PlTsiRy8hlMkGA0l6+rHRiMF8rbXLlMR2idX4u6oZxwQRXMLOiz/cLhfmnT5pEk
	 OxuIdeUD0ofBhiyd0kltRQNqP5X/SofaXIqE4EZ+q4gW40vp/KP52GGrGLOZWOEqNO
	 MqpbsteIiqPCAXz6C+GW/p9073L1XgqzvNf98U/BrudrjJ3F1Ck530lMPNjOb1wGfY
	 AGizTPLZijv/ZqNZU/FIWHrX79noFtnaaJCaa6N+zppoubFcTZWD0pfy+WQ0+r7Ulp
	 4f5CVNbgOcbKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2BAEA71B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664545369.19877.10845222007252071632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c68e4346f068760cdea8fc95099e3a5a7e3d31a35a1041d98cae24fff0a8cb5d
Date: Mon, 20 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776645453
