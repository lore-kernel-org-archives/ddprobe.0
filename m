Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22651126C18
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 07:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740469134; cv=none; b=g6QzAgjw+VgZ82UqpNSScmCrRIkksPit/Ay0lMGo829oUncOgJdrjOSayjI1ACNETjkzlwx2YHSip5vCVl5IxU4dUvaVlNhDWnRimdo7xlMYzz9CC912SZG2mwBl65UQ5Wy3J1A67V5sKXDFCQVEFlWJmCEKoF0s/fX6jjkeQe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740469134; c=relaxed/simple;
	bh=qce8o3QlttE1f9zuLkQDD1kfq5lChtyTkXUuL3XTa3Q=;
	h=To:Subject:From:Message-Id:Date; b=iEXYkggIq88gQmCNLLfrOWc/OlU+9tjvs3My3bKLv2XyxFbjxliPjfBNFlL5SlqjxxdbFy7uaCchPJWhMn+zXYU1NdG1IL2DaLAZsLHBjqPjZ22QI6ydvl7kqZ5R2kwsSWB+wKsDejR1ZlfJAozYCrD3n4WZ8mLwlNkRWhiUCi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lV9+Eh5c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lV9+Eh5c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7305C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 07:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740469133;
	bh=qce8o3QlttE1f9zuLkQDD1kfq5lChtyTkXUuL3XTa3Q=;
	h=To:Subject:From:Date:From;
	b=lV9+Eh5c8mx0vZgdFnus1iEk3vJtbs8FN+LJZK5cNHmP+rpafGGOx1oHwtmfmw8wr
	 aVHVptUxLqsoIGTddQQ2JmLCqiqlIToGemPwKMGWwFurtwperIwSSgTkKi/mIafgIG
	 w6znjAxzTgc9ajXOhl3yLqJH0d8xqe4mYJ1IWPmQB6gEDy7v2kEi7Vs1WWb8lWoa2B
	 h7wx/K7c23M2kuXzAaLL+Jw5UeA+Ss2SZudixIxoAmC9w1xb3v8j4chgC0x+nN+DBf
	 lsjPLi3jhgASTx4VHy3HBwbRmenAr5ZU3V9MRBkIKQDKzakek4wxZu+Vsd+gsa3l8O
	 BDPyMGbn/SOew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965E6C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 07:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174046913360.10402.3159974468061206890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e50b9207cf8c5304c2301783634b729c6088030caa0a657d87d7b9a7b6836f
Date: Tue, 25 Feb 2025 07:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740469133
