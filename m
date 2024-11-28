Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3FC146590
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732779354; cv=none; b=YiNRt0HSoCWsiMf44pb63yNqZJX2YYLpY+yAm2LWO1IxBeGP0ICJeCjOMTiTUFilRULKT28U4FsiSspc+fBWMWyVcmxoj9dmdG0DttjI882T5gk+ayq+fBDS5usF6kpxz4WMJ4RzbKt4ZCc+Gvs0D/epfmTP2Nh2JIe5I/n7nXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732779354; c=relaxed/simple;
	bh=z3EkcGU6yjrE2nP9+Ouyo9MXGpcp2LhbIE9TPSkfSq8=;
	h=To:Subject:From:Message-Id:Date; b=gzL2TQcotY6drngihWczEV++As94K8vIiA7Ahw5khG7mdr6w6b4P7i66Fvvy630d7EYvZWs2ikBAUc/Br3yIcZiSAVgYttUHNtKOsnvZ3Ulil7IilE1TO8+1Exv3RnBbvOY4dD46GxdqaNmChDFv1T/u2mVRzmsMfErP3Mj51k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As3AdEkA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As3AdEkA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6B0AC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732779353;
	bh=z3EkcGU6yjrE2nP9+Ouyo9MXGpcp2LhbIE9TPSkfSq8=;
	h=To:Subject:From:Date:From;
	b=As3AdEkAL/TPChPBxLSRvsXNv0h2XQTPHbF5HWi5dryGZZHU7LzXRuiN8R+LGj3XC
	 rQb0uNqlJO+htUi5l4oizSdYf96XguX9Tu92mz5I2BgcfiejLS4mi7SLi6DP9n5tUI
	 Gd/MXmKeijLg1q8uXrk9LRBR2vW+XFJqma90O5uwn7HwxwTAOnfdF3ReANnNWNeZaA
	 N/hw5GB+1g0+JOZb0+4IBeN7A42LaM1B2/dS83RRxaiEURvetdfjY/Bn1Zial22znb
	 MekrDBWzVJT1m5LM26qCdq5kh/uTD4PVaqu+dc/58UptDyK04IjGwRISKGYiuP9buR
	 pn7lWx0rFtBlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD37D690E3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277935370.23652.6721017328898372937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b647669b67943f3f07e2469188be7a47385a62e1b2753974cad4d235b5328e5e
Date: Thu, 28 Nov 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732779353
