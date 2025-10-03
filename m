Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251A1156F20
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759521594; cv=none; b=I4mgnVKLFVTgAfGh2cptYAV7KqZFGlX9TCY1tnqksTwUqfervWcpBSlJ4Eb4626Sl6n2qcC7CemolCozItKyqdGH9eR0cBaaVl8lJuccHR7eVViZdwXB2RlCC6AHf2RlHlRy3WZB+ntF1l3FS9WflQw4mvtVRpDTejQD6Un04HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759521594; c=relaxed/simple;
	bh=C43XRgOURgFilBvh9mtob9JXljfkUHqQlryZ8Hgpgqk=;
	h=To:Subject:From:Message-Id:Date; b=H1LrHQb+clb5O6Qv2SuGKX7bz1cMuRAwAOzgsz1Od2SO0KE6V0OZ+APs99ebZJ4c34ptCto5TYSFgtr/DpexMAkKqwXB5WDRgNSo40nc3Dxhn8XdcnJv6BamwNsd5fU2DNtj6Go26DaeyY/BnMKd/HEB6zZEWygi8GuPsbOM9Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BLSv/3o4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BLSv/3o4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94ADC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759521593;
	bh=C43XRgOURgFilBvh9mtob9JXljfkUHqQlryZ8Hgpgqk=;
	h=To:Subject:From:Date:From;
	b=BLSv/3o40mwk+6OR+EYOrBwTI9tt4CxdKG3wiTB/OcHqQxVBo24r1tnW0nGfXW4hs
	 BstlN9ayugd3jbslXblfHFm4gCDCbaY+O1DuyOXKTd7cctC7daTHAt9DWQmK1OodW5
	 FuVbGbca8hfAUeRNmbJWVu2mpL/WbeL82rKKsGxu90MSkbJPVhmp1A0XKZb6PF+4a8
	 WgO+n9qfd1OcqGUF5kWadeRMTcvRc6vh9rMAqyAcTEhowGok+3E8qWgxksYSIxjsCM
	 dzY9htDJp4dLzShKoTLA/U+QN9TVvTfv+kmWyXsQ/JBaFvDL1E8SESagNKwW2GIjGJ
	 1rQ+Wroeb4Udg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FD4CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175952159358.23991.9523856190056889790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1827fcfc1cf35fb651de085418c6d798a888e9d9ce67f16ccc6c18385d8fe054
Date: Fri, 03 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759521593
