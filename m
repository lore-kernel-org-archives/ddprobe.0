Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F542E9ED6
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780347274; cv=none; b=bb8DheW+YgqS4Cj+/gMmRC8tRKA4NNkp5YzyYvCGMwcTBFTiAMoMaUAiT5IDzPIgsxt8jcAbYrXLr7TAYxA4xucJLX2gQsTwSNWRqpc43mLnHZOA4MvGcJ/8C6g5Kd7QgtPN0P7IWj5UiqzK93Lqo5d+u3IBIwrpvdhIrnWslBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780347274; c=relaxed/simple;
	bh=a3/anqYBqv61IlIHidy028Rf3jL6qLv3kn7LQW//hlc=;
	h=To:Subject:From:Message-Id:Date; b=iVBW/fh8eWwncDbOyI/8tthiNV9dLzniTZsJZuqhtX5f7peT7LaOUrQOCILg6RIeHO3AILmj9eaRkNDsJheuQLEAWfKSXWdJ9ItXXd/Wwawnh7ectgeZBnr1No66i31N1VGtiAP5Y/yFBfyOD2+3F8lRy4XKVbRgNXOxjE13Ndk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPDEufYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPDEufYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3110C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780347273;
	bh=a3/anqYBqv61IlIHidy028Rf3jL6qLv3kn7LQW//hlc=;
	h=To:Subject:From:Date:From;
	b=sPDEufYCe2MSNqIMpxzzlw6sjoQvwNDYh39P3Y0KyPmh4bNicr1TrE01CQvT7OZa9
	 GpsoEMNqOTQ+FvH+vtujAzyIKWTAI81GBcexd8qu749RMaMJ6o97oWC6HO3/Z8UJns
	 vCMgU9GCaqqptTO2Rnu34ajOvp+kChDpiaruDPchwIRY6vfvktspreyoHobEaNXiIy
	 c8oWt/L1DoPpdOBALL4v1RdutRDCYobPLCOQ9Fv03Q6qafV+oUimHDevveR3C1Hlk7
	 EgzGgji56NZ+L0ruBCkVRHd0f8kUt8PuXVCg5/OyxtsR9STVsVDYFKSgoOklxBVgjC
	 1BbvMDYAIo/AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C2BCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034727368.3764.14128807342903708368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd42f98b1b6ab2cd87851c37c32b9610ee119ba9c79e06396e9332449cebe160
Date: Mon, 01 Jun 2026 20:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780347273
