Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2018A2EF673
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760108994; cv=none; b=ruwkFrDrygTr+aSbzxGMDhBSHWBkTv18uHa75AVCVSEt+TSze6K+LRNEx1pS5cWDn6eX/IAkW29jQTDq2ed5FVaNFh0vUDLWZc+AjsMU6vhVtom5Sq/ZsMi6PTKkO8nwX376oWBhHCvp5n26/gSAyw99td9m3iXmwig+kGpIb0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760108994; c=relaxed/simple;
	bh=OhxIyWiSPLyyrz8KSfccIJ9rVL/w12VNY6qAGLxq7q0=;
	h=To:Subject:From:Message-Id:Date; b=YzuGhHz9HEYj8bFoUhTILe3r72ISxpjadbDhTjiYTOamTZqyrDTiXqNleS8iBN4CBXyH9p2y5XlKPSEWZG0+TAT8Y+TX1paQaxBzugZ4b1U2sHOTodwbGZhvGcH+UOHRcXSwyHNckJdmEHfKQYsrnCnTBj+XK8bHolXpXqOGkiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2/Bvok7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2/Bvok7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE34C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760108993;
	bh=OhxIyWiSPLyyrz8KSfccIJ9rVL/w12VNY6qAGLxq7q0=;
	h=To:Subject:From:Date:From;
	b=q2/Bvok7Sj3DLBQix0tmLfHpmcs/1jsxK66uPzGEeHMeIx8P5ydXHPMKFriWtWNmC
	 0OQO1jnrDYIMF/O2amV5WdAqX1uc9TAnNIu1LgnXA5B0Poo/M9P/imvb0qIsROfvFY
	 vk4xwG2ANE/iVnKg8OGS6ivGLkFC4FZrI1bimO1khdtEX/Git6Q1Q9VkPtsRBh4tON
	 utmCbLSFkSszp3N2KVdj+FcnMJGWMKls52JpdsIaF66EwaTEZSD9OCN3Hz+jkQ1d2a
	 r+DzzNRlWfbiSnWe+Kcg+hmhdKWPUuwhpocA5/5TuFwgOxVTs7mQf6Ynf1ZwRtZRCF
	 IHBQ3OvW+xdLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95ACCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176010899357.457.142764606042861803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cf43b1cbe726cec08e3887af5e4d8ad2fc0d5766fc9c9b409d2006e7125bac7
Date: Fri, 10 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760108993
