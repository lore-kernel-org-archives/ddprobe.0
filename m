Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598511F9F5E
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733132754; cv=none; b=tlzmUr7rOib6IemGpHRRtdzygyBqjP1uBymEzJM99JSHwl5EfD7GBGPhFtlDqfLYvBmzcrlApYLk14vl8f/EkGV6yg3rK5wrzHRebyzLFImvG1I4wXxw/wiaEsyzsXYKeRXegfymwv9gFWmZUvVdz8xpmcchxfWqBs3+vFfytiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733132754; c=relaxed/simple;
	bh=BX02YCN3xjlEJGzvVYoUvM33OvSKSKv3kS7uCVkFexc=;
	h=To:Subject:From:Message-Id:Date; b=Kr7bTQNM2rBoI1ldCSvZKdD4gQXHaRGVN816KzsGSTrdkketNpv2BtpeBAUlJ7FbBYbcq/VtPdZaIzJG/+1kReiEkQIyNSDDygxkYpSdu3iQz1ZTv+gtOmZwkLtreuwc4m9UDyXvJ1CCcz/Ffm2dgd9hJ/h0K/sOCC8R7ARwez0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=km2ibssJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="km2ibssJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E28C4CED2
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733132753;
	bh=BX02YCN3xjlEJGzvVYoUvM33OvSKSKv3kS7uCVkFexc=;
	h=To:Subject:From:Date:From;
	b=km2ibssJjTHaFzGWwcSqp0MVXQAhXmK57mnsLhs/zoJEMT7AWtaxnf+utXgbbnb8U
	 UrBkL3k+vsdE1rgbfKXt6Rje00vHQS8Csolr7q1a2rbu7OLE4t1rTNB8UuEwHZPMD4
	 HXU3HeLGZDmPf9wMn1x8txkCV3W+prnDInc6OTuW4zuo7geL9H563IwCMX8jJTyrQY
	 VnOOL1KPVo3xabLSrxwxvXBrwrBlxAVdQn3HuOvkJQx12qWnyYFhrh111FZv7KgtyG
	 n0QU/MXvb+NGM88yFBvd6u2IEiah2WSltB+oYHW8hljAIWis8OCsDtjYhKBhKYPMKi
	 /PnpgNP/+MLBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9DB9D10DCF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173313275368.2869.11119983490235645544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1b4abb6276b02df7b7e1dc37061f0be674dd7a6e7cce9496526c2a855e85495
Date: Mon, 02 Dec 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733132753
