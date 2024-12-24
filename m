Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3468A212B1A
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735066554; cv=none; b=ej1CKKZ30MQF804qRTBHomm6GjEfiY+dB2ioEB9ePyLjdqjtmYLkqjuoaubNI74nJCwwsHyZA1/3vI78zH6VmJ5VcqzyjutCUEGtX+RGv8q+wAjJcZoTk9l+zrto9Ee2H17wUIqt1mjjMWLWiWdL+6isJeDPZejkeKOs5MWFkvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735066554; c=relaxed/simple;
	bh=il/EyfXUXkjbhoy1JxgzRnXZSWRdOQUq5TLbnuVANGk=;
	h=To:Subject:From:Message-Id:Date; b=hXQOsIIaOcon2Duu1rhqs5e4VFlBOChiswyPhlsBXIhQ+jJmmEBpg35BzA0686HV3sxDsCgy6bm/gmu3qMnC5pOGp0so3Y1006LNQzSgvsrhBhdpFFb6hTJnFv056JRyz4geouyPZYgTLYQGcrhSXP2FPRERTpEMuCAWpfO0Ndc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbHghoNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbHghoNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BE4C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735066553;
	bh=il/EyfXUXkjbhoy1JxgzRnXZSWRdOQUq5TLbnuVANGk=;
	h=To:Subject:From:Date:From;
	b=jbHghoNh1ZN7GovN8dWKX2Oh89sIWI27y3WbFLuIkbljAisuEHZtJ4mb6vQVKxDMy
	 bUMCe7kZCe2GubQVWS3vOqljmEBWEx2puowQysKuQJdwBpD2x+XKBLip+ZkVAENJdp
	 vKV1t/gddG0GsD9OG20VclExGZotGmchA8QEdYf/FeSuK+5DjyDoUaCs9tA24R8t/C
	 kpBkjA/bNXZswch1k/W6IQFCtbegJUX+Pjgw2fMFCbxmDiMT7SdgGweSTCfLQGjU/I
	 1egn1WhrC+7YVyvCy4ttZ596gAnKu3yVcgU9efF+3Us+VXAut1cxKbwblI9SHrL2Ry
	 6Tk+hY86omsPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95275E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173506655360.32346.5521506113358497681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164ba2d192cc4bf5d0c4e36b5b1aa161cb0d70829ffbe469ecc074c3fa4cbf55
Date: Tue, 24 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735066553
