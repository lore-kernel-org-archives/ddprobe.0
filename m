Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3107713A26D
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742795994; cv=none; b=i1C4APXQ6eQ7sKzGM+RCJ3EBdfYU37hCqeFZ3V/iZjJ1uOYsrbMc/57DOSHfAZAEtiuzemzgQYzTlIY0TFiS06gYB+IZ9T0dEby6+4y71siJwbqVBkSCd/42qNBLP8D+cFES3qC5w/+ei6X2wNhXzJsIT9vA4FXUGwiBxil46ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742795994; c=relaxed/simple;
	bh=Mx018s70ikCDITgGzVXJc87MKyAcxLniAOqJ8cOXatY=;
	h=To:Subject:From:Message-Id:Date; b=uGF/LoWFfaDUYLQfgt9PVWLP5nBHoA5SzRSgr9YA0IpZCJWw67ObeyraUa16aVc5CMh/IEi5FbMUJjhSxA6bWH5oWeGLWvrB5jhmLt7WMSTXmfhwdLOH3SgLaHSS60h+KhYFM5o1VKqr/YA4dddpj5O+xbjS6QKPCa7Us0VXKII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDfakYWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDfakYWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4178C4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742795993;
	bh=Mx018s70ikCDITgGzVXJc87MKyAcxLniAOqJ8cOXatY=;
	h=To:Subject:From:Date:From;
	b=RDfakYWOZut5yrNNG6LSY+rKYfUiLM1hPhMDQ5ADriCEi7l/c15Nhhqv8vWVBWjTq
	 Hc/xFk4KGAWMiK4mtdEtL1mlJKmKsXoLhlL3FgPuLPPlZpB0Ed3exesjI+6I7cNed2
	 /dwwLex6PbT9lBANK2UiyBIBPNy5XFYu5eu547dWthWBhx7/XmzUwmg8ehOR5j+xdc
	 OeBxi/e5xEoNuiY5v/iTe+xQ36L9HHlkjINVamgqdGcTFY//EEWw03XwREEbKR4oUA
	 wwmkBdpvS1cKgwk8Nv2DY84mpARW9s63IRF6T+uRUz38P4W0Xx9RZvLhaQDMtFMWOo
	 94qH+EzA3Dd4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90868C36001
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174279599358.15494.9144537797520970580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34d26e5594b015471e4ee3379196ed5612d709e46d6e81ff65f0cd2dc6110ab
Date: Mon, 24 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742795993
