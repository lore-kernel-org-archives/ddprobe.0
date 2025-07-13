Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3718D1BC4E
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752389394; cv=none; b=Fkzjy1GUnDRZ3w/ByFD/lKuhcsY7TmwSZOiV3/ujbxIt0dkV+AINExLA4k6+sFx2qUMWznyKNMbSE34JwP7F931FC+aqRfzg6980XTYgiHsDF7Eiyq3rXPlUPmLkcG8zu+Ief3sXrR22dZOb7MVQQJO8skwkdvz4eVQ7Prkd4xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752389394; c=relaxed/simple;
	bh=d0IMQj1ljOBwTGcCVwR9NmqJ56owS9lFkSEGB5N5nqI=;
	h=To:Subject:From:Message-Id:Date; b=oUMA67giUIl8RZh3OTzZCgOD28tJtGgCniBJ1NN7Q4OzZdUEsax0GGPap8tGl0gE5JkS2wKLWXmprVi5tBV5HGZ5wgBmHf0eEUxjOlMBur1uhqX2Xhcv2iRCWXUUXxtqoACsojCOFPNlnM8hCFXI8g6ZOQR8YrZWoyUkmULKtl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWXAPboi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWXAPboi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BEC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752389393;
	bh=d0IMQj1ljOBwTGcCVwR9NmqJ56owS9lFkSEGB5N5nqI=;
	h=To:Subject:From:Date:From;
	b=qWXAPboiiLhTkT2dAtGJk6aEfQDM5FTHOLCW0buHt2/07w2G2dpKUFSri1biqb8pr
	 kH4v4lTMBbDPftbrC1GIUFZBd9kBAH31hPVSvRNmlKogKpO64l3jgRvsZhvmOXIgh5
	 TYIZKoI5KUOEXIZX43qqhGlqkS1pPaKDn7lnx4Vf7AD7V/lRJR8n6T7IWVsiVcBpNJ
	 z0CiX4nEYWe/Hpv7kvXczrVlokxVjp30526XpkdoMP1FWLZ7t+ssmJGCqSU/fJHwbT
	 gpFQs+gDxBNDIBXOKIpJ3hUzyMscXgMu4pI0TSogj9V1XnpYf3FdBOD3MzValz6S7a
	 8oWVWbHcDkdAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F877C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238939357.10900.9032999992193316196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07350ede0980992e7e64a53bd1863e40e6f06817fd193cedc3b997fda64e74f4
Date: Sun, 13 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752389393
