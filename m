Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBAD2DA775
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775757454; cv=none; b=BqWDT+m0PHUx8R9yoGnv6WeW6rcaS09aJTzqa93YALk8glm29zTjt/IYWfxJgmxakUMCJa1fIbX0yP/E4HxVEC/Ul6FweFI5y2GxvhzbhH+7/1Pm6Ma12thuv3WNOnn/LPJ3XcycgGzbVgpt2ynPh/M9EWABf0Pu59/1v1or+lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775757454; c=relaxed/simple;
	bh=FRkeIXy3v4hjgiU4kuJofYqetfIny8mZ74Ph6GH5BxY=;
	h=To:Subject:From:Message-Id:Date; b=OHVomLt+aW6ipH0z4d+sz9sDYeiESyV2/FbMlu8ujQ0euwfk835WmQaCXnxfnoVh28KSDs/XNMpNM4XqbISVB+b7O0R208wpFGDCJ68thUXgpC2gdLkysl2rxL3cv6NzdFoweVjIAdoG+04PHhw5OG/HgDnq5OJoXY0J7slCUag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdsU5SlC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdsU5SlC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C41FEC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775757453;
	bh=FRkeIXy3v4hjgiU4kuJofYqetfIny8mZ74Ph6GH5BxY=;
	h=To:Subject:From:Date:From;
	b=kdsU5SlCwhKiyTcmZRdaBf57qupipFsznXBZe6NQ/7PZ1xNCdMjfObkgMOV3gJUlm
	 yHozMMfomhLkMlfOFkBD53en2oFeIStEdEDcjTM0WOewrL0bwOYeSttt5Uv8LtYYTe
	 HVrkBIbBJW5JjMqS2Jh+FyzqdORCCv1sJIywwjeRLaWXXcYIkOUuOk3U2B/fQVQJHO
	 12GgTIduQ1MOuETWwHVTr8YcK85aJ6+nFayTee6W8ccUf+6RrtSKQHrqcZ3PH/KTOG
	 eIwY87XVaiF+Q2RPYFdZXFHt+qJaMjduoXqgPu6927yU4zHRgslAasIZiMPnhcIiGV
	 COQmp8xjH8TqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4019F364A6
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 17:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177575745369.13574.8893583720032025505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e19d47faa2bc0dcab1855a291119028d40c77e27ee6704f016a9b103a2557ce
Date: Thu, 09 Apr 2026 17:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775757453
