Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1AB35CBD6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769888034; cv=none; b=X7uAHfi9Feog7svx05YXasf1qDa4UE3gZLgrRZP/VQmPnmlCdEfi9lRiLjQAWtl20ilm6xIltdhY7XnBg8YCcmfD5vbqaSYTyFc2CwFAAXmofVXJiXpp8mTseT+P3XW6SCgL2Rwwr/sE3Jvc1k6SbfICrRQ+JwM/e6LTAfoA3Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769888034; c=relaxed/simple;
	bh=3r2k3rPgETRWOaaS13XYYVba/O8qXhC6xMthC4FR9kI=;
	h=To:Subject:From:Message-Id:Date; b=WdiTWgcQk89bZfb5KxXAjB0OocnS2F37RApDAYvuO3XdQGET1SDjcoR5PMx1N6+HdHOs22I6g3VmgBGv52B/5q9PCNxBqZJsFxsdRdbIv2gpuV2H46gcsr+bwB+Rl8ySmo1+cgUaLl7itj/c+ZNLN7kQe1c/nXhfe5A3a5QXeBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vb4OLKeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vb4OLKeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6193C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769888033;
	bh=3r2k3rPgETRWOaaS13XYYVba/O8qXhC6xMthC4FR9kI=;
	h=To:Subject:From:Date:From;
	b=Vb4OLKeQ0sYCxagM9mSq3z70JMuByRy5Wg/tpCFVC9i7a07MN6yDKg8cueHK1QwFG
	 KDxAnexTBUmrjdYLWUtoiB36JFpChDcykNtrCxE/miqYw3FoI92e+f7LR/N7BFC6SN
	 bhn7PvQI+AxiZGl/QQCGV8DLfP60flWfQSiFE8hDfVs/cnCtMg5+kkwyOliLdpVAHn
	 646xyXNUR+bMOBCVVus2LCE+5bneyR49CngyNQPdEwWfL8O05ThEq0eiEhxqu6qDyX
	 VktfnIZHobaOnBFz1ZbY8ffypuh4jGzfTQlB0/IG7vo09AJHUScRMqUGWBW20B8Q9I
	 zq8dmEvV+uMow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95461D73EBB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988803357.31640.16524362805251383244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8457a83c38999b936e8cfbec737ce467e2b0e5d319a504e701c0352f2d498d70
Date: Sat, 31 Jan 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769888033
