Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E702BE7CD
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767777234; cv=none; b=XPbJm5EyVjuanIHYgvWcvrQ0FOuFcI30ntUQDHSdMh8zY7Mbx6EYAUSyf51Q0NWPRMFJnEOvCnTSqCP310PoQcWJ2+wGd9jjG5t2/7PSZOsd+6G6dgw0yR9TkHb4p0aXsxUTpH1ZZPR0RrxwHMYXea3ajWZmi5K4GGxc1PUupQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767777234; c=relaxed/simple;
	bh=SqJuExDGKWKZVUoXdE1bbkkWG2Iqd+LxqKBgG9LBUsw=;
	h=To:Subject:From:Message-Id:Date; b=jQRs0CBd9VuWalpWoiJg9p4mY+YSXeBQm/ihpLCjsWY2cmZsqKabQxOYl4AGJ1J9iCiEvEUuxWFfaDj0IvH3yUz5ukcGiOASmK70gajrJzbMiFiQiOQqmwfXmPwBIczzyED8Oykelr2ohUoP+kPz3kGpn5ro6YDQB/AmJGeppxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9dkwRfn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9dkwRfn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6FFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767777233;
	bh=SqJuExDGKWKZVUoXdE1bbkkWG2Iqd+LxqKBgG9LBUsw=;
	h=To:Subject:From:Date:From;
	b=s9dkwRfn4cR1fjj7tQ3o1kryd4ItUSt9PtmSqtgGfycQ249i8F8cPFmmGWsfuMM+C
	 tlXGxjFs//lklFo1X/gI0vkiKc0ezT3S5wV0nOVcUa5zTKh29LkNhwIZOCrjC/Sb/m
	 Ab34RRJ1OcCjKpKnNrkNHi249Q81+AK96M65SrICfX/nqIKb8sAj7IS2xzVEsazvCf
	 wnwg1IugALj4WeTCUyOPF2csSEv11rPWi5EXtmOZm39h7PhnNBYfbmQMayTQgCPY9b
	 GCFdTSiYxyw2gWsUmF6u3QdXqJOFyOwIdUQU3IhkD++NN1xMc+hDaRARIjnECYaaob
	 bqZdjaGEH1Vqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F0CF6C18
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176777723357.19562.14710779558355555946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea1e89d02a024703a0f9270e39db4e95249f2086565a227849590ecc9e2bf2e0
Date: Wed, 07 Jan 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767777233
