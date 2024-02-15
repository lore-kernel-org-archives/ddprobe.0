Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1469A15D1
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707961697; cv=none; b=lCo0PX3VpqM1bxQ33PFCinJo9J+JViwH/kQqmt6TMQbO2jPZyXsIP6swuu15KdWqKhqkhMrFfe+8y5Nggjo/E3OQWYIj7ekiKG++zqw0aVH7v5RzdtCTV6TbFjT4hs8Sx14DRHmLM3Fi+7LdVBGEaYuvSLz6TW29L6HTfyuK4cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707961697; c=relaxed/simple;
	bh=ISxIE9W35wSN/aoqkXXd8DyJt7ZjEWHAFiyowm4qg4k=;
	h=To:Subject:From:Message-Id:Date; b=UblLX1n711m+TpzHgEqvDW7P7wzw6LXys0xqTN8i5jeO4U37CxnmqcshVPefOFJnhOX7W3Or1W6oSr3DNyA8+94DHViErtZtjXvFQs2pmYWjP9lcK2SUfBxfEgnOMH7Jj5dMLknlNTF6DywYleZaNO/1ICTcs/JuDkQsxW+2+dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqm9ZIh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqm9ZIh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 815F6C433C7
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707961696;
	bh=ISxIE9W35wSN/aoqkXXd8DyJt7ZjEWHAFiyowm4qg4k=;
	h=To:Subject:From:Date:From;
	b=jqm9ZIh3hNQipvD52h5zH0ReLzPWy7ni8Lv5kTWttS795//qrHk6czB1GsrSQ5iWf
	 W/H8Ck0HGGcBhecMXoivZ/sda6zc4PLhn1ThKhc94TMdt26l7EsDtT+barwrwZm6ej
	 +pCsPUNWJ+e+v+rBEN0uuWz3I6pq7snwPcMo23v8nHGR1VbehW5MAH7YT62aIDqo0y
	 HqvAzHzIHZ2Loh37/2fmiXgnsrd3IaPbgM4hfmpmp4+Re+6nCekzQzg/NtapDzt3AS
	 I/HKtgYu864OYJxpiEhU8pOXlXfiJw0AOADbQi3noqQ/tbMV+J4IsVsktJdDq1WxKs
	 B4+TwO25oWtcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675D9C48BC4
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170796169638.31498.9682236037416002340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cddc5c9f0a3f7387d14288b8d1a7a92481121933a50a3079fe6c6e16e4a446d5
Date: Thu, 15 Feb 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707961696
