Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1916B1F936
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765438374; cv=none; b=TV7WNuaR55gjI8GIfcKlwgGX+Wm2mcl0UgayqXXbDWtVCRSmvxbqjBWyK7zDaoUpqSIQg7JfRsDkcrvOsMCCNcSGLgJGOW8ueT7F/pKHRNEYODxVS/9RRXyGch850jBCly0MJ+5jvBmd+PQrMiVsEETpkOeermrxrYt88zG2XC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765438374; c=relaxed/simple;
	bh=OF1xH4NYQqmuR3B7ZdycEzo8ln4tz5OIarnFcA0P2Zw=;
	h=To:Subject:From:Message-Id:Date; b=a/F136Kb1XUeWpHxEVlSU8JUOSmAZC/meL1Uk4ejj1OP2N1xllqgDbvC4pbppJ7Wmwv9MbJBxcisdZCqyQ9yufV7EbiAdXCSOxtv0paG+EdHAcr6qje89/hPt0uhf3G2U/Lyo/OJYe4DqxXrvDyRRt2lEYbUrbqUd4ROVsbi6bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwLzIm3L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwLzIm3L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E30C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765438373;
	bh=OF1xH4NYQqmuR3B7ZdycEzo8ln4tz5OIarnFcA0P2Zw=;
	h=To:Subject:From:Date:From;
	b=XwLzIm3L8O+P9GJrDk8gXMZygTTn1TK4uS2ogmqlq+NcCdEBGEDz5kOm91fZ+1aak
	 k/TCvP3r614kvsDn+/6AlmrdPtMSviC/zWztPXfrCuHp+f0ryFyHVa/DrNnTlgbleL
	 jpjudhUUppV83qCAjWQR5zHfNoDiF3nWOFfSAGXx/VrVY31HyjnwKitwv7ynWqYUyY
	 qFey/ZF599+YCme3AaVP95hU0bWDe4yQorxH71XuhtRdIUPQWZxNiLjPuI1LtNms+a
	 /8ieW7Hqu4C9HtDMzyBaN6E5Eh+9itqJ/BL0+yZmmySEpobHH27tW1NGRu0z7mECij
	 QSxuBwZPTvvtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97775D3E79D
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543837360.17549.6542438667160479597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d49a2104ca8cb53efe84b0a6ef8d65d5dc572cc68fcdfb847472355630da2d3
Date: Thu, 11 Dec 2025 07:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765438373
