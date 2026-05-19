Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289E923F417
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779151234; cv=none; b=gM3QdxqQ6/nieoe6NAPnVDd/sYeZfp5g21ixQxM3+3DN6blf7M7uikLSLqyo2if2t0pGkYSjY9c43bjU7MjdnCp0H73kupO7Cns6W0sfJuUU4L2bA2SqrT6o8Ddua3By2FxDMJk3Bw+MAC4VCfOxjBPU+cEEwt1Cb+YSdmJSe2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779151234; c=relaxed/simple;
	bh=ClNNUlma1OSnOVBazWv8fjkeRjzLP685sN3tovVWsm8=;
	h=To:Subject:From:Message-Id:Date; b=lydHojTrLEbDTbVnLC6G7r1X3Asqpf7NpHO8NZi1tJSs5Ot+0bxQloWssypwkaUjg09mGh0SsnkHX3+qw5+8lMxsQDpF+HZAK3K18wiPo1cZN0goBbJ0PL9yQEvX9WzkummE8hDmL/Mn4yFWNS6xS8rLyCTTgWk3Tp2U29NDjEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J+gX/dpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J+gX/dpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19CAC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779151233;
	bh=ClNNUlma1OSnOVBazWv8fjkeRjzLP685sN3tovVWsm8=;
	h=To:Subject:From:Date:From;
	b=J+gX/dpoDbasQJDfCJFoYgGrLqpfyjsmy5n0rKa61tLPdVIZUxBhYj/cC2M123BnQ
	 oKXiubpAJzN4b5oSoXmqcXsZxNIK6ECyXoxrciMVmt01RjhkJrucmAaY+7ba/sZixx
	 huFKuorkVsv5ub679r290WQga4dDn0dOmhqIK4HP49JWgWudDWmW9HbVK4m49cfOqU
	 IRBozTLguQfV3h9lA4xfSZnObGEXkWaRa2YikicJPUuTAQHpSPPLIDVDxz5OsDPSG4
	 RMqpcotJ5RjoSJNunu/kDLrFWLEVUGueIZbpOz0gjLay6q/N/FBBH6NMr2AfGQ+AZ+
	 ODi8gK+9IQZ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6F5CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915123369.23369.6431604451387818854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2deb53246a7ed3b88d20b307a3d88a95760c4dce0b17c9599d8f9683223237c5
Date: Tue, 19 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779151233
