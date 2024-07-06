Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E13341A94
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720254323; cv=none; b=NebST83iHF7h9gRmCsElj9E5F/gtqzryucMX7Lk6Rbd5Ae45ORt9dZd1u9Rh1+cckszkkVtbYEyD+ki8wyqctZc751dmQZnfsR4W79cOoMwsxw5eDt4uCImFO44cdjwIMZ1xeKEdjYAZBsb3n7c3HwfDOyo+FvSRVcoYFjowXSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720254323; c=relaxed/simple;
	bh=SCpxvVTgUz/5KyuDvaTS+mbDT/HcNyHXlYEQ4b38Xkk=;
	h=To:Subject:From:Message-Id:Date; b=Xzw2Ei0FrXy6ojyrJbzqXSoQr9nWs4QyTGIsaNKTQrOYp1YsO8JRw6jkztdVJZ2FEz/ZxfzMmMRK9pMgW0eaWXUl3W1gt1/XF7xDL7u6/DDv0GM+982jzLzhxLvmA/22cbYu6L3EltF+lGd7y7F59nXPxSv/VsJ4T7JSPmwzwcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyU42W/a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyU42W/a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E005EC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720254322;
	bh=SCpxvVTgUz/5KyuDvaTS+mbDT/HcNyHXlYEQ4b38Xkk=;
	h=To:Subject:From:Date:From;
	b=EyU42W/aA70zZ0nYre/w0fhLggKW+kmTR3kIqEUMdmHA5eX7p0CS+e+r0OOTtoFoY
	 0/BjxmExLxGnKTccfnCVoX1BoEsK5zLMhQ4vE2HZZUHAiZYPShGQb5U5eo+NxAwfS0
	 FatQYbkaazFFMVO3Hmpd+XjCZZilnSYoqJ4nj7GJo+lHIZqtnfByZOft1QHznwmVxl
	 4vlPC/ggAZso98qybkUgHvXFFO9VdF1IQKE6yoOyPogFBsuemyWtrbMIVILRjcDEMx
	 Z3MilhMMLTSHMjjo0Y1hI+qmdGXikpgl5FC6CGdllm6SMhCADzbE9b/4y9xTt4nXnP
	 pjl53tLeAUMvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9033C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 08:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025432278.27935.14722398628468130873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da53e39034519be8ec7d135eacc740bb24cee9ce06d0f471353b0782aa6c065
Date: Sat, 06 Jul 2024 08:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720254322
