Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F2513D539
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741756134; cv=none; b=dXF8II74Qx8ru0Izbkfl99x3qsGgrf6ABoAQ4JdIojjQZRhuMIy7KUq2jF3kD1ZzE+1IeGB901LWQg5tDLGloRrX/bME82lWH8NTIyAruyoqwH9xEiBXhaxnEjTe+rIh0VBXc46rNuYRgnt/rKw7w4f7Yk251Va4+cjNnnSX3q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741756134; c=relaxed/simple;
	bh=Aj3IYoVwQicf6MUVC1F8McZx+dNTN/8gO09+uu6nIbo=;
	h=To:Subject:From:Message-Id:Date; b=miZjAeiwp4GnCK8Hpj0Z860ESGrW42dr75cW4ciX4Q69cOY4E2npJ9Pec+49C2CIvK4DCM4HtHUHHDmcZKHcpyZsAbI4ue20lS7hoQ82Mh5ZGvyCjIgvU1YbFVK/4H63U5y+R0Wn89cfPcVBFZ0J8HWi93J0jkMpubkMNALOV+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+jSJJVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+jSJJVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC07BC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741756133;
	bh=Aj3IYoVwQicf6MUVC1F8McZx+dNTN/8gO09+uu6nIbo=;
	h=To:Subject:From:Date:From;
	b=X+jSJJVD3GrMhHSPF3MtZ9N99asmTIgCHuIi85Oy4hmykxJKPHmx+CUcxm11Q0VCd
	 uMGClZKxVnmSYDiPYQoZ8k9HHSJNUKKRXLmz9drsT6c6vNS28hbADyaagJgnsEtB/G
	 0irFmpeoairDauzqfj/EZcWFy+Nk5u61X00OLSx1j8n2Flo/y4Z5LYyzzARRh8zttE
	 7VWVdnZamj3RMJV/Qlv00y49cLPPhlVP1NVNT2ffGSY8KQaOuGT/N5LjkPeQejcYfl
	 XB/9gmzJFo6ADPHDuO9HDHEqwKLx7QAEDCOY+qLwSd47Jy7sJK+mo+zQ6qhNUiwYbI
	 y/aTdYbJTGQ9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 993C8C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175613361.31157.7839254137694506799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87ddf03f91f73de57926f06086efb0212660b0377da3715df57b88d7ac16c5e3
Date: Wed, 12 Mar 2025 05:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741756133
