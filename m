Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 559D73C5544
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781586394; cv=none; b=oMTC8/6kJgGEbsmuvga6Cd++mcDeCJFPxojaxHo3R8dlZy3uL6z4k9G3m3lC1JHX1fMwMs9CIevyTG3Ois7TaG7JujRHOoNSP4yWQcQpuYR6yyd8l48yB+/V2S/pnr8P7Fdbzv/X6HoOhOMbEO95bXmRcm4u6hQ62I1/hCqpYrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781586394; c=relaxed/simple;
	bh=ZhlsU5g9u7WtZxFGPbYafYt7Hs0tkuThbBFN2SWewxk=;
	h=To:Subject:From:Message-Id:Date; b=rxfewBA94BQM0QB49vEDw/S9rxY3GmpMGGqDeM9mpWq2vyNm7IraFQtDbtkjrs1ABcoGQcyy/M+bFVFi0nrsenHKHYfyURya8fYlJ9kz11GRUUkUsQMDQ8S6jhayMsz5cPeXVYWY7XtGwGMjcM5e02u4Aj4vczq9wW+rfsaGrR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IgiCgndq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IgiCgndq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7D58C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781586393;
	bh=ZhlsU5g9u7WtZxFGPbYafYt7Hs0tkuThbBFN2SWewxk=;
	h=To:Subject:From:Date:From;
	b=IgiCgndqenZhcy4W+BfezfDzsw0a5mWkQH9PSjdzQT/RuK499S6uZ4+JFb/3zSNTx
	 YOFp0Af5ABc2fCw+rr3Yv2mLEg5a1C7TKRqXVeiDPlOO/6xvDVcs59gr9NB1LpGmbw
	 ZTBEPJbqgIxTKTO4BvkQf11ZNW/LPE26hDJDAtJkUPniJO8H1hIc5OWpHIQJv322ii
	 3OWisNifs1Eq454BlWqJsUMLq1yEf4spkpk+Dx4cTt21ivhe/F8HJ1w1yXjSgG4l7O
	 1FzjfcahNqPA3E8nhYq//lo2cACBkWaDB95tUjr84zUKUTJK71H7w6ZamSFqvCF1hE
	 FcahknR4aX4Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8878CD98CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158639380.12175.14295527394887230832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f967b44b152ebe7a74e659f7665d47fe55dac7c2751dbeebf1a1f71c9cf7174
Date: Tue, 16 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781586393
