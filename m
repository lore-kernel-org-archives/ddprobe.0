Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A51352032
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788177034; cv=none; b=fF2Y1WHm69Z3sbD2eebVe9eIvvb9eGeMUOjz1L1zIQ8eZO1JctEqw0+Be8BmkxGsx00rvMrnE4gHYguTIQPaLNlhvimxqOCPzOIdl5SiCPBavfwAu85o9JEM2A9U8xH/Kyr+kicuI6ie62dgdDWsy3RCALYNwX91AJqX1pF18Gw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788177034; c=relaxed/simple;
	bh=BgwuV250smeXrgMlYewQH3Aun6y0YK4+RPhM8eHrt98=;
	h=To:Subject:From:Message-Id:Date; b=Kvae7J50G0scO3jDjmO1dPchZ0KD21Wa3pvEvEWbcUig5R3kPubmW678QIpJ7UEDVV0AH495VeSSnucR1l6LKzUuY+ASgOHEjxKz1avtasQGf1MdAzP1SJ4Kqc/JXqKGOQRfUyO1YH7AhM0F9u38rTjUchZ2PBOIrJNfWhjIhIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYNUIJ5S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYNUIJ5S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BA5C2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788177033;
	bh=BgwuV250smeXrgMlYewQH3Aun6y0YK4+RPhM8eHrt98=;
	h=To:Subject:From:Date:From;
	b=LYNUIJ5SGpd0aQcqkkrYHmRDBDy6XLOrx0/cYEqN6offY6EoDwZBuR2l5NvuzEtcg
	 e2vfBSwBBl5p5eBpv7EuefbsLh4NmOj63LnwWpYlUnUVn5aP0Td3GZ3Pmpk1J/jxea
	 fe5GUDVkfHFK5uKFwrZRYI+Eme0AygbWPkS3zDhEK0TEeUeQ8Yo1kDUFq9UF9YCr+0
	 WW5KpskuNNjFBjJO5AiE+x/XyOBnJMEX4kY4FIinqfECv40UwYImPvFOAitpKlq2W2
	 mdB6QeRDTd6g5V0V8M/+C9LtH8YfOTx6zLnLiH6BMhGYpG5kjHHUsYPBcay971O27c
	 KTJ8LIgDFpdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F3FC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817703368.32231.2678247773716486762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f80a41c37b7e397630ef6cf8a6d602790c43f76acaaa31b160f2a1a8fc3c353
Date: Mon, 31 Aug 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788177033
