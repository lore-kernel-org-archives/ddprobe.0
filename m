Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3092D1D27A4
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728305154; cv=none; b=HHVmzZU0i2VeFusStBkyJ0ZYoR8t29HU70ZZJ3fH/g+Huz+0MDxpN725Dp4OmHQtMFlLYQIQNLJ8BBKlm0NfalyDrWMWICmz1TAB0bHHP1Sfv9ubWuA5yJaxYTVrJDINcNw5UhMd70siDGMIqr34iFzsNk06rDRTgFz4AsN8mNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728305154; c=relaxed/simple;
	bh=B8kDI/7zwh3mOVaBx/UeCS+YXNenoiz2kmHMW3CWJTk=;
	h=To:Subject:From:Message-Id:Date; b=jICrxA3qYoMvdv9pvNelrRRPEwucaMV2quB7zQoh/osYy+GLOieAdCLuFBITgYM1xbccjLz4Ju1eAeomYW/lIUnKWOhJSttjFWUBcK8vvuOMZ+seXG9SuJ5W8h7u3w5ii10UOPPhSbY249YVNXN04fr+K0as1NHBuG2B8dWdHZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VV2B6dJp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VV2B6dJp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B68C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728305153;
	bh=B8kDI/7zwh3mOVaBx/UeCS+YXNenoiz2kmHMW3CWJTk=;
	h=To:Subject:From:Date:From;
	b=VV2B6dJpSLfB+3YOnvJ0e0YNhEnrOcmVqE5ycM7xSNBRDlv6zSp1ZsyQGoT4LA6Ja
	 ZbHTOp6tIcopVJUv7/lEv6+BbWixawtHVezAXU5gdEF27VfD9ZsatCU7mJFzXNLyqP
	 ADX4I+pqXHjnWInWnwytWODYz0MOOuUmzaF9uiyBemm8p4ew28g4bhkY93QSPfPHI5
	 fFZDchcgLA0Fh38znJW7+ozBmciUggMn51DNq3HnOWpeYvyTGPQqqApkSUiBiVxwAT
	 vy/uTwR/nl6ig0LcNu4ehjPIbzBO89HJUrIAXJ29g8j3d2KhhyB+EgPiRxROlzlzil
	 s8JG1dgR4JFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12DCFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 12:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172830515357.17196.16058261545363954381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28a13d4a7883944b00241a0ef8355613495e572b9c680e4e05572f3bcc0433f
Date: Mon, 07 Oct 2024 12:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728305153
