Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361872571BE
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746199794; cv=none; b=TCk1DpIqSV08k0RZtG8pzVkyS7yA6ZaQfv9Q7nO90oVOfex+XBqP7kX1roY/sy/piaNt7uT1GqUcl7V/Toy09zdNAWQqSzuh7uhdkOPSI3x8S16EEH1y2uHsLB3D6Eik4fcG/skULGbksj73WLUJ3zyH34i7A+x7+5x9RPQR4hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746199794; c=relaxed/simple;
	bh=KbzY4c/UW/VlRfwelbGaIR+4VsZM1k0WmZ/FssiyRlM=;
	h=To:Subject:From:Message-Id:Date; b=sVX4gIANfDz/OGzU23i6sTvDvJOa/A13Yn/1z0E6rzQmXIqvqvLnrUo+v45jed9gjNZa91SCC+vYqgRpDLuLFAlSdtvFyERS5iKf8XaeE3QMtnE/X8Ui9QwqyDFDkriYQv9rFGfGkPeztXiUhIFxSbYLH/wTIf+u3SoMbdCzC54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=liG1Gege; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="liG1Gege"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3429C4CEEE
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746199793;
	bh=KbzY4c/UW/VlRfwelbGaIR+4VsZM1k0WmZ/FssiyRlM=;
	h=To:Subject:From:Date:From;
	b=liG1GegePz5ke+Owh9QcmkVe+21RKqqF3FhuPq9hcTWAw6xyOKzJ90ExfTslYIK48
	 BDfsU9Fe+BF9fdklhEwJenFmN/F143sUWTFdJ2eXG7CCnALM4Vomxsh4i4y9f8DI7t
	 P+Znvy98mNIre5AwvQ1DqxSE/Zi/vMcG3QitABpLzTooIbxyhiitk4CYi/2TgMXeCh
	 Iwy2GQmQUHtYOin2R4eFi44V6yFF/YIGNmFaifZM7mutj5kWym/gjJ6wUEWHWZL3PO
	 HfmsRco28JiJ0iBUi+rwmwAWktRBvvhCV6dn0CxQ7Laj6wh/QPZEvSEOzq0V0OX7qP
	 xgwpT9LF9QdjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CA2C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619979357.4827.18069898546940596822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4e00bd801a4dd7302239a0d4be69140bcfe0ad5f6708e88588d0c7416e3aa88
Date: Fri, 02 May 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746199793
