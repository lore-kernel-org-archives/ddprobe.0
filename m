Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212563101A9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779401554; cv=none; b=p9SsQrqfequDEenPVHXycIXoAlqJgfit3xVcMtF1S5Hpw8B1B+I+9r6uNxGxulhBSnrE+6bJ/t/FFl21V+paEDE7xWLCHPpa82SO99PYsbkM6YWXkA+HHZotdGl9KheWSTYhwOCaET2/n0lVGL9poV/mG9gSgU+qa4HGURHVnfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779401554; c=relaxed/simple;
	bh=0mc9Lkg/ikJDpaecy1+HR2wlO7z9V5cD90/DH3/7bJE=;
	h=To:Subject:From:Message-Id:Date; b=MJhahd3iUW6iDP6yGTkBJfVnW7x5ww88HlD9jboj51mQp27vay7EemRe99B7VMl+yS4Ovj2AncBsPMTDdy2QiOSiig3YxaXmI17LiZ9sVvtl+P07/AlvFBh0DHIrpv1oX8th9k+HiF1RtLj6elfWq6pNab1pouYpidcKHJRU1NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IOB3gwrv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IOB3gwrv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA40DC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779401553;
	bh=0mc9Lkg/ikJDpaecy1+HR2wlO7z9V5cD90/DH3/7bJE=;
	h=To:Subject:From:Date:From;
	b=IOB3gwrvrv6FtaMYj3uVYrzmUJh4vmWjlnViwscrVEMa1mj//SoiOu304FdlIZfdt
	 OkM6fnGWkg8+8TuqjXfiuS8gBLXtqAWyNdnDJ7Gkym3OPFqA8l7qft5Txb5Hnifl/B
	 nitcIxT1b79apRNqM6eO9BSQqQIyYJBgabIOCx+8zt4wbIZQMcOmsF3uQuknrsYgzJ
	 MyekkRA69n+gPwKkDmPFJMow+Kab6Y6jF+24Fa0csOKyzUOuztaT+5Xy8DGzHKkSLK
	 9cXDx1o3eFhr0W2dtbxk6Fc6CitS9P9Fj27qPnewej1VPfBAaX+WvkhYeEfsHw+n03
	 Gghbal1sz39ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA608CD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 22:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940155368.18837.15528422061819696336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 291c941a83c53e796b0a7506dc549187cd34b6d502b87515191f85fcc32fe7c5
Date: Thu, 21 May 2026 22:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779401553
