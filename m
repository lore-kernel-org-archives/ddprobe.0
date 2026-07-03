Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1C023BD1D
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783111714; cv=none; b=GY9evxKsqdGkLjLiMXTkkOIcQAWTCJbYZaZdf/CY6wNYdash/Wf7VWeH5u/lDapYI1NmJTkLXmFvbN0Lk8IbmxFu3TKPGZL5MlEYpd6RHC1jYxj6R+u03h8cbAh5Lu/v0tCzZqAsDJRMsUTwg8TfauFCIZyzHokyBjD36co75A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783111714; c=relaxed/simple;
	bh=WVJ8Z5tK3NYXtyBI6/TzVQC4Objp/j9TEm9UG6XRQJE=;
	h=To:Subject:From:Message-Id:Date; b=RVnNOm4f7rwLbmLJhsdsRschALuoapUE6DPK9JmopaLp4MQtMSZ+rah8LvOehOZFLYxXEPf1b0iZ2BfKxBSweja+arkqf+xGTiLsWKygKGlHUt4ykOBFd9ARJtf5TAG6Oh8LEEDNSxU/IVepWa/0j/Z+ibz3QTWeVC836PkJpB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAozg1Pg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAozg1Pg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5ACC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783111713;
	bh=WVJ8Z5tK3NYXtyBI6/TzVQC4Objp/j9TEm9UG6XRQJE=;
	h=To:Subject:From:Date:From;
	b=qAozg1PgnnQi0zzNnpIk/3Sjk52PF3uNjDFtopOSS9WWQgJxhwKi6Z5eXsN8B1ya4
	 sDvfGPDR/TMnuqP7bUh5B3exXsK/Mdym6IOe7RA34kCeSRxjxLwm9r19Nc6vutvLji
	 EPN52EdAeXrW5I/6F31Itc2S7XdBVJBSCr/1BaH+qe9IqZaaIJbkjZ3dw0MSTcf4lR
	 1AJbomjrStvfCL61pMjGmyr7bLfjzgviUbSDOXkzQ60IgfJINprSmswr2VcNCCxt+R
	 eWymNOPhLaJ1TnP30tfvCi8uOzRJEnRXfzp836IfY3+U6QPHLqxzmfezbbx6og3rg+
	 0y4NcuFmqr3mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89A1C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178311171368.26439.17922517445796043840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54347ca5ab4bb39e192d37d7a68994226308201c090e399ae60069153bb08c68
Date: Fri, 03 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783111713
