Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3472928E8
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729566954; cv=none; b=IGgUyswiCO8CMbPX8WeFxFdrmEVQtVBN08+3XlK3V0oEMcCKR1vd6HP+SyMHUkVbQOYRl80pD/lw2bA4i0BSrDfMiLPj1BETiScz746/klq1Q5aGe0e/xV4R9g0yF/8fFFG661wFAs97ygEBS1vsg8Py6MGTR0uHyb1Eh2/fU3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729566954; c=relaxed/simple;
	bh=4b16SvC3dvEhBq7UYoC+L/77XXF7eodWyacmqxJ1EUM=;
	h=To:Subject:From:Message-Id:Date; b=am3MOmFcfj/lf5PXeivF+jIBk36itnfpMSvgaqk+OYvD1MrvggzzZLL4qvu/FuaYg8JE/72er5qHXKTsu2unAVn0FXgPw8cscgpkFrvvvdHWKPZCrv0RPGp0S2gyfRHJwzJgm7DBPuL4XfjATVr/SedkfJBHUD206ctUgzeq3Vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVHPf68Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVHPf68Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E2CC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729566953;
	bh=4b16SvC3dvEhBq7UYoC+L/77XXF7eodWyacmqxJ1EUM=;
	h=To:Subject:From:Date:From;
	b=tVHPf68QVEncLEyNYD+zNlyLsFi0bsgBn7EejL6yWZhqVtd00IY2y4zI4ms+6hWhK
	 ySz15UIDr0y6H51dPfpGXMACjoTotZzf4k+0YLNf6RUz5bqVg+yQD6zNxncAmSHlhI
	 aH4aYbFfuQnlLJ2SAQl89tJNL62gyF+73pyGC/NUwpYIB2bpzjwZ+9BrWjhbCcEWSq
	 ucGQS8I+XIxMEduR/jPI28DTVwAV9wAy1yYPSvG2jqoR7G3Qq20EzupaYxknG7MqHs
	 6SlC2HeR6p78WLZMQ9WG8GgWCUhh9xssBLi871DalwWDGfo1OqOnj95YppkT5Kk5kz
	 XQ3urgJ4Kk5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F47BD1715C
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172956695360.25664.17317894519110161944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2aa7123f7bbb6d16d3dd4fb363beddab8bfd91c18e4c048ae1228681b804ad
Date: Tue, 22 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729566953
