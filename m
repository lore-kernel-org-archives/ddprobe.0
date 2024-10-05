Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAD5231C95
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728108954; cv=none; b=VSj+WRdXBkDHM/+iJvoQCRAHgRBdfeXkSJQPQLCflxErkP9qVkqMVIEbHg/UqLAHjZkaGNsrF+ptai7a//isB83gtjjFArpwFho4b1iUz66a307KAjMWr6p5bp147AZYuNwdunt8/NrLDzA7fq5vrgrr0fZ7nCy/jUS1upqQw5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728108954; c=relaxed/simple;
	bh=CJkR5RnAnfX5DcYCT6YhuMCRtUyhcOpktfXsLkIHjcc=;
	h=To:Subject:From:Message-Id:Date; b=Ufr47IdXMk4XpLrRLw0OMTNZ86f8X6+o75ZL391DArPe1/TliTgJgYfIRQXmgN+pzc+Nv9Tt9KYp97K2cS5SGYJLlMc6pVmYGBK9G//86DctPmJvSpN9qr2wmpuPVx3NvAqqp32+L6yyebDZidk0awJaL/tGkKQNhXxe0+l/phk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBGSjnm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBGSjnm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F0CC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728108953;
	bh=CJkR5RnAnfX5DcYCT6YhuMCRtUyhcOpktfXsLkIHjcc=;
	h=To:Subject:From:Date:From;
	b=dBGSjnm1CCejDpbsOgXJlF2Yw9NVsvWDW+It5UjmHEKVKm73gzvy/P1Fe5SiL8uDx
	 FHfPe4bEpVKezFgb/ByNqMCTHRxoL4Qjz/BOJiIOIvjSG07OYOalN/xgLR19zYbX3P
	 +FQv2M60N5Xc7+74oGEZCYlLXb9I14gw0Hwll7Aqs1nay/7JGqZMOycz6fq79fOuPo
	 Hea6xntcqKhIXnbiRDO/a5kixaNprRBDVBEbBLfWjiNXYzTVVpjDkUAB0UDpsAYXMS
	 fapmiLxnTN3UaNJjCfQw3lB3u8fwR01poDCtiFx2voJZWP1EyU9NBxD4deY+QASRhK
	 6KWynKF4HmVvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9116ACF8869
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172810895358.12154.4235924046912328147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa33bce7f62b4096a59c22a3d8abb4f5eb34682344f9715e8d22994424e1e0f7
Date: Sat, 05 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728108953
