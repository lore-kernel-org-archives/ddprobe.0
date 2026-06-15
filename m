Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2288F379964
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781523394; cv=none; b=ijsHQeJtGZ+WYRCh0n5IXc686NqHv2VeYAeLNyce5eASUtKhJz87II8E8KWV6gFLepxKqaUcYT4ztCZvDGvsz6Mw4QjKsjWTi72PODJLnQT4iPfzWFxi72iS/EuAz3F46CJCLgjRKpgUDiBUNKShfMHp/YEPeTNSX7wBpo54EY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781523394; c=relaxed/simple;
	bh=s63g2N00oOSWiduzC9t5ru7tYSnAmJYr+0wdGJfNdCM=;
	h=To:Subject:From:Message-Id:Date; b=ZuySjO0SaotP2r81gPb4WwG/bs2CXWpZAziPYq+W9285xQXDe4SxNRzNoO8XdMIDZ1pot5CsuII/VoQBQEE13pprEwkh0XvngjVehJGGDX56TWaRJmRhkLKy+qagb2B3WIArCgPwgeGmNwg3GREj7+SCdQreJaVrgqCUdUTz1cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9732jxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9732jxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC4F1C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781523393;
	bh=s63g2N00oOSWiduzC9t5ru7tYSnAmJYr+0wdGJfNdCM=;
	h=To:Subject:From:Date:From;
	b=a9732jxUCgeaz4QqW6ZWpT0jkGHXtKDzzaCRu2AXm07h/GqENde4kRmkcpQTvgiz2
	 UXElmis/B+StCiaQO+EfFhJ9EKlndPL7w/iho6/RXqXBbFFZzTv4nsD1tpgyJZHgVq
	 SukWxIPfJ1RDSX9nda9ZE+Bvsnv2B0UkKegZEIVQVbDef6Qfqf0OfDom3McIbHaukF
	 vLliQGLWgs179ZhZxfPhVFJTfIDFmwWu2Fcd/q5fIdBeKHVM7r06PvClpDMtF4LuMq
	 CX0oAn1c2dPsn6TYqYNtSFHnaw7afMoEabL2X++93eATAY5T2x7jfF2P/6c1nfVO6n
	 jakLECfy0VL1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF715CD98C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152339369.15690.2917471161177563163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 523e2dab94981cba6b8dd5a85c44860349979c5455dd3466f62f74bbdd7dacac
Date: Mon, 15 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781523393
