Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5864838C
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726275954; cv=none; b=X8mJ6dB2Gb7nrBdiSDixN/gjXgp61fj0cBdlho0vwHZTY57H2JyQUIkJcvFjl7qVIJ7WSHR424S9Gbpahczy89OAonrQRQdzPrD5eB5uukMidPY7fzVfvBpbQabK4Ha7ZkZhU8CQezEQ+i3CQLIvV1zv+XcXKWDP6AYH9lB6NKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726275954; c=relaxed/simple;
	bh=k/NYKgwsioYCSn0kTWme0E7vYaDxH7SnT3C1jNrd8v8=;
	h=To:Subject:From:Message-Id:Date; b=sCPGis7tHPUEdk87NJU5YZ/CsxX+uuDRLYclXpquLNGtv3CQq7K9SzvMcUZKPVl/5AOODwkonIvJfXYyc41tDXk6T63wtDCdpJw1yiXVhmfDL5tGcQMRMkdSOY1XF62La8BxGMS1t9aW08/vZxdLQoi1HB2Rd4vwLokt/obnDeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAILWMtA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAILWMtA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B769DC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726275953;
	bh=k/NYKgwsioYCSn0kTWme0E7vYaDxH7SnT3C1jNrd8v8=;
	h=To:Subject:From:Date:From;
	b=PAILWMtAVp38iB2NfVDPQCJ1GqR4HpHERaoVIx9gJ7G8we+bWeZk3aCmnS6WKG3BH
	 qxzQw3WeyurK6LD6iLzF0Q67x0PPM9xmyokR50jUXL243nvoyxYs32fZNoaAMl4F/P
	 J+fV0iRPLus+SWvN8KaUDtOadzWRzxFCnAF/6K03U7uSULKnoWB3j2BfeGGz7u8YqZ
	 OwisxHCRMYGFk/9PHK8UNy+CySWPFGabaQ5Ni4IJnhesQv2tlh9cNuJ++oxDDtFnxs
	 BHXwaDx2z4Xx4QLOL8UIeOnYjz3ctb05V6OI/kQ/iyIu0mtjgLH84SguDOeiWbA86f
	 Fq9fDgykZwksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0932FC6187
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172627595364.9805.6489440910575230744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8284d1b8ede15e78cf921dee5637e4e3c18f81c317fbef6a58c9a21eea38dde
Date: Sat, 14 Sep 2024 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726275953
