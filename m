Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F99A1429D
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776665254; cv=none; b=RLbBivtr13cHBEelmsT3xd8ufxr4eq03sOIn4dCDNHS0xHlTwo57L4AoMZpwD65M6bSppPIblhxFVVUyFkf2ggj07YgcUAtX8Xjsq9Z6sl0eo2FaOGk6ZAd/lawhKmqMKl2DuhzKemPIXv2RQW/yemQmVqxAlAelfDK6AHcmhO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776665254; c=relaxed/simple;
	bh=35ADn7OFTvrUd34ljktksRZWAV6Eka1ZbavprLqie+4=;
	h=To:Subject:From:Message-Id:Date; b=JR/mZQRRFsnqJrc9AKT1UIfIqNct9prbH7q3LGv3NFF37g/3DvsmukC+R3tURNRfphtgnLdHiF9nkYeq0l10fvYNwzUWADI0AtmXFa7HkdKOIEHnBBHO4oS5uoKt73uoHkWURMBTdaveLK3DFbpi8DYhRbitFsX+cjvxLemj4AQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5HXjdYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5HXjdYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC101C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776665253;
	bh=35ADn7OFTvrUd34ljktksRZWAV6Eka1ZbavprLqie+4=;
	h=To:Subject:From:Date:From;
	b=V5HXjdYdEQyezcXZrmWjzyPXNbH4/bjfnQcExbqDWwZdgU95qVmXULOEniS+pdNut
	 zEyV/LnNqHWq3O0UUmlq8CgP3feaT5YE/UhlD9QL8/2UkPt2bg3esDyU9dV86QhmrP
	 ykB1gzPByMwtg6MbjW8LgiKhZP58iDmpSWGNSgsx95Q7S1ImzOeQszT+GE3/qyH3S1
	 KLi7eiE+WSbihfFge2kldRU2FF0k4zHCud79rwes4AEeRwICUzGSt+OHKxTOJZgyiE
	 JGMYmYdd51/dLMHmE6IgVmrJngnmTqMALSWsUwPz81oNNNl6wHsFFH8bGA17NVmHld
	 JA6eXCtmjVEeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8CF99C86
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666525369.19889.11785975211956277949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b37724f0a6ae1db7ebcb50063895afd408b2f9869cd5a7d4140aa3747d11b31d
Date: Mon, 20 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776665253
