Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E52A226D18
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750921194; cv=none; b=qjh4ltVYYQvfnmHAB+eb2Z2e7/mjASGBDyxLtpzqBgGXL+DU1Qw/pe6DVf35SM57cQdPnH/racpDq1rUryY1BvqEohH+VWSgL4bJx3hyEJCLhDgYwmaIrfZM3QqEptfZGQfBjWzzLL/eKo4girpNIki1EP3XZG7k1nKjJrCDVBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750921194; c=relaxed/simple;
	bh=BMAD+OcG47lzkmBHVi0mGO84zUdh3TvDQFql3BftwNE=;
	h=To:Subject:From:Message-Id:Date; b=bXWX12hemoubynFzmcr0ooZjEYtzcWLQhtgILcXa0WSY20WZ8rw2BW2I8j/kRRWGvw7B18o8s8XQrxijei9pfqo1sPPFzWIzdNJWBVpCwymn4iHEOxZUlj3lm9jpC/CvtTg5PnmmulvakSHzQMi6ui/2MsX1DVHoZCxSp1z0nWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQpyWQ2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQpyWQ2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4579C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750921193;
	bh=BMAD+OcG47lzkmBHVi0mGO84zUdh3TvDQFql3BftwNE=;
	h=To:Subject:From:Date:From;
	b=JQpyWQ2rKx3rsNVPGYqYb8XHdzjpVG+tvw1umybPljCu4PeJiISsHNpBUo1XnWTxq
	 0Avp9FIMcVBiTmnkVdJk+SUGdHLgEtLqOOJMKzEs5tvY7jDJBeF+5LTpKLBo/dUbLa
	 DmRgFglCNezknzzCVk5T3T/OcJbNDswk18Bjgv8pNYClBo8GbjHPtuhQ4C7uBoJmUy
	 JsV8HYJFlcPzg/XauV2DubVcD0N5D/TtfFIkDJc79F+vVZVvQEG4Obd87gIPMIQi9w
	 LHsSqwn106btqUzXHaENmSWnq40BMU7Lrd87snEvWkuvfo+4ZYkjaQJf0Sd8axH8Uy
	 ZdEKL5neVK8/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E50C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092119357.14850.16947557106236889733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3043b43dce0b8da3b14b72b744f97c91acfc8f4b0355d13e782ea27d6b0a3e62
Date: Thu, 26 Jun 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750921193
