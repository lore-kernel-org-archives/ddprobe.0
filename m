Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B482EEA8
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767715434; cv=none; b=e/+a3BVFYJS/i8uzFdUPb1qimzkLCz90kn00OAlISDsLaQsFbawqZ6stxWIvk+2WmVjHjqU03f7clSlbts9/ef1tt99HBeRXvFtrjO+uaio1AcYNz4AK/2WvOBoBFElm6nqCpz5+wIRw0JY4yR+VO8AB7SuIagk/10R9KgSK61Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767715434; c=relaxed/simple;
	bh=3hEdsU0x4byIE0ckgrNOF5bET0YpmecPZV4kr9L0t4c=;
	h=To:Subject:From:Message-Id:Date; b=fFXUEsYVbhX+EP+EJsnzbttNLBhlbANz2e/oW2CxtcB7pjDxurFLe7tTJpbZ7Ek8qmdj43p2rR9IzJ3G+jBYbHn0xdjS/daYWdKDSbHIi4iv+EitBkba+DEOkyWNEZVLvSHMgHD8QaTqN+Calby3ntTawYZwCD58VathgybtfmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PwrDvWi4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PwrDvWi4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A140AC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767715433;
	bh=3hEdsU0x4byIE0ckgrNOF5bET0YpmecPZV4kr9L0t4c=;
	h=To:Subject:From:Date:From;
	b=PwrDvWi4K2InErlo4dYMoCTsPpiYf67e+mm+gd/7pFwo7ZswcVpfuzulkbbDaVyfc
	 aEmZQ9hWgDM1A0ghaIhfPEpVcyVJbuoxVM4in88jCRe2c68Vtnw5SOv04oZAF7aGff
	 F+TY4EOsIwwYFMH8R7JC++Mzv4k/hkgUfqUfPlEdIWyZr3GG5mgXuYrd9B96oXrPgj
	 KNrmzkrOcW0AzAqvWjSG+Qie3dt/6qc58da+XiunWWvJZj/aVkB9A4llkMQSdzrPyq
	 AGq7WHDn3RDbHacrzo5Ox8+1G/GICt8GbOV9mMlbnPt9NVEDXyFd6JvIqzmVyhX1T4
	 +xIUzeu2TfgRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B51CE9D74
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771543358.26035.3764526177134662504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d7554c7cb63c3f67c58a5db71944b89f9ec01a92de2a0c2a4f9258b936c174d
Date: Tue, 06 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767715433
