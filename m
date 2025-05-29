Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F923A55
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748513395; cv=none; b=Ab4ZD51gLdDLiTrd3BKNurbIC89lKPLQZP5DY9UFWZFBBobwAnc46JbZeEEDMT/IZaSDWqLJlT9FOxBBlUXvDuNu1LV3aQ4cRR+mknGXsGgySWFT3SBAuExv79MLCS/AUSiBAszGUs70h9dukAY9IWJ/+FBuuyW+RoHLVARBhzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748513395; c=relaxed/simple;
	bh=Kf4nr+mZlstt/4pz96KCjA5AWgtupwYOvVi3dBMIq6E=;
	h=To:Subject:From:Message-Id:Date; b=oiaUSOo/ough/ybcBPwkXiOApRUEsx9FOOqQFW8Ug03D2tZTWE8n0UsztA6UtchEKwq0QJy1/kBoiBBWBymBdg2mNjMqBR4oWRsEzuVMOXiZ+Pw77NTCeCi8kb4cosWsUOCyFjKZg7yBlOFpIBj7lWnhBYthfXhKNEwNrXViUy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk5m58dv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk5m58dv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AEC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748513393;
	bh=Kf4nr+mZlstt/4pz96KCjA5AWgtupwYOvVi3dBMIq6E=;
	h=To:Subject:From:Date:From;
	b=Hk5m58dvK7ZSSZejvmOOl9zwzArqO64PAc0n3aWdWY+UdvNPcfbjjP4uGVhkCG2bJ
	 M3TLeWnuAbELlBrLYTvPihelTJD5LCTpl/YlV1XcjhJmyUFsT7TFPLHSeNotsezwao
	 UYLGM/8R70MyRf86BQw01yaSFfMGsYc4DJYP2doO8PE8ZnhpEsbF9CTB9EOwiy9L/X
	 Gf+wFvns5balWtmAiVYU+GnWURdNrKlB3M6qnmHP80vV+qstqZ6XEZnaie+THJqyZR
	 hGVoEVRI7E9RdCsmwIj3pXW2ocsi7w3K6TtK6uCX5AKTXuScv+LDa98MxqtS4jhzUN
	 o8yowKQuutHqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930C8C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851339357.9526.11068965994230284383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96dffc3f5072aa27109285b54ee0ed43258166b56e2a3f0760f5ce06a09ab7d9
Date: Thu, 29 May 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748513393
