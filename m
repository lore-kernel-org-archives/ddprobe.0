Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D4AA625
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 00:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741479534; cv=none; b=DcGo82trltLCKfp/5klj5IrvM5+estyaSsqZMoa8YSpPgW7cR/QpEK6Of1+MgfmhVkjS9ZjroVBxoV10IaQJEBz4BKc4Wa5pO0pKXZU8AmK3fJXlZlJGtI37cZ9gVxu+0RsKy+C8e8WVKBqF9x/FBj5Ii8xGDKR6uQxeRGFxcQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741479534; c=relaxed/simple;
	bh=wxh5TvUCdcrlLclV+bSwtObrTufg1CnfSy2XbO4LUlc=;
	h=To:Subject:From:Message-Id:Date; b=k4ZXMJT15ZvybgXSiBfqTjkZqNlKQUhKIcFdCU8PD5AfnRvYI+tqmhpMrLqH3K0uF+PAyiZaglBWbH72Yd3rGzFXrnn4OrGrybKlRWRMynOGZB6cF5+867I25xMWOvWyLPvdfxK/oaeDb+kugAg6yu562JY6221XoxzlMTHnYNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pKPXP49I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pKPXP49I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C6EC4CEE0
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 00:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741479533;
	bh=wxh5TvUCdcrlLclV+bSwtObrTufg1CnfSy2XbO4LUlc=;
	h=To:Subject:From:Date:From;
	b=pKPXP49IyzJBOxspAGVMV1ob5FEe/tILRFBvO9CCQ9C0vITXOJ1VQZxH80oP95qMm
	 E/Mk1EeTz04N9ZrveS5QHoByiOiycoNh+kBuhMBnpiHvpVBYQySZjzBTAH0ePQBwiE
	 cmX1+Zegqecn1u+J6WFXYJ/w+WeOZDckDeYBZr9Ln8vf1ZghDbjS+VOI3w+yagrEc/
	 i+9+zGK4HeoboAEbixBrp/WyUlG83XYZWGik8JcLEESFtJMfDXjehsaba/TMSa07JD
	 DT7pFRhKQml18WevcxmskWz9qQMczjokX6ObFg7Y5omIOEX2BsnmxRaPT+PklOhTLX
	 zlIKz8uC9l3vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C82AC282EC
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 00:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174147953361.10844.10977834780437632836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd09f256c3d8c6d22ff9f74d369cd5a679543b159f3c0e5ad11535002ed79c3
Date: Sun, 09 Mar 2025 00:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741479533
