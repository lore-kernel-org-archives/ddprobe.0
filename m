Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B312DCBF8
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753175994; cv=none; b=KGOMVz/fwzP6PYqGFJHMOo+MgDqKyEwCawKSd5rEvcbMldWylJqnHHbFyMX6q/JdLO7Whqh+V/qwkvy1ZXlPbf6raM112SmshMyGAZPsfUIG07K0OJ1I2PlusxQmtFlbVRDCbAier6cdfISoQOC/KneII8BE79qOjl4xWnifDTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753175994; c=relaxed/simple;
	bh=k3rWKYSfrAsoCX3XMia8lrhQKzlBo4uDMRBl6OppLps=;
	h=To:Subject:From:Message-Id:Date; b=ZXEphTnnL/nTx+WcTZOyRORFqJuIrwDNYb/JnoJnm7Dne0fgnOTTOBIZqW+qZ7xZ1sAE2MPylk5Uhe2HSik3zFk2J6uRkObll450Ke61OzTqxHOysAMmdL75/xf6BWGtij+cDZEb6BYiCN/8M6RGbKgpqTfkLn35MorQOYU+v2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GtozoeB7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GtozoeB7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEDCC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753175993;
	bh=k3rWKYSfrAsoCX3XMia8lrhQKzlBo4uDMRBl6OppLps=;
	h=To:Subject:From:Date:From;
	b=GtozoeB7WOao0jF+e2bd3H88mSheGVIP6Kgi+tDIauDzbJvebrS60YLeszeOmPXcT
	 qOfnYLo4kr8WAE/TRf3XXh+02OYkh4CW472axflgirABpHySAFY9qZlo80RdVNE0T6
	 tOvxVD30I0cHkTzNl+06gFtGFzXrqfevoBuMAajafHJD6yfEyA3rFnWgeO9idqUF0n
	 SlTGDEgHnCYB3vjP0WHkGqTxSWkpe+HJQ/9Bkl6PkXayiWQ75ezFFk7W4AqnuXPXiJ
	 4MhiZfZMqBorzcZjsArBzlYlib4/gDTBoAaqrgX+Kpdn+KHIOGeHnedF92JslvIcxq
	 maSYjmO0+kxyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D9C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317599358.12430.17904798456460425829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d188d73334df90cf0e9134767bcf95742a2b82901f29d3da29a9a7dadb2bb08a
Date: Tue, 22 Jul 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753175993
