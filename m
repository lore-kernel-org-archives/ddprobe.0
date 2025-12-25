Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19FC94C6D
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766678634; cv=none; b=YQ3aRl0OoiKp6Ei8KqcczUQ91tpwNw6X/7/CckiOMFGN44n9EeGBa6nU5tSHlyxDX7+ChltK1+MEDyAkXhKInuKkK/9rTbzkpU/5MytvRdWBsHU8LXu++4ORnldSqylQ5MlW7AGG4jSK8cCBgz0QX8ozLzi6vqjjQKGf5WxxH6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766678634; c=relaxed/simple;
	bh=yzmZUk0I1CuXXw87gypHOSKhMYUIVitefiA30XYU30g=;
	h=To:Subject:From:Message-Id:Date; b=NnMrHtrwPppVJ8g84aFUGtkFsBb3zcnWd3qVr1/yXTza3tVNqztKrAvAarRf8hp2DKEJ7HTr7eW/gIeFybSsa52uEfePG+WoNFQfWmjJG+zzsDRX7UkgAfijiESs2bKNq12Vl0kGwY85bHbik1mz+Og2o22WEh5YUk2owK/9KSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRNr6uVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRNr6uVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FBDC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766678633;
	bh=yzmZUk0I1CuXXw87gypHOSKhMYUIVitefiA30XYU30g=;
	h=To:Subject:From:Date:From;
	b=lRNr6uVOd99KysZ6JvOlSsee3IjOwjYFjhaRYusOd2A0iE1HYTtoLWDzcse48LdXk
	 4I6qxcV3iVtu4XjbK4WUfbN+GdiYy5hTjkZ8w1nSOXEVi7kVXcWdIYyEvoz1S8Vpjc
	 OoYX/IPRfRd3g0zsRXaRgkzB99PShatdsh/WOV0ZMKsESY+fRf0n80ClMxiwbF0q71
	 VZTncZ4b2oEsDEoKu0TS//ZiI3kS4meuzcvVCLWjRptXKIBd7rSBc9u6H3PCQauDfI
	 MYjXcmgJMcDvd2MDt2v8yr8rUmOYlfs8ukB1f7Wx2P+hLJxfIaN9Iq2iHmID7T3N+y
	 PTIk/swg2i2pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94974E7AD5E
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176667863358.23881.8616161766444860452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c94653d036ad26696a17dd35b51a155789b88b57d7202835cdd0bb74800c817f
Date: Thu, 25 Dec 2025 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766678633
