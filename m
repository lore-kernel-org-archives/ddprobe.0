Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BE93EB815
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786003234; cv=none; b=kXJtykHRJDkNqKZsTSXN0c+4N28gJPQPPEOOovf/HQd7pjONKrisDdIuDVZfXYL1NVdBnZcbNTC5msSLjpb2X10HjX+vEX35H9eKjFHEWLSVr1WtuviQSZzDPiS96eEJJfneZL36VUJNp0Uny/AMtIe9lrT52Kp7GsvpP0ZAQBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786003234; c=relaxed/simple;
	bh=Dbh7SNdmYs9ZovHRdxKSBcUmo4wGIHw6csOROCtXY7s=;
	h=To:Subject:From:Message-Id:Date; b=d8PKoUg6mrYAh95kxDIMDXo6EPYpAlByh98tN7RgY54weQe7UHnwPAgKE+tRLiSECq4ZQNYSnE3O6Ubxjy9HpxKasDIeqedQaFycuIUSDUaypIHYUAPbTkh96RZy2VbDwaMW2v4KTgELIs1Tmbsw935kDRLNPEmfnQByNMaOhlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A0pPE4Nt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A0pPE4Nt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB82C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786003233;
	bh=Dbh7SNdmYs9ZovHRdxKSBcUmo4wGIHw6csOROCtXY7s=;
	h=To:Subject:From:Date:From;
	b=A0pPE4Nt7NYBemlIDaOon2QPfyvHmL7rHwiUGjRpgWHaX3uzkfQTxOBaK6DwlQRAk
	 RN88tZOVf3fLIiJEmB8WPNndy4ID2kzAfcyoPtp6j3ioMwKaJW458G/VbnYRyzB/8S
	 Xy0rIVUxtjsfHFqPwpV9CvgoSdOFJhImhEjANcb5t8t/017v3mJP/NVILJQgxmNIud
	 TkV3topJYMvd6cxzre0t57JsFnQ102UKQR33xiuAzTZp1X/DhjKeNNW3nXLD0Qy0dL
	 tjBMU+WbIQpU02qJHK60q0n9Sa4TT1va6AkA33X28XhuTHyIVumIdpOB/NJ0lOoQqZ
	 w6lbVXsH9XbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21A7C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178600323371.19054.6192840536664745057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eef41ffff4e58f2905a147ba0036ea57310ecd2952a862f3fe0c75a900b8482
Date: Thu, 06 Aug 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786003233
