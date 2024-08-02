Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3D8745F2
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722635754; cv=none; b=NjVvVKkAVmVVRqSJ24JAy+0I1epYazSyo7tOTjgAgpkv88chpBzjnwA0+M+SVTsrNLvYyzITo06m2nGi9xXSPWvAA1KQbtFRXLNqitjrdPY5NfhnQdJaKeERd+a59YZOp6FYMycwTX7kpnVNUMSDJlni+wLYElSIMPYms9Z9La4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722635754; c=relaxed/simple;
	bh=2PM9a2/vs6fCGXVyfZkKhrUrqKmFbMMUyvF8DEO4D3w=;
	h=To:Subject:From:Message-Id:Date; b=OS6yK/zyJictqgT43rbFxRFJIiXE/5415OF+8iyEDkf2DsE3NVZ8HZYASQOlxvjVv+RtC3PSGYL/329lXmYWYIqThRvwf1jbQpPFSxkmB7TFepGOi3O2jfQ5bhyHYAb5BC1uF32DhfHYhxoq+zwwVlcsJsm/4wCMwrdle2tG+Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9U+Rn98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9U+Rn98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B08A0C4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722635753;
	bh=2PM9a2/vs6fCGXVyfZkKhrUrqKmFbMMUyvF8DEO4D3w=;
	h=To:Subject:From:Date:From;
	b=l9U+Rn98I2LABtzNAdaKFc8VmOkY79o7NH9A4eKg+FotSxry4uWhSJ73QyWGp/YSe
	 IwB8YfOWYnYpeqaveyND+M8HHCIoxew0Im75nSrMUi6OLiVSSpN306WtriAkPrV54A
	 nR4sIl9DJSSHhyewferPpPlse14crVRnwo1ED1UASonGvrTXgDEzS3UcUxKq1ykzhv
	 2S68F/Tj3A481LJqEamxQkXL3uovexJP8AUf84AknjFOfqVSIBwNzyKq81Kil++Gpa
	 AsVWOnz49O6aUpC1p7a+gNxSdmso1HvqnTFq/x6Xruo6YqZbWaG+8KlXpNF99dOv23
	 RCkzPO2Sg7N4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB0DC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172263575363.32434.6711865720143895490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 494085877651fc999b3173bd660ecc480c2a2a9a83d57f09e66f0136b366ced8
Date: Fri, 02 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722635753
